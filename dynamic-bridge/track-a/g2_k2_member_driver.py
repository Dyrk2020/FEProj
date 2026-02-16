#!/usr/bin/env python3
"""g2_k2_member_driver.py — K2 member-level consumption paired A/B capture
(plan docs/plans/2026-08-22-g2-k2-member-fill.md).

Per run: force-stop -> stage locked inputs -> gadget spawn -> attach ->
waitFEProj -> runk2() [flat_control state + variant_f_treatment state on one
process] -> post window -> survival -> attempt/events/rpc artifacts -> cleanup.

Evidence pairing: identical probe battery across both priming variants inside
the same process; two fresh captures required for the review verdict.
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
TRACK_A = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "track-a"
TRACK_B = TRACK_A.parent / "track-b"
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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--serial", default="9ab83b62")
    parser.add_argument("--runs", type=int, default=2)
    args = parser.parse_args()

    graph = json.loads((TRACK_B / "b2-load-graph.json").read_text(encoding="utf-8"))
    manifest = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "input-manifest.json"
    hook_path = TRACK_A / "hooks" / "g2_k2_member_observe.mjs"
    evidence_root = TRACK_A / "crashes"

    for run_no in range(1, args.runs + 1):
        print(f"===== g2 k2 member capture {run_no} =====")
        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        time.sleep(1)
        if adb(args.serial, "shell", "pidof", PACKAGE).stdout.strip():
            print("ERROR: post-stop PID not empty")
            return 1

        stage = subprocess.run(
            ["$FRIDA_VENV/bin/python", str(TRACK_B / "b2_host_runner.py"),
             "--stream-dsos", "--stage-battle-logic", "--stage-test-main"],
            check=False, text=True, capture_output=True, timeout=300)
        if stage.returncode != 0:
            print("ERROR: staging failed:", stage.stderr[-500:])
            return 1

        adb(args.serial, "shell", "am", "start", "-n", COMPONENT,
            "--ez", "gadget", "true", "--es", "action", "canary")
        time.sleep(5)
        adb(args.serial, "forward", "tcp:27042", "tcp:27042")
        pids = adb(args.serial, "shell", "pidof", PACKAGE).stdout.split()
        if not pids:
            print("ERROR: helper did not spawn")
            return 1
        pid = int(pids[0])

        import frida
        run_dir = runner._run_directory(evidence_root, prefix="k2member")
        events_path = run_dir / "events.jsonl"
        rpc_path = run_dir / "rpc-results.jsonl"
        load_plan = runner.build_b2_load_plan(graph, runner.verify_b2_inputs(
            "adb", args.serial, graph, manifest,
            device_dso_dir=runner.DEFAULT_DEVICE_DSO_DIR,
            device_fetest_path=runner.DEFAULT_FETEST_PATH))
        (run_dir / "load-plan.json").write_text(
            json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")

        last_events = deque(maxlen=200)
        persisted = dropped = 0
        detached = {"status": "normal"}
        cleanup_requested = False
        attempt = {
            "package": PACKAGE, "operation": "g2-k2-member-fill",
            "started_at": datetime.now(timezone.utc).isoformat(),
            "frida_version": getattr(frida, "__version__", None),
            "attach": {"mode": "embedded-gadget", "pid": pid, "remote": GADGET_ADDR},
            "plan": "docs/plans/2026-08-22-g2-k2-member-fill.md",
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

        try:
            attempt["k2"] = call_rpc("runk2")
        except Exception as rpc_error:
            attempt["k2_error"] = str(rpc_error)

        print("[observe] post window 30s")
        t1 = time.monotonic()
        while time.monotonic() - t1 < 30:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)

        proc = adb(args.serial, "shell", "pidof", PACKAGE)
        attempt["survival"] = {
            "requested_seconds": 40, "post_pids": proc.stdout.split(),
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
        (run_dir / "hooks-last-200.jsonl").write_text(
            "".join(json.dumps(e, sort_keys=True, separators=(",", ":")) + "\n"
                    for e in last_events), encoding="utf-8")
        (run_dir / "attempt.json").write_text(
            json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")

        adb(args.serial, "shell", "am", "force-stop", PACKAGE)
        adb(args.serial, "forward", "--remove-all")
        print("[k2] run_dir:", run_dir)
        print("[k2] result:", json.dumps(attempt.get("k2"), indent=None)[:400])
        print("[k2] events:", persisted, "dropped:", dropped)
        time.sleep(3)

    print("===== done =====")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
