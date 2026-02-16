#!/usr/bin/env python3
"""g1_gate_unlock_driver.py — G1 gate-unlock controlled sequence
(plan docs/plans/2026-08-22-g1-gate-unlock-testmain.md §4).

Sequence per run: force-stop -> stage locked inputs -> gadget spawn ->
attach embedded Gadget -> waitFEProj -> pre snapshot -> baseline window ->
controlled unlocksequence (validator(TestMain.res) -> gate B bootstrap ->
gate A) -> post window -> survival -> attempt/events/rpc artifacts -> cleanup.

Arg-convention note: a1 = writable ctx struct filled by validator (static
ruling 2026-08-22); supersedes planB1 state-as-a1 hypothesis.
Root dual-source: after unlock, read g_buf/g_len/state slots via
`su -c dd` from /proc/<pid>/mem using the maps-parsed libFEProj base.
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
MAX_EVENT_RECORDS = 4096

sys.path.insert(0, str(TRACK_B))
import b2_host_runner as runner  # noqa: E402


def adb(serial, *args):
    return subprocess.run(["adb", "-s", serial, *args],
                          check=False, text=True, capture_output=True, timeout=90)


def write_jsonl(path, entry):
    with path.open("a", encoding="utf-8") as fh:
        fh.write(json.dumps(entry, sort_keys=True, separators=(",", ":")) + "\n")


def root_slot_read(serial, pid):
    """Best-effort root read of the registrar slots via /proc/<pid>/mem."""
    maps = adb(serial, "shell", "su", "-c", f"cat /proc/{pid}/maps")
    base = None
    for line in maps.stdout.splitlines():
        if "/libFEProj.so" in line:
            base = int(line.split("-")[0], 16)
            break
    if base is None:
        return {"status": "no_maps_base"}
    out = {"status": "ok", "module_base": hex(base)}
    for name, rva, width in (("g_buf", 0x726D0D0, 8),
                             ("g_len", 0x726D0D8, 4),
                             ("state", 0x726D0E0, 8)):
        addr = base + rva
        res = adb(serial, "shell", "su", "-c",
                  f"dd if=/proc/{pid}/mem bs=1 skip={addr} count={width} "
                  f"2>/dev/null | od -An -tx1")
        out[name] = "".join(res.stdout.split())
    return out


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--serial", default="9ab83b62")
    parser.add_argument("--runs", type=int, default=2)
    args = parser.parse_args()

    graph = json.loads((TRACK_B / "b2-load-graph.json").read_text(encoding="utf-8"))
    manifest = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "input-manifest.json"
    hook_path = TRACK_B / "hooks" / "g1_gate_unlock_observe.mjs"
    evidence_root = TRACK_A / "crashes"

    for run_no in range(1, args.runs + 1):
        print(f"===== g1 gate-unlock capture {run_no} =====")
        # 1) clean start
        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        time.sleep(1)
        if adb(args.serial, "shell", "pidof", PACKAGE).stdout.strip():
            print("ERROR: post-stop PID not empty")
            return 1

        # 2) stage locked inputs
        stage = subprocess.run(
            ["$FRIDA_VENV/bin/python", str(TRACK_B / "b2_host_runner.py"),
             "--stream-dsos", "--stage-battle-logic", "--stage-test-main"],
            check=False, text=True, capture_output=True, timeout=300)
        if stage.returncode != 0:
            print("ERROR: staging failed:", stage.stderr[-500:])
            return 1

        # 3) gadget spawn
        adb(args.serial, "shell", "am", "start", "-n", COMPONENT,
            "--ez", "gadget", "true", "--es", "action", "canary")
        time.sleep(5)
        adb(args.serial, "forward", "tcp:27042", "tcp:27042")
        pids = adb(args.serial, "shell", "pidof", PACKAGE).stdout.split()
        if not pids:
            print("ERROR: helper did not spawn")
            return 1
        pid = int(pids[0])

        # 4) attach + observe
        import frida
        run_dir = runner._run_directory(evidence_root, prefix="g1gate")
        events_path = run_dir / "events.jsonl"
        rpc_path = run_dir / "rpc-results.jsonl"
        load_plan = runner.build_b2_load_plan(graph, runner.verify_b2_inputs(
            "adb", args.serial, graph, manifest,
            device_dso_dir=runner.DEFAULT_DEVICE_DSO_DIR,
            device_fetest_path=runner.DEFAULT_FETEST_PATH))
        (run_dir / "load-plan.json").write_text(
            json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
        battle_logic_path = load_plan["input_provenance"]["battle_logic"]["path"]

        last_events = deque(maxlen=80)
        persisted = dropped = 0
        detached = {"status": "normal"}
        cleanup_requested = False
        attempt = {
            "package": PACKAGE, "operation": "g1-gate-unlock",
            "started_at": datetime.now(timezone.utc).isoformat(),
            "frida_version": getattr(frida, "__version__", None),
            "attach": {"mode": "embedded-gadget", "pid": pid, "remote": GADGET_ADDR},
            "plan": "docs/plans/2026-08-22-g1-gate-unlock-testmain.md",
        }

        def on_message(message, data):
            nonlocal persisted, dropped
            if isinstance(message, dict) and message.get("type") == "send" \
                    and isinstance(message.get("payload"), dict):
                event = dict(message["payload"])
            else:
                event = {"event": "FRIDA_MESSAGE", "message": str(message)}
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
            detached.update({"status": "detached", "reason": str(reason),
                             "crash": runner._serialize_crash(crash)})

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
        subprocess.run(["adb", "-s", args.serial, "shell", "am", "start", "-n",
                        COMPONENT, "--es", "action", "loadfeproj"],
                       check=True, text=True, capture_output=True, timeout=30)
        attempt["loaded"] = call_rpc("waitfeprojloaded", 60000)
        if not attempt["loaded"].get("loaded"):
            print("ERROR: FEProj never loaded")
            return 1

        test_main_path = runner.DEFAULT_TESTMAIN_PATH
        attempt["test_main_path"] = test_main_path

        # 5) baseline snapshot + short quiet window
        attempt["slots_pre"] = call_rpc("snapshot")
        print("[observe] baseline window 20s")
        t0 = time.monotonic()
        while time.monotonic() - t0 < 20:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)

        # 6) controlled unlock sequence
        unlocked = call_rpc("unlocksequence", test_main_path)
        attempt["unlock"] = unlocked
        time.sleep(2)

        attempt["root_slots"] = root_slot_read(args.serial, pid)

        # 8) post window 60s (spontaneous-edge probes stay armed)
        print("[observe] post window 60s")
        t1 = time.monotonic()
        while time.monotonic() - t1 < 60:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)

        # 9) survival + artifacts
        proc = adb(args.serial, "shell", "pidof", PACKAGE)
        attempt["survival"] = {
            "requested_seconds": 100, "post_pids": proc.stdout.split(),
            "alive": str(pid) in proc.stdout.split(),
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
            write_jsonl(events_path, {"event": "EVENTS_TRUNCATED",
                                      "dropped": dropped, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-80.jsonl").write_text(
            "".join(json.dumps(e, sort_keys=True, separators=(",", ":")) + "\n"
                    for e in last_events), encoding="utf-8")
        (run_dir / "attempt.json").write_text(
            json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")

        # 10) cleanup
        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        adb(args.serial, "forward", "--remove-all")
        print("[g1gate] run_dir:", run_dir)
        print("[g1gate] unlock:", json.dumps(attempt["unlock"], indent=None)[:400])
        print("[g1gate] events:", persisted, "dropped:", dropped)
        time.sleep(3)

    print("===== done =====")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
