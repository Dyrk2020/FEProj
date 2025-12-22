#!/usr/bin/env python3
"""run_dump.py — attach Wild Rift and dump type=07 5B-record consumption (u16_dump.js).

  run_dump.py --attach <pid>          #  attachCtrl-C send 
  run_dump.py --attach <pid> --bg     #  pid  dump_out/dump.pid
  run_dump.py --stop                  #  dumpSIGINT -> detach
  run_dump.py --smoke [--attach <pid>]  #  3 
                                       #  --attach 

dump_out/{u16,consume,info}.logJSONL
- u16.log      :  type=07 msgseq/records/by_player/blocks
- consume.log  : StaticLocate regs x0-x4 +  64B + /
- info.log     : /attach 

StaticLocate  work/u16-semantics-20260812/StaticLocate/report.json 
 RVA "rvas" 0x  consume_points[].va
 [0x1000, 0x6a5ba94)  u16_dump.js  STATIC_LOCATE
 dump_out/effective_u16_dump.js 
"""
import argparse
import json
import os
import re
import signal
import sys
import time

import frida

HERE = os.path.dirname(os.path.abspath(__file__))
HOOK_JS = os.path.join(HERE, "u16_dump.js")
STATIC_REPORT = os.path.join(HERE, "..", "StaticLocate", "report.json")
HOST = "127.0.0.1:27043"
OUTDIR = os.path.join(HERE, "dump_out")
PIDFILE = os.path.join(OUTDIR, "dump.pid")
EFFECTIVE_JS = os.path.join(OUTDIR, "effective_u16_dump.js")

CHANNELS = {"u16": "u16.log", "consume": "consume.log", "info": "info.log"}

RVA_KEYS = re.compile(r"(?i)rva|va\b|addr|address|offset|site|consume|hit|loc")
RVA_MIN, RVA_MAX = 0x1000, 0x6A5BA94  # libFEProj.so size bound (VA == file offset)
SENTINEL = "__STATIC_LOCATE_JSON__"


def _parse_hex_rva(v):
    """Accept 0x-prefixed hex strings or ints; return int or None."""
    if isinstance(v, bool):
        return None
    if isinstance(v, int):
        return v
    if isinstance(v, str):
        s = v.strip()
        try:
            return int(s, 16) if s.lower().startswith("0x") else None
        except ValueError:
            return None
    return None


def extract_rvas(report):
    """Pull consumption-point RVAs from StaticLocate report.json (schema v1, defensive)."""
    found = []

    def add(v):
        r = _parse_hex_rva(v)
        if r is not None and RVA_MIN <= r < RVA_MAX:
            found.append(r)

    if isinstance(report, dict):
        # 1) explicit "rvas" (0x-prefixed hex strings, schema v1)
        rvas = report.get("rvas")
        if isinstance(rvas, list):
            for v in rvas:
                add(v)
        # 2) structured consume_points[].va
        cps = report.get("consume_points")
        if isinstance(cps, list):
            for cp in cps:
                if isinstance(cp, dict) and cp.get("va") is not None:
                    add(cp["va"])
                elif isinstance(cp, (int, str)):
                    add(cp)
        # 3) recursive walk with key preference (hex-string values or keyed ints only,
        #    so bare counters like 14725 don't masquerade as RVAs)
        keyed, plain = [], []

        def walk(o, hint=""):
            if isinstance(o, dict):
                for k, v in o.items():
                    walk(v, k)
            elif isinstance(o, list):
                for v in o:
                    walk(v, hint)
            elif isinstance(o, str) and _parse_hex_rva(o) is not None:
                r = _parse_hex_rva(o)
                if RVA_MIN <= r < RVA_MAX:
                    (keyed if RVA_KEYS.search(hint or "") else plain).append(r)
            elif isinstance(o, int) and not isinstance(o, bool) and RVA_KEYS.search(hint or ""):
                if RVA_MIN <= o < RVA_MAX:
                    keyed.append(o)

        walk(report)
        if not found:
            found = keyed or plain
        elif keyed:
            found = keyed  # prefer keyed even alongside explicit rvas

    seen, out = set(), []
    for r in sorted(set(found)):
        if r not in seen:
            seen.add(r)
            out.append(r)
    return out[:32]


def build_effective_js():
    """Inject StaticLocate RVAs into u16_dump.js; return (js_text, meta)."""
    rvas, source = [], "none"
    if os.path.exists(STATIC_REPORT):
        try:
            with open(STATIC_REPORT) as f:
                report = json.load(f)
            rvas = extract_rvas(report)
            source = STATIC_REPORT
        except Exception as e:
            source = f"error:{e}"
    payload = json.dumps({"rvas": rvas}) if rvas else "null"
    js = open(HOOK_JS).read()
    if SENTINEL not in js:
        raise RuntimeError(f"{HOOK_JS}: sentinel {SENTINEL} missing")
    os.makedirs(OUTDIR, exist_ok=True)
    effective = js.replace(SENTINEL, payload)
    with open(EFFECTIVE_JS, "w") as f:
        f.write(effective)
    return effective, {"source": source, "rvas": rvas}


def open_logs():
    os.makedirs(OUTDIR, exist_ok=True)
    return {ch: open(os.path.join(OUTDIR, fn), "a", buffering=1)
            for ch, fn in CHANNELS.items()}


def on_message(logs, errors, msg, data):
    if msg.get("type") == "send":
        p = msg.get("payload") or {}
        ch = p.get("ch")
        rec = p.get("rec")
        if ch in logs and rec is not None:
            try:
                logs[ch].write(json.dumps(rec) + "\n")
            except Exception:
                pass
        elif ch:
            logs["info"].write(json.dumps({"evt": "unknown_channel", "ch": ch}) + "\n")
    elif msg.get("type") == "error":
        errors.append(msg.get("description", ""))
        logs["info"].write(json.dumps({"evt": "script_error",
                                       "desc": msg.get("description", ""),
                                       "stack": (msg.get("stack") or "")[:500]}) + "\n")
        print("[dump-err]", msg.get("description"), file=sys.stderr)


def attach(pid):
    dev = frida.get_device_manager().add_remote_device(HOST)
    last = None
    for _ in range(30):
        try:
            return dev.attach(pid)
        except Exception as e:
            last = e
            time.sleep(1)
    raise RuntimeError(f"attach failed: {last}")


def find_game_pid():
    dev = frida.get_device_manager().add_remote_device(HOST)
    for p in dev.enumerate_processes():
        if "wildrift" in (p.name or "").lower() or "riotgames" in (p.name or "").lower():
            return p.pid
    return None


def load(pid):
    effective, meta = build_effective_js()
    print(f"[run_dump] static_locate: {meta['source']} rvas={meta['rvas']}")
    logs = open_logs()
    session = attach(pid)
    script = session.create_script(effective)
    errors = []
    script.on("message", lambda m, d: on_message(logs, errors, m, d))
    script.load()
    return session, script, logs, errors


def smoke(pid, seconds=3):
    session, script, logs, errors = load(pid)
    print(f"[smoke] attached pid={pid}, loaded, watching {seconds}s")
    time.sleep(seconds)
    try:
        session.detach()
    except Exception:
        pass
    for l in logs.values():
        l.close()
    if errors:
        print(f"[smoke] FAIL: {len(errors)} script error(s): {errors[0][:300]}")
        return 1
    print("[smoke] OK: no runtime script errors")
    return 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--attach", type=int, help="device pid of Wild Rift")
    ap.add_argument("--bg", action="store_true", help="run in background")
    ap.add_argument("--stop", action="store_true", help="stop background dump")
    ap.add_argument("--smoke", action="store_true", help="load script, wait 3s, check for errors")
    a = ap.parse_args()

    if a.stop:
        if os.path.exists(PIDFILE):
            with open(PIDFILE) as f:
                pid = int(f.read().strip())
            try:
                os.kill(pid, signal.SIGINT)
                print(f"sent SIGINT to dump pid {pid}")
            except ProcessLookupError:
                print("dump pid not running")
            os.unlink(PIDFILE)
        else:
            print("no dump pidfile")
        return 0

    if a.smoke:
        pid = a.attach or find_game_pid()
        if pid is None:
            print("[smoke] game not running: launch Wild Rift, enter a match, then "
                  "run `run_dump.py --smoke --attach <pid>` (or `--attach PID` to smoke any process)")
            return 2
        return smoke(pid)

    if not a.attach:
        ap.error("need --attach <pid>, --smoke, or --stop")

    session, script, logs, errors = load(a.attach)
    print(f"[run_dump] attached pid={a.attach}, hooks loaded, out={OUTDIR}")

    def cleanup(*_):
        try:
            session.detach()
        except Exception:
            pass
        for l in logs.values():
            l.close()
        print("[run_dump] detached & logs closed")
        sys.exit(0)

    if a.bg:
        with open(PIDFILE, "w") as f:
            f.write(str(os.getpid()))
        signal.signal(signal.SIGINT, lambda *_: cleanup())
        signal.signal(signal.SIGTERM, lambda *_: cleanup())
        while True:
            time.sleep(3600)
    else:
        try:
            while True:
                time.sleep(3600)
        except KeyboardInterrupt:
            cleanup()


if __name__ == "__main__":
    sys.exit(main())
