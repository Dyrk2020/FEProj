#!/usr/bin/env python3
"""g1_spontaneous_driver.py — G1 spontaneous-chain observation (plan
docs/plans/2026-08-17-g1-spontaneous-chain.md §4/§5).

Sequence: force-stop -> stage locked inputs -> gadget spawn -> attach with the
U2-pinned hook (g1_spontaneous_observe.mjs) -> prereadregistry (F5) ->
60s spontaneous window (F1/F2/F3) -> triggers T3/T4/T1 (plant3, plana1/a2,
planb1) -> post-trigger window -> survival/events/attempt + cleanup.
Observe-only: never fabricate state/g_buf; preconditions null -> SKIP recorded.

Usage: $FRIDA_VENV/bin/python g1_spontaneous_driver.py [--serial S]
"""

import argparse
import json
import subprocess
import sys
import time
from collections import deque
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path("<research-workspace>")
TRACK_B = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "track-b"
TRACK_A = TRACK_B.parent / "track-a"
PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = "dev.wildriftresearch.logicharness/.MainActivity"
GADGET_ADDR = "127.0.0.1:27042"
MAX_EVENT_RECORDS = 512

sys.path.insert(0, str(TRACK_B))
import b2_host_runner as runner  # noqa: E402


def adb(serial: str, *args: str) -> subprocess.CompletedProcess:
    return subprocess.run(
        ["adb", "-s", serial, *args], check=False, text=True, capture_output=True, timeout=90
    )


def write_jsonl(path: Path, entry: dict) -> None:
    with path.open("a", encoding="utf-8") as fh:
        fh.write(json.dumps(entry, sort_keys=True, separators=(",", ":")) + "\n")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--serial", default="9ab83b62")
    parser.add_argument("--runs", type=int, default=2)
    args = parser.parse_args()

    graph = json.loads((TRACK_B / "b2-load-graph.json").read_text(encoding="utf-8"))
    manifest = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "input-manifest.json"
    hook_path = TRACK_B / "hooks" / "g1_spontaneous_observe.mjs"
    evidence_root = TRACK_A / "crashes"

    for run_no in range(1, args.runs + 1):
        print(f"===== g1 spontaneous capture {run_no} =====")
        # 1) clean start
        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        time.sleep(1)
        post = adb(args.serial, "shell", "pidof", PACKAGE).stdout.strip()
        if post:
            print("ERROR: post-stop PID not empty:", post)
            return 1

        # 2) stage locked inputs (libFEProj + BattleLogic.res + TestMain)
        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        stage = subprocess.run(
            ["$FRIDA_VENV/bin/python", str(TRACK_B / "b2_host_runner.py"),
             "--stream-dsos", "--stage-battle-logic", "--stage-test-main"],
            check=False, text=True, capture_output=True, timeout=300,
        )
        if stage.returncode != 0:
            print("ERROR: staging failed:", stage.stderr[-500:])
            return 1

        # 3) gadget spawn
        adb(args.serial, "shell", "am", "start", "-n", COMPONENT, "--ez", "gadget", "true", "--es", "action", "canary")
        time.sleep(5)
        adb(args.serial, "forward", "tcp:27042", "tcp:27042")
        pids = adb(args.serial, "shell", "pidof", PACKAGE).stdout.split()
        if not pids:
            print("ERROR: helper did not spawn")
            return 1
        pid = int(pids[0])

        # 4) attach + observe
        import frida
        run_dir = runner._run_directory(evidence_root, prefix="g1spont")
        events_path = run_dir / "events.jsonl"
        rpc_path = run_dir / "rpc-results.jsonl"
        load_plan = runner.build_b2_load_plan(graph, runner.verify_b2_inputs(
            "adb", args.serial, graph, manifest,
            device_dso_dir=runner.DEFAULT_DEVICE_DSO_DIR,
            device_fetest_path=runner.DEFAULT_FETEST_PATH,
        ))
        (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
        battle_logic_path = load_plan["input_provenance"]["battle_logic"]["path"]
        last_events: deque = deque(maxlen=50)
        persisted = 0
        dropped = 0
        detached = {"status": "normal"}
        cleanup_requested = False
        attempt = {
            "package": PACKAGE, "operation": "g1-spontaneous-observe", "mode": "java-system-load",
            "started_at": datetime.now(timezone.utc).isoformat(), "frida_version": getattr(frida, "__version__", None),
            "attach": {"mode": "embedded-gadget", "pid": pid, "remote": GADGET_ADDR},
        }

        def on_message(message, data):
            nonlocal persisted, dropped
            if isinstance(message, dict) and message.get("type") == "send" and isinstance(message.get("payload"), dict):
                event = dict(message["payload"])
            else:
                event = {"event": "B2_FRIDA_MESSAGE", "message": str(message)}
            event["received_at"] = datetime.now(timezone.utc).isoformat()
            last_events.append(event)
            if persisted < MAX_EVENT_RECORDS:
                write_jsonl(events_path, event)
                persisted += 1
            else:
                dropped += 1

        def on_detached(reason, crash):
            if cleanup_requested and str(reason) == "application-requested":
                return
            detached.update({"status": "detached", "reason": str(reason), "crash": runner._serialize_crash(crash)})

        device = frida.get_device_manager().add_remote_device(GADGET_ADDR)
        session = device.attach(pid)
        if hasattr(session, "on"):
            session.on("detached", on_detached)
        script = session.create_script(hook_path.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        exports = script.exports_sync

        def call_rpc(name, *call_args):
            result = getattr(exports, name)(*call_args)
            write_jsonl(rpc_path, {"rpc": name, "result": result})
            return result

        attempt["process_abi"] = runner.require_arm64_process(call_rpc("environment"))
        call_rpc("setbattlelogicpath", battle_logic_path)
        call_rpc("settestmainpath", runner.DEFAULT_TESTMAIN_PATH)
        subprocess.run(
            ["adb", "-s", args.serial, "shell", "am", "start", "-n", COMPONENT, "--es", "action", "loadfeproj"],
            check=True, text=True, capture_output=True, timeout=30,
        )
        attempt["loaded"] = call_rpc("waitfeprojloaded", 60000)
        call_rpc("probeluaexports")

        # 5) F5: registry preread
        registry = call_rpc("prereadregistry")
        attempt["registry_preread"] = registry

        # 6) 60s spontaneous window (no driving)
        print("[observe] spontaneous window 60s")
        t0 = time.monotonic()
        while time.monotonic() - t0 < 60:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)
        pre_trigger_events = list(last_events)

        # 7) triggers (plan §4 order: T3 -> T4 -> T1/T2)
        g_buf = registry.get("g_buf_0x726D0D0")
        state = registry.get("state_0x726D0E0")
        ctx = registry.get("g_ctx_0x726D0C8")
        attempt["preconditions"] = {"g_buf": g_buf, "state": state, "ctx": ctx}
        triggers = {}
        triggers["plant3"] = call_rpc("plant3")
        if g_buf is not None or ctx is None:
            triggers["plana2"] = call_rpc("plana2")
        else:
            triggers["plana1"] = call_rpc("plana1")
        if state is not None:
            triggers["planb1"] = call_rpc("planb1")
        triggers["scanloadbufferstr"] = call_rpc("scanloadbufferstr")
        attempt["triggers"] = triggers

        # 8) post-trigger window 30s
        print("[observe] post-trigger window 30s")
        t1 = time.monotonic()
        while time.monotonic() - t1 < 30:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)

        # 9) survival + evidence
        proc = adb(args.serial, "shell", "pidof", PACKAGE)
        pids = proc.stdout.split()
        attempt["survival"] = {
            "requested_seconds": 90, "post_pids": pids, "alive": str(pid) in pids,
        }
        attempt["finished_at"] = datetime.now(timezone.utc).isoformat()
        attempt["fault"] = detached
        cleanup_requested = True
        try:
            script.unload()
        except Exception as unload_error:
            detached.setdefault("unload_error", str(unload_error))
        try:
            session.detach()
        except Exception as detach_error:
            detached.setdefault("detach_error", str(detach_error))
        if dropped:
            write_jsonl(events_path, {"event": "B2_EVENTS_TRUNCATED", "dropped": dropped, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-50.jsonl").write_text(
            "".join(json.dumps(e, sort_keys=True, separators=(",", ":")) + "\n" for e in last_events), encoding="utf-8")
        (run_dir / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")

        # 10) cleanup
        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        adb(args.serial, "forward", "--remove-all")
        print("[g1] run_dir:", run_dir)
        print("[g1] preconditions:", json.dumps({"g_buf": g_buf, "state": state, "ctx": ctx}))
        print("[g1] events:", persisted, "dropped:", dropped)
        time.sleep(3)

    print("===== done =====")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
