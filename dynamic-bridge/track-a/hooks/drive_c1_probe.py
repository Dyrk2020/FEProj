#!/usr/bin/env python3
"""Drive the C1 anchor attribution probe against the embedded Gadget.

Attaches to the running helper (embedded Frida Gadget on 127.0.0.1:27042),
triggers Java System.load of libFEProj.so, then probes the __index closure
pointer of the sample registered classes and compares to the plan anchor
0x164B4A0.
"""
from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

import frida

PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = f"{PACKAGE}/.MainActivity"
ROOT = Path(__file__).resolve().parents[3]
HOOK = Path(__file__).resolve().parent / "g2_c1_probe.mjs"
SERIAL = "9ab83b62"
REMOTE = "127.0.0.1:27042"
SAMPLES = ["GainDeckAssetObject", "FEInterfaceConfig", "FixTransform"]


def adb(*args):
    return subprocess.run(["adb", "-s", SERIAL, *args], check=False, text=True, capture_output=True, timeout=30)


def main() -> int:
    pid = int(adb("shell", "pidof", PACKAGE).stdout.split()[0])
    print(f"attaching to pid {pid}")
    device = frida.get_device_manager().add_remote_device(REMOTE)
    session = device.attach(pid)
    script = session.create_script(HOOK.read_text(encoding="utf-8"))
    events = []
    script.on("message", lambda message, data: events.append(message))
    script.load()
    exports = script.exports_sync

    print("environment:", exports.environment())
    # trigger System.load
    triggered = adb("shell", "am", "start", "-n", COMPONENT, "--es", "action", "loadfeproj")
    print("load_trigger:", triggered.stdout.strip())
    print("loaded:", exports.waitfeprojloaded(60000))
    print("exports:", json.dumps(exports.probeluaexports(), indent=1))
    for name in SAMPLES:
        try:
            result = exports.probeindexclosure(name)
            print(f"=== {name} ===")
            print(json.dumps(result, indent=1))
        except Exception as e:
            print(f"=== {name} ERROR: {e} ===")
    script.unload()
    session.detach()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
