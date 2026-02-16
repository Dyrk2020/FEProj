from __future__ import annotations

import importlib.util
import json
import sys
from pathlib import Path
from types import SimpleNamespace

import pytest


def load_mod():
    path = Path(__file__).resolve().parent / "b2_host_runner.py"
    spec = importlib.util.spec_from_file_location("b2_host_runner", path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


def test_build_b2_load_plan_accepts_only_hash_bound_feproj():
    runner = load_mod()
    graph = {
        "target_library": "libFEProj.so",
        "ordered_libraries": [{
            "name": "libFEProj.so",
            "source_path": "C:/locked/libFEProj.so",
            "sha256": "a" * 64,
        }],
    }
    verified = {
        "libraries": [{
            "name": "libFEProj.so",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/dso/libFEProj.so",
            "sha256": "a" * 64,
        }],
        "battle_logic": {
            "name": "BattleLogic.res",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res",
            "sha256": "b" * 64,
            "size": 1479,
            "header_hex": "1b4c7561530119930d0a1a0a04040408",
        },
    }

    assert runner.build_b2_load_plan(graph, verified) == {
        "ordered_libraries": [{
            "name": "libFEProj.so",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/dso/libFEProj.so",
            "sha256": "a" * 64,
        }],
        "input_provenance": {"battle_logic": verified["battle_logic"]},
    }

    graph["ordered_libraries"].append({"name": "libunity.so", "source_path": "C:/locked/libunity.so", "sha256": "c" * 64})
    with pytest.raises(ValueError, match="single libFEProj"):
        runner.build_b2_load_plan(graph, verified)


def test_execute_b2_surface_records_rpc_order_and_hash_bound_module_event(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []

    class FakeScript:
        def __init__(self):
            self.handlers = {}
            self.exports_sync = SimpleNamespace(
                environment=lambda: calls.append("environment") or {"arch": "arm64", "pointer_size": 8, "pid": 73},
                loadgraph=lambda plan: calls.append("loadgraph") or {"loaded": ["libFEProj.so"]},
                probeexports=lambda: calls.append("probeexports") or [
                    {"selector": "luaL_newstate", "resolved": True},
                    {"selector": "luaL_loadbufferx", "resolved": True},
                    {"selector": "lua_load", "resolved": True},
                ],
                runfetest=lambda plan: calls.append("runfetest") or {
                    "direct_load": {"return_code": 3, "error_string": None, "error_string_status": "not-in-export-abi-whitelist"},
                    "reader_load": {"return_code": 0},
                },
            )

        def on(self, event, handler):
            self.handlers[event] = handler

        def load(self):
            self.handlers["message"]({"type": "send", "payload": {
                "event": "B2_MODULE_LOAD",
                "library": "libFEProj.so",
                "base": "0x71000000",
                "size": 120283368,
            }}, None)

        def unload(self):
            calls.append("unload")

    class FakeSession:
        def __init__(self):
            self.handlers = {}
            self.script = FakeScript()

        def on(self, event, handler):
            self.handlers[event] = handler

        def create_script(self, source):
            assert "runB2FETest" in source
            return self.script

        def detach(self):
            calls.append("detach")
            self.handlers["detached"]("application-requested")

    class FakeDevice:
        def __init__(self):
            self.session = FakeSession()

        def spawn(self, package, gadget):
            assert package == runner.PACKAGE
            assert gadget == "gadget.so"
            calls.append("spawn")
            return 73

        def attach(self, pid):
            assert pid == 73
            calls.append("attach")
            return self.session

        def resume(self, pid):
            assert pid == 73
            calls.append("resume")

    device = FakeDevice()
    fake_frida = SimpleNamespace(
        __version__="17.8.0",
        get_device_manager=lambda: SimpleNamespace(get_device=lambda serial, timeout: device),
        get_usb_device=lambda timeout: device,
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    monkeypatch.setattr(runner, "_capture_logcat", lambda adb, serial: {"status": "ok", "code": 0, "stdout": ""})

    plan = {
        "ordered_libraries": [{
            "name": "libFEProj.so",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/dso/libFEProj.so",
            "sha256": "a" * 64,
        }],
        "input_provenance": {"battle_logic": {
            "name": "BattleLogic.res",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res",
            "sha256": "b" * 64,
            "size": 1479,
            "header_hex": "1b4c7561530119930d0a1a0a04040408",
        }},
    }

    run_dir = runner.execute_b2_surface(
        "SERIAL", plan, evidence_root=tmp_path, adb="adb", gadget=Path("gadget.so"),
    )

    assert calls[:7] == ["spawn", "attach", "resume", "environment", "loadgraph", "probeexports", "runfetest"]
    assert calls[-2:] == ["unload", "detach"]
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["fault"] == {"status": "normal"}
    assert attempt["process_abi"] == {"arch": "arm64", "pointer_size": 8, "pid": 73}
    assert attempt["rpc_order"] == ["environment", "loadgraph", "probeexports", "runfetest"]
    events = [json.loads(line) for line in (run_dir / "events.jsonl").read_text(encoding="utf-8").splitlines()]
    assert events[0]["sha256"] == "a" * 64


def test_execute_b2_surface_registers_remote_gadget_and_attaches_pid(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    remote_devices: list[object] = []
    attach_requests: list[int] = []
    resume_requests: list[object] = []

    class FakeScript:
        def __init__(self):
            self.handlers = {}
            self.exports_sync = SimpleNamespace(
                environment=lambda: calls.append("environment") or {"arch": "arm64", "pointer_size": 8, "pid": 4242},
                loadgraph=lambda plan: calls.append("loadgraph") or {"loaded": ["libFEProj.so"]},
                probeexports=lambda: calls.append("probeexports") or [],
                runfetest=lambda plan: calls.append("runfetest") or {},
            )

        def on(self, event, handler):
            self.handlers[event] = handler

        def load(self):
            pass

        def unload(self):
            calls.append("unload")

    class FakeSession:
        def __init__(self):
            self.handlers = {}
            self.script = FakeScript()

        def on(self, event, handler):
            self.handlers[event] = handler

        def create_script(self, source):
            return self.script

        def detach(self):
            calls.append("detach")
            self.handlers["detached"]("application-requested")

    session = FakeSession()

    def attach(pid):
        attach_requests.append(pid)
        return session

    remote_device = SimpleNamespace(attach=attach, resume=lambda pid: resume_requests.append(pid))
    fake_frida = SimpleNamespace(
        __version__="17.15.5",
        get_device_manager=lambda: SimpleNamespace(
            add_remote_device=lambda address: remote_devices.append(address) or remote_device,
        ),
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    monkeypatch.setattr(runner, "_capture_logcat", lambda adb, serial: {"status": "ok", "code": 0, "stdout": ""})

    plan = {
        "ordered_libraries": [{
            "name": "libFEProj.so",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/dso/libFEProj.so",
            "sha256": "a" * 64,
        }],
        "input_provenance": {"battle_logic": {
            "name": "BattleLogic.res",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res",
            "sha256": "b" * 64,
            "size": 1479,
            "header_hex": "1b4c7561530119930d0a1a0a04040408",
        }},
    }

    run_dir = runner.execute_b2_surface(
        None, plan, evidence_root=tmp_path, adb="adb",
        remote_gadget="127.0.0.1:27042", attach_pid=4242,
    )

    assert remote_devices == ["127.0.0.1:27042"]
    assert attach_requests == [4242]
    assert resume_requests == []
    assert calls == ["environment", "loadgraph", "probeexports", "runfetest", "unload", "detach"]
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["attach"] == {"mode": "embedded-gadget", "pid": 4242, "remote": "127.0.0.1:27042"}
    assert attempt["spawn"] is None
    assert attempt["fault"] == {"status": "normal"}


def test_execute_b2_surface_remote_gadget_requires_attach_pid(tmp_path: Path, monkeypatch):
    runner = load_mod()
    fake_frida = SimpleNamespace(
        __version__="17.15.5",
        get_device_manager=lambda: SimpleNamespace(add_remote_device=lambda address: object()),
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    with pytest.raises(RuntimeError, match="--remote-gadget requires --attach-pid"):
        runner.execute_b2_surface(
            None, {"ordered_libraries": []}, evidence_root=tmp_path, adb="adb",
            remote_gadget="127.0.0.1:27042",
        )


def test_execute_b2_surface_remote_gadget_rejects_gadget_combination(tmp_path: Path, monkeypatch):
    runner = load_mod()
    fake_frida = SimpleNamespace(
        __version__="17.15.5",
        get_device_manager=lambda: SimpleNamespace(add_remote_device=lambda address: object()),
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    with pytest.raises(RuntimeError, match="--remote-gadget cannot be combined with --gadget"):
        runner.execute_b2_surface(
            None, {"ordered_libraries": []}, evidence_root=tmp_path, adb="adb",
            gadget=Path("gadget.so"), remote_gadget="127.0.0.1:27042", attach_pid=4242,
        )


def test_execute_b2_surface_attach_pid_rejects_gadget_combination(tmp_path: Path, monkeypatch):
    runner = load_mod()
    fake_frida = SimpleNamespace(
        __version__="17.15.5",
        get_device_manager=lambda: SimpleNamespace(get_device=lambda serial, timeout: object()),
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    with pytest.raises(RuntimeError, match="--attach-pid cannot be combined with --gadget"):
        runner.execute_b2_surface(
            "SERIAL", {"ordered_libraries": []}, evidence_root=tmp_path, adb="adb",
            gadget=Path("gadget.so"), attach_pid=4242,
        )


def test_main_rejects_remote_gadget_without_attach_pid(tmp_path: Path, capsys):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text(
        json.dumps({
            "target_library": "libFEProj.so",
            "ordered_libraries": [{
                "name": "libFEProj.so",
                "source_path": "locked/libFEProj.so",
                "sha256": "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a",
            }],
        }),
        encoding="utf-8",
    )
    with pytest.raises(SystemExit):
        runner.main(["--graph", str(graph_path), "--capture", "--remote-gadget", "127.0.0.1:27042"])
    assert "must be used together" in capsys.readouterr().err


def test_main_rejects_remote_gadget_with_gadget(tmp_path: Path, capsys):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text(
        json.dumps({
            "target_library": "libFEProj.so",
            "ordered_libraries": [{
                "name": "libFEProj.so",
                "source_path": "locked/libFEProj.so",
                "sha256": "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a",
            }],
        }),
        encoding="utf-8",
    )
    gadget = tmp_path / "gadget.so"
    gadget.write_bytes(b"gadget")
    with pytest.raises(SystemExit):
        runner.main(["--graph", str(graph_path), "--capture", "--gadget", str(gadget),
                     "--remote-gadget", "127.0.0.1:27042", "--attach-pid", "4242"])
    assert "cannot be combined with --gadget" in capsys.readouterr().err


def test_main_rejects_attach_pid_with_gadget(tmp_path: Path, capsys):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text(
        json.dumps({
            "target_library": "libFEProj.so",
            "ordered_libraries": [{
                "name": "libFEProj.so",
                "source_path": "locked/libFEProj.so",
                "sha256": "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a",
            }],
        }),
        encoding="utf-8",
    )
    gadget = tmp_path / "gadget.so"
    gadget.write_bytes(b"gadget")
    with pytest.raises(SystemExit):
        runner.main(["--graph", str(graph_path), "--capture", "--gadget", str(gadget), "--attach-pid", "4242"])
    assert "cannot be combined with --gadget" in capsys.readouterr().err


def test_main_rejects_native_load_action_without_remote_gadget(tmp_path: Path, capsys):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text(
        json.dumps({
            "target_library": "libFEProj.so",
            "ordered_libraries": [{
                "name": "libFEProj.so",
                "source_path": "locked/libFEProj.so",
                "sha256": "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a",
            }],
        }),
        encoding="utf-8",
    )
    with pytest.raises(SystemExit):
        runner.main(["--graph", str(graph_path), "--native-load-action"])
    assert "requires --remote-gadget" in capsys.readouterr().err


def test_execute_b2_native_load_surface_observes_java_system_load(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    remote_devices: list[object] = []
    attach_requests: list[int] = []

    class FakeScript:
        def __init__(self):
            self.handlers = {}
            self.exports_sync = SimpleNamespace(
                environment=lambda: calls.append("environment") or {"arch": "arm64", "pointer_size": 8, "pid": 73},
                setbattlelogicpath=lambda path: calls.append("setbattlelogicpath") or {"battle_logic_path": path},
                waitfeprojloaded=lambda timeout: calls.append("waitfeprojloaded") or {"name": "libFEProj.so", "base": "0x71000000", "size": 120283368},
                probeluaexports=lambda: calls.append("probeluaexports") or [{"selector": "luaL_loadbufferx", "resolved": True}],
                fetesttouch=lambda: calls.append("fetesttouch") or {"fd": 3, "nbytes": 1479},
            )

        def on(self, event, handler):
            self.handlers[event] = handler

        def load(self):
            self.handlers["message"]({"type": "send", "payload": {
                "event": "B2_MODULE_LOAD", "library": "libFEProj.so", "base": "0x71000000", "size": 120283368,
            }}, None)

        def unload(self):
            calls.append("unload")

    class FakeSession:
        def __init__(self):
            self.handlers = {}
            self.script = FakeScript()

        def on(self, event, handler):
            self.handlers[event] = handler

        def create_script(self, source):
            assert "java-system-load" in source
            return self.script

        def detach(self):
            calls.append("detach")
            self.handlers["detached"]("application-requested")

    session = FakeSession()

    def attach(pid):
        attach_requests.append(pid)
        return session

    remote_device = SimpleNamespace(attach=attach)
    fake_frida = SimpleNamespace(
        __version__="17.15.5",
        get_device_manager=lambda: SimpleNamespace(
            add_remote_device=lambda address: remote_devices.append(address) or remote_device,
        ),
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    monkeypatch.setattr(runner, "_capture_logcat", lambda adb, serial: {"status": "ok", "code": 0, "stdout": "logcat"})

    subprocess_calls: list[list[str]] = []

    def run(command, **_kwargs):
        subprocess_calls.append(command)
        if "am" in command and "start" in command:
            return SimpleNamespace(returncode=0, stdout="Starting: Intent", stderr="")
        if "pidof" in command:
            return SimpleNamespace(returncode=0, stdout="73\n", stderr="")
        return SimpleNamespace(returncode=0, stdout="", stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)
    monkeypatch.setattr(runner.time, "sleep", lambda seconds: None)

    plan = {
        "ordered_libraries": [{
            "name": "libFEProj.so",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/dso/libFEProj.so",
            "sha256": "a" * 64,
        }],
        "input_provenance": {"battle_logic": {
            "name": "BattleLogic.res",
            "path": "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res",
            "sha256": "b" * 64,
            "size": 1479,
            "header_hex": "1b4c7561530119930d0a1a0a04040408",
        }},
    }

    run_dir = runner.execute_b2_native_load_surface(
        None, plan, evidence_root=tmp_path, adb="adb",
        remote_gadget="127.0.0.1:27042", attach_pid=73,
        survive_seconds=0,
    )

    assert remote_devices == ["127.0.0.1:27042"]
    assert attach_requests == [73]
    assert calls == ["environment", "setbattlelogicpath", "waitfeprojloaded", "probeluaexports", "fetesttouch", "unload", "detach"]
    assert any("am" in command and "start" in command and "loadfeproj" in command for command in subprocess_calls)
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["mode"] == "java-system-load"
    assert attempt["loaded"] == {"name": "libFEProj.so", "base": "0x71000000", "size": 120283368}
    assert attempt["survival"]["alive"] is True
    assert attempt["fault"] == {"status": "normal"}
    events = [json.loads(line) for line in (run_dir / "events.jsonl").read_text(encoding="utf-8").splitlines()]
    assert events[0]["event"] == "B2_MODULE_LOAD"
    assert events[0]["sha256"] == "a" * 64
