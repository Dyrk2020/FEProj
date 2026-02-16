#!/usr/bin/env python3
"""g2_anchor_probe_driver.py — dual-anchor probe for the __index closure location.

Settles where the runtime __index closure lives (0x164B4A0 vs 0xA6C4A0 vs
0x166B4A0) using the same attach/evidence pipeline as b2_host_runner's
g2-consumer-observe mode, but with the surgical g2_anchor_probe.mjs hook.

Usage:
  python3 g2_anchor_probe_driver.py [--serial SERIAL] [--run-only]
"""

import argparse
import json
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path("<research-workspace>")
TRACK_B = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "track-b"
TRACK_A = TRACK_B.parent / "track-a"
PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = "dev.wildriftresearch.logicharness/.MainActivity"
GADGET_ADDR = "127.0.0.1:27042"

sys.path.insert(0, str(TRACK_B))
import b2_host_runner as runner  # noqa: E402


def adb(serial: str, *args: str) -> subprocess.CompletedProcess:
    cmd = ["adb", "-s", serial, *args]
    return subprocess.run(cmd, check=False, text=True, capture_output=True, timeout=60)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--serial", default="9ab83b62")
    args = parser.parse_args()

    graph = json.loads((TRACK_B / "b2-load-graph.json").read_text(encoding="utf-8"))
    manifest = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "input-manifest.json"

    # 1) clean start
    adb(args.serial, "shell", "am", "force-stop", PACKAGE)
    time.sleep(1)
    proc = adb(args.serial, "shell", "pidof", PACKAGE)
    if proc.stdout.strip():
        print("ERROR: helper still running after force-stop:", proc.stdout.strip())
        return 1
    print("[probe] force-stop ok, empty post-stop PID set")

    # 2) verify + stage locked inputs
    verified = runner.verify_b2_inputs(
        "adb", args.serial, graph, manifest,
        device_dso_dir=runner.DEFAULT_DEVICE_DSO_DIR,
        device_fetest_path=runner.DEFAULT_FETEST_PATH,
    )
    load_plan = runner.build_b2_load_plan(graph, verified)
    print("[probe] inputs verified:", [e["name"] for e in load_plan.get("ordered_libraries", [])])

    # 3) gadget spawn
    adb(args.serial, "shell", "am", "start", "-n", COMPONENT, "--ez", "gadget", "true", "--es", "action", "canary")
    time.sleep(5)
    adb(args.serial, "forward", "tcp:27042", "tcp:27042")
    proc = adb(args.serial, "shell", "pidof", PACKAGE)
    pids = proc.stdout.split()
    if not pids:
        print("ERROR: helper did not spawn")
        return 1
    pid = int(pids[0])
    print("[probe] helper pid:", pid)

    # 4) run the probe surface
    names = ["GainDeckAssetObject", "FEInterfaceConfig", "FixTransform"]
    run_dir = runner.execute_b2_native_load_surface(
        args.serial,
        load_plan,
        evidence_root=TRACK_A / "crashes",
        adb="adb",
        remote_gadget=GADGET_ADDR,
        attach_pid=pid,
        action="loadfeproj",
        survive_seconds=20,
        hook_path=TRACK_A / "hooks" / "g2_anchor_probe.mjs",
        post_rpc="probeclass",
        post_rpc_args=[names],
        operation="g2-anchor-probe",
        run_prefix="g2probe",
    )
    print("[probe] run_dir:", run_dir)

    # 5) print the probe result (last rpc line)
    rpc_path = Path(run_dir) / "rpc-results.jsonl"
    if rpc_path.exists():
        for line in rpc_path.read_text(encoding="utf-8").splitlines():
            entry = json.loads(line)
            if entry.get("rpc") == "probeanchor":
                result = entry.get("result") or {}
                print(json.dumps({
                    "counts": result.get("counts"),
                    "hookStatus": result.get("hookStatus"),
                    "results": result.get("results"),
                    "dumps": result.get("dumps"),
                    "base": result.get("base"),
                    "dispatcher_nonzero": result.get("dispatcher_nonzero"),
                    "pcallk_rc": result.get("pcallk_rc"),
                    "stock_keys": result.get("stock_keys"),
                    "samples": (result.get("samples") or [])[:12],
                }, indent=1, sort_keys=True))

    # 6) cleanup
    adb(args.serial, "shell", "am", "force-stop", PACKAGE)
    adb(args.serial, "forward", "--remove-all")
    print("[probe] cleanup done")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
