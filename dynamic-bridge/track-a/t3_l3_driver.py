#!/usr/bin/env python3
"""t3_l3_driver.py — T3-L3 live adjudication session orchestrator
(plan docs/plans/2026-08-22-t3-l3-live-adjudication.md;
 socket/logcat sources per docs/plans/2026-08-23-t3-zygisk-native-hook.md).

R-layer observe-only session against the OFFICIAL package.
Red lines: zero file modification, no breakpoints, hooks read-only.
Sources: gadget=Frida legacy; socket=TCP tunnel; logcat=T3ZY tag stream.
"""
import argparse
import json
import os
import socketserver
import subprocess
import sys
import threading
import time
from collections import deque
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path("<research-workspace>")
TRACK_A = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "track-a"
HOOK = TRACK_A / "hooks" / "t3_l3_observe.mjs"
OUTROOT = ROOT / "work" / "t3-live-adjudication-20260822"
PACKAGE = "com.riotgames.league.wildrift"
ENTRY = "com.riotgames.league.wildrift/com.tencent.lolm.lgame"
GADGET_PORT = "27043"
MAX_EVENT_RECORDS = 200000


def wait_boot(serial, timeout_s=240):
    subprocess.run(["adb", "-s", serial, "wait-for-device"], timeout=timeout_s,
                   check=False)
    for _ in range(timeout_s // 5):
        r = adb(serial, "shell", "getprop", "sys.boot_completed")
        if r.stdout.strip() == "1":
            time.sleep(8)
            return True
        time.sleep(5)
    return False



def adb(serial, *args, timeout=60):
    return subprocess.run(["adb", "-s", serial, *args], check=False,
                          text=True, capture_output=True, timeout=timeout)


def su(serial, cmd, timeout=60):
    return adb(serial, "shell", "su", "-c", cmd, timeout=timeout)


def write_jsonl(path, entry):
    with path.open("a", encoding="utf-8") as fh:
        fh.write(json.dumps(entry, sort_keys=True, separators=(",", ":")) + "\n")


class EventServer(socketserver.ThreadingTCPServer):
    """Line-delimited JSON event sink fed by the t3zy Zygisk module."""
    allow_reuse_address = True
    daemon_threads = True

    def __init__(self, port, events_path, sockets_log_path):
        self.events_path = events_path
        self.sockets_log_path = sockets_log_path
        self.persisted = 0
        self.hello = None
        self.alive = threading.Event()
        self.alive.set()
        super().__init__(("127.0.0.1", port), self.Handler)

    def log_sock(self, line):
        with self.sockets_log_path.open("a", encoding="utf-8") as fh:
            fh.write(f"{datetime.now(timezone.utc).isoformat()} {line}\n")

    def handle_event(self, raw):
        try:
            event = json.loads(raw)
            if not isinstance(event, dict):
                raise ValueError("not an object")
        except Exception:
            event = {"event": "RAW_LINE", "line": raw[:500]}
        etype = event.get("type")
        if etype == "HELLO":
            self.hello = {"pkg": event.get("pkg"), "modver": event.get("modver"),
                          "sdk": event.get("sdk"), "pid": event.get("pid")}
            print(f"[hello] pkg={self.hello['pkg']} modver={self.hello['modver']} "
                  f"sdk={self.hello['sdk']} pid={self.hello['pid']}")
        elif etype == "H4":
            k = str(event.get("blob_hex", ""))[:16]
            print(f"[h4] len={event.get('len')} key16={k}")
        event["received_at"] = datetime.now(timezone.utc).isoformat()
        if self.persisted < MAX_EVENT_RECORDS:
            write_jsonl(self.events_path, event)
            self.persisted += 1
        else:
            self.dropped_local += 1

    class Handler(socketserver.BaseRequestHandler):
        def handle(self):
            srv = self.server
            peer = str(self.client_address)
            srv.log_sock(f"connect {peer} count={srv.persisted}")
            buf = b""
            self.request.settimeout(600)
            try:
                while srv.alive.is_set():
                    chunk = self.request.recv(65536)
                    if not chunk:
                        break
                    buf += chunk
                    while b"\n" in buf:
                        line, buf = buf.split(b"\n", 1)
                        if line.strip():
                            srv.handle_event(line.decode("utf-8", "replace"))
            except Exception:
                pass
            srv.log_sock(f"disconnect {peer} count={srv.persisted}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--serial", default="9ab83b62")
    ap.add_argument("--session", required=True, help="session id, e.g. s0-training / s1-match")
    ap.add_argument("--duration", type=int, default=2400, help="max seconds to record")
    ap.add_argument("--source", choices=["gadget", "socket", "logcat"], default="gadget",
                    help="gadget=Frida legacy; socket=TCP tunnel; logcat=T3ZY tag stream")
    ap.add_argument("--socket-port", type=int, default=27099)
    ap.add_argument("--heal-reboots", type=int,
                    default=int(os.environ.get("T3ZY_HEAL_REBOOTS", "0")),
                    help="if no HELLO after spawn, reboot device and retry")
    ap.add_argument("--no-reverse", action="store_true",
                    help="skip adb reverse management (tunnel managed externally)")
    ap.add_argument("--wait-pid", type=int, default=300,
                    help="seconds to wait for the game process (default 300)")
    args = ap.parse_args()

    out = OUTROOT / args.session
    out.mkdir(parents=True, exist_ok=True)
    S = args.serial
    # 0) preflight
    r = su(S, "sh /data/local/tmp/vdev_patch.sh status")
    print("[preflight] vdev status:", r.stdout.strip() or r.stderr.strip())
    r = su(S, "mount | grep virtualdevice | head -1")
    if "virtualdevice" not in r.stdout:
        print("[preflight] mounting vdev...")
        print(su(S, "sh /data/local/tmp/vdev_patch.sh mount").stdout.strip())
    # kill any frida-server NOT in approved form
    # Gadget mode: the in-process Gadget provides the listener. Kill any
    # stray frida servers first so they cannot race us for port 27043.
    su(S, "pkill -f 'fsrv' 2>/dev/null ; pkill -f frida-server 2>/dev/null ; true")
    time.sleep(0.5)

    print("[user]  com.tencent.lolm.lgame /")
    deadline = time.monotonic() + args.wait_pid
    if os.environ.get("T3ZY_AUTO_LAUNCH") == "1":
        print("[auto] launching game entry:", ENTRY)
        adb(S, "shell", "am", "start", "-n", ENTRY)
    pid = ""
    while time.monotonic() < deadline:
        pid = adb(S, "shell", "pidof", PACKAGE).stdout.strip()
        if pid:
            break
        time.sleep(2)
    if not pid:
        print("ERROR: game process not found")
        return 1
    pid = int(pid.split()[0])
    print(f"[attach] game pid={pid}")

    # 2) record installed lib hashes (drift baseline)
    h1 = su(S, "sha256sum /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so").stdout.split()[0]
    h2 = su(S, "sha256sum /data/data/com.riotgames.league.wildrift/files/app_libs/libil2cpp.so").stdout.split()[0]
    fe_ok = h1.startswith("5e608f2d")
    il_ok = h2.startswith("6e8e7002")
    print(f"[preflight] FEProj={h1[:12]} ok={fe_ok} il2cpp={h2[:12]} ok={il_ok}")
    if not (fe_ok and il_ok):
        print("ABORT: installed libs != locked corpus — RVAs invalid")
        return 1

    # 3) tcpdump parallel capture (zero-risk redundant evidence)
    pcap = f"/data/local/tmp/t3_{args.session}.pcap"
    su(S, f"nohup tcpdump -i any -s 96 -w {pcap} >/dev/null 2>&1 &")

    events_path = out / "events.jsonl"
    attempt = {
        "operation": "t3-l3-adjudication", "session": args.session,
        "package": PACKAGE, "pid": pid,
        "started_at": datetime.now(timezone.utc).isoformat(),
        "source": args.source,
        "installed_lib_hashes": {"libFEProj": h1, "libil2cpp": h2},
    }
    dropped_local = 0
    detached = {"status": "normal"}
    script = session = None

    if args.source == "logcat":
        attempt["transport"] = "logcat"
        st = {"persisted": 0, "dropped": 0, "hello": None}
        lc = subprocess.Popen(
            ["adb", "-s", S, "logcat", "-v", "raw", "-T", "1", "-s", "T3ZY:V"],
            stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, text=True)

        def _pump():
            for line in lc.stdout or []:
                line = line.strip()
                if not line.startswith("{"):
                    continue
                try:
                    event = json.loads(line)
                except Exception:
                    continue
                etype = event.get("type")
                if etype == "HELLO":
                    st["hello"] = event
                    print("[hello]", json.dumps(event)[:200])
                elif etype == "H4":
                    print("[h4] len=", event.get("len"),
                          "key16=", str(event.get("blob_hex", ""))[:16])
                elif etype == "SCAN":
                    print("[scan]", event.get("lib"), "jump=", event.get("jump_slots"))
                event["received_at"] = datetime.now(timezone.utc).isoformat()
                if st["persisted"] < MAX_EVENT_RECORDS:
                    write_jsonl(events_path, event)
                    st["persisted"] += 1
                else:
                    st["dropped"] += 1

        threading.Thread(target=_pump, daemon=True).start()
        print("[listen] streaming T3ZY events from logcat")
        deadline = time.monotonic() + 120
        while time.monotonic() < deadline and st["hello"] is None:
            time.sleep(1)
        if st["hello"] is None:
            print("[warn] no HELLO within 120s — module not dispatched/matched")
            left = args.heal_reboots
            if left > 0:
                print(f"[heal] rebooting device ({left} retry left)")
                lc.terminate()
                su(S, "reboot")
                wait_boot(S)
                argv = list(sys.argv)
                if "--heal-reboots" in argv:
                    i = argv.index("--heal-reboots")
                    if int(argv[i + 1]) <= 1:
                        del argv[i:i + 2]          # heal budget exhausted
                    else:
                        argv[i + 1] = str(int(argv[i + 1]) - 1)
                else:
                    argv += ["--heal-reboots", "0"]
                env = dict(os.environ, T3ZY_AUTO_LAUNCH="1")
                os.execve(sys.executable, [sys.executable] + argv, env)
    elif args.source == "socket":
        if not args.no_reverse:
            r = adb(S, "reverse", f"tcp:{args.socket_port}", f"tcp:{args.socket_port}")
            print("[reverse]", "ok" if r.returncode == 0 else
                  (r.stderr or r.stdout or "failed").strip()[:160])
        server = EventServer(args.socket_port, events_path, out / "sockets.log")
        thread = threading.Thread(target=server.serve_forever, daemon=True)
        thread.start()
        print(f"[listen] waiting for t3zy module on 127.0.0.1:{args.socket_port}")
        if server.hello is None:
            print("[warn] no HELLO within 120s — module not dispatched or tunnel down")
        attempt["module_hello"] = server.hello
    else:
        # 4) attach + observe (legacy Gadget chain)
        adb(S, "forward", "tcp:27043", "tcp:27043")
        time.sleep(0.5)
        import frida
        dev = frida.get_device_manager().add_remote_device(f"127.0.0.1:{GADGET_PORT}")
        session = dev.attach(pid)
        persisted = 0

        def on_message(message, data):
            nonlocal persisted, dropped_local
            if isinstance(message, dict) and message.get("type") == "send" \
                    and isinstance(message.get("payload"), dict):
                event = dict(message["payload"])
            else:
                event = {"event": "FRIDA_MESSAGE", "message": json.dumps(message)[:500]}
            event["received_at"] = datetime.now(timezone.utc).isoformat()
            if persisted < MAX_EVENT_RECORDS:
                write_jsonl(events_path, event)
                persisted += 1
            else:
                dropped_local += 1

        def on_detached(reason, crash):
            if str(reason) == "application-requested":
                return
            detached.update({"status": "detached", "reason": str(reason),
                             "crash": str(crash)[:400]})

        session.on("detached", on_detached)
        script = session.create_script(HOOK.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        ex = script.exports_sync
        inst = ex.probeandinstall()
        print("[hooks] installed:", json.dumps(inst)[:300])
        attempt["frida_version"] = getattr(frida, "__version__", None)
        attempt["install"] = inst

    (out / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n",
                                      encoding="utf-8")

    print(f"[record] recording up to {args.duration}s — ...")
    t0 = time.monotonic()
    try:
        while time.monotonic() - t0 < args.duration:
            if detached["status"] != "normal":
                print("[warn] detached:", detached.get("reason"))
                break
            time.sleep(1.0)
    except KeyboardInterrupt:
        pass
    if script is not None:
        try:
            stats = script.exports_sync.stats()
        except Exception as stats_error:
            stats = {"error": str(stats_error)}
        print("[stats]", json.dumps(stats)[:400])
        attempt["final_stats"] = stats
        try:
            script.unload()
            session.detach()
        except Exception as e:
            attempt["unload_error"] = str(e)
    attempt["fault"] = detached
    attempt["finished_at"] = datetime.now(timezone.utc).isoformat()

    # 5) teardown
    if args.source == "socket":
        server.alive.clear()
        server.shutdown()
        server.server_close()
        if not args.no_reverse:
            adb(S, "reverse", "--remove", f"tcp:{args.socket_port}")
        dropped_local = server.dropped_local
        attempt["events_persisted"] = server.persisted
    if args.source == "logcat":
        lc.terminate()
        dropped_local = st["dropped"]
        attempt["events_persisted"] = st["persisted"]
    if args.source == "socket":
        n = server.persisted
    elif args.source == "logcat":
        n = st["persisted"]
    else:
        n = persisted
    print("[done] events:", n, "dropped:", dropped_local, "fault:", detached.get("status"))
    subprocess.run(["adb", "-s", S, "pull", pcap, str(out / "capture.pcap")],
                   capture_output=True, text=True)
    su(S, f"rm -f {pcap}")

    proc = adb(S, "shell", "pidof", PACKAGE)
    attempt["survival"] = {"post_pids": proc.stdout.split()}
    (out / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n",
                                      encoding="utf-8")
    if dropped_local:
        write_jsonl(events_path, {"event": "EVENTS_TRUNCATED", "dropped": dropped_local})
    print("[done] artifacts:", out)


if __name__ == "__main__":
    raise SystemExit(main())
