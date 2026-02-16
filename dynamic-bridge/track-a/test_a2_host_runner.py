from __future__ import annotations

import importlib.util
import io
import json
import sys
import subprocess
from pathlib import Path
from types import SimpleNamespace

import pytest


def load_mod():
    path = Path(__file__).resolve().parent / "a2_host_runner.py"
    spec = importlib.util.spec_from_file_location("a2_host_runner", path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


def test_data_space_preflight_reports_required_and_available_bytes():
    runner = load_mod()
    output = """Filesystem 1K-blocks Used Available Use% Mounted on
/tmpfs 100 10 90 10% /data
"""

    assert runner.available_data_kib(output) == 90
    with pytest.raises(RuntimeError, match=r"insufficient /data space: requires 98304 KiB, available 90 KiB"):
        runner.require_data_space(90, payload_bytes=32 * 1024 * 1024, reserve_kib=64 * 1024)


def test_data_space_preflight_accepts_android_user_data_mount():
    runner = load_mod()
    output = """Filesystem 1K-blocks Used Available Use% Mounted on
/dev/block/dm-56 6082144 5617012 322920 95% /data/user/0
"""

    assert runner.available_data_kib(output) == 322920


def test_stream_uses_binary_safe_relay_and_atomic_replace(tmp_path: Path, monkeypatch):
    runner = load_mod()
    source = tmp_path / "libil2cpp.so"
    source.write_bytes(b"streamed-dso")
    calls = []

    def run(command, **kwargs):
        calls.append((command, kwargs))
        return SimpleNamespace(returncode=0, stdout="", stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)
    monkeypatch.setattr(runner.subprocess, "Popen", lambda *_args, **_kwargs: pytest.fail("binary DSO staging must not write through adb shell stdin"))

    runner.stream_dso_to_helper("adb", None, source, expected_sha256="a" * 64)

    push, copy, cleanup = [command for command, _kwargs in calls]
    assert push[:3] == ["adb", "push", str(source)]
    relay = push[3]
    assert relay.startswith("/data/local/tmp/a2-libil2cpp.so-")
    assert copy[:2] == ["adb", "shell"]
    shell = copy[-1]
    assert shell.startswith(f"run-as {runner.PACKAGE} sh -c ")
    assert f"cat {relay} > files/dso/libil2cpp.so.tmp" in shell
    assert "sha256sum files/dso/libil2cpp.so" in shell
    assert "then exit 0" in shell
    assert "rm -f files/dso/libil2cpp.so.tmp" in shell
    assert "sha256sum files/dso/libil2cpp.so.tmp" in shell
    assert "mv -f files/dso/libil2cpp.so.tmp files/dso/libil2cpp.so" in shell
    assert f"= {'a' * 64} || exit 1; mv -f files/dso/libil2cpp.so.tmp files/dso/libil2cpp.so" in shell
    assert cleanup == ["adb", "shell", "rm", "-f", relay]


def test_stage_sidecar_inputs_transfers_hash_bound_sources(tmp_path: Path, monkeypatch):
    runner = load_mod()
    metadata = tmp_path / "global-metadata.dat"
    battle_logic = tmp_path / "BattleLogic.res"
    metadata.write_bytes(b"metadata")
    battle_logic.write_bytes(b"battle-logic")
    metadata_hash = runner._sha256(metadata)
    battle_logic_hash = runner._sha256(battle_logic)
    manifest = tmp_path / "input-manifest.json"
    manifest.write_text(json.dumps({"anchors": [
        {"name": "global-metadata.dat", "path": str(metadata), "sha256": metadata_hash, "expected": metadata_hash},
        {"name": "BattleLogic.res", "path": str(battle_logic), "sha256": battle_logic_hash, "expected": battle_logic_hash},
    ]}), encoding="utf-8")
    transfers = []

    def relay(_adb, _serial, source, *, name, final, expected_sha256):
        transfers.append((source, name, final, expected_sha256))

    monkeypatch.setattr(runner, "_relay_to_helper", relay, raising=False)

    runner.stage_sidecar_inputs("adb", "serial", manifest)

    assert transfers == [
        (metadata, "global-metadata.dat", "files/incoming/global-metadata.dat", metadata_hash),
        (battle_logic, "BattleLogic.res", "files/incoming/BattleLogic.res", battle_logic_hash),
    ]


def test_verify_helper_inputs_binds_run_as_hashes_to_manifest(tmp_path: Path, monkeypatch):
    runner = load_mod()
    dso_hash = "a" * 64
    metadata_hash = "b" * 64
    manifest = tmp_path / "input-manifest.json"
    manifest.write_text(
        json.dumps({"anchors": [
            {"name": "libil2cpp.so", "sha256": dso_hash, "expected": dso_hash, "size": 1},
            {"name": "global-metadata.dat", "sha256": metadata_hash, "expected": metadata_hash, "size": 1},
        ]}),
        encoding="utf-8",
    )
    graph = {"ordered_libraries": [{"name": "libil2cpp.so", "sha256": dso_hash, "source_path": "ignored"}]}
    commands = []

    def run(command, **kwargs):
        commands.append(command)
        if any("stat" in part for part in command):
            return SimpleNamespace(stdout="17 19 1\n", stderr="")
        digest = dso_hash if command[-1].endswith("files/dso/libil2cpp.so") else metadata_hash
        return SimpleNamespace(stdout=f"{digest}  checked-file\n", stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)

    verified = runner.verify_helper_inputs("adb", None, graph, manifest, "/helper/files/dso", "/helper/files/meta")

    assert verified == {
        "libraries": [{"name": "libil2cpp.so", "path": "/helper/files/dso/libil2cpp.so", "sha256": dso_hash}],
        "metadata": {
            "name": "global-metadata.dat",
            "path": "/helper/files/meta/Metadata/global-metadata.dat",
            "sha256": metadata_hash,
            "identity": {"dev": "17", "ino": "19", "size": 1},
        },
    }
    assert len(commands) == 3
    assert all(command[1:4] == ["shell", "run-as", runner.PACKAGE] for command in commands[:2])
    assert commands[2] == ["adb", "shell", runner._run_as_shell_command("stat -c '%d %i %s' /helper/files/meta/Metadata/global-metadata.dat")]


def test_execute_surface_rejects_non_arm64_process_before_any_surface_rpc(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "x64", "pointer_size": 8})

    with pytest.raises(RuntimeError, match="requires arm64 helper process; found x64"):
        runner.execute_surface(
            None,
            {"ordered_libraries": []},
            load=True,
            set_data_dir=True,
            init=True,
            data_dir="/helper/files/meta",
            domain_name="LogicHarness",
            evidence_root=tmp_path,
            adb="adb",
        )

    assert calls == ["environment"]


def test_main_acquires_process_abi_before_dispatching_surface_rpcs(tmp_path: Path, monkeypatch):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text('{"ordered_libraries": []}', encoding="utf-8")
    manifest_path = tmp_path / "manifest.json"
    manifest_path.write_text('{"anchors": []}', encoding="utf-8")
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "x64", "pointer_size": 8})
    monkeypatch.setattr(
        runner,
        "verify_helper_inputs",
        lambda *args, **kwargs: {"libraries": [], "metadata": {"path": "/helper/files/meta/Metadata/global-metadata.dat", "sha256": "a" * 64, "identity": {"dev": "17", "ino": "19", "size": 1}}},
    )

    def run_directory(_root):
        directory = tmp_path / "evidence"
        directory.mkdir()
        return directory

    monkeypatch.setattr(runner, "_run_directory", run_directory)

    with pytest.raises(RuntimeError, match="requires arm64 helper process; found x64"):
        runner.main(["--graph", str(graph_path), "--manifest", str(manifest_path), "--load"])

    assert calls == ["environment"]


def test_execute_surface_dispatches_probe_and_persists_message_evidence_before_load(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    fake = _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8})

    runner.execute_surface(
        None,
        {"ordered_libraries": []},
        load=True,
        set_data_dir=True,
        init=True,
        data_dir="/helper/files/meta",
        domain_name="LogicHarness",
        evidence_root=tmp_path,
        adb="adb",
    )

    assert fake.script.message_handler_registered_before_load
    assert calls == ["environment", "loadgraph", "probeexports", "setdatadir", "init"]
    run_dir = next(tmp_path.iterdir())
    events = [json.loads(line) for line in (run_dir / "events.jsonl").read_text(encoding="utf-8").splitlines()]
    assert [{key: value for key, value in event.items() if key != "received_at"} for event in events] == [{"address": "module-base", "event": "A2_MODULE_MAP", "library": "libil2cpp.so"}]
    assert "received_at" in events[0]
    assert len((run_dir / "rpc-results.jsonl").read_text(encoding="utf-8").splitlines()) == 5
    assert json.loads((run_dir / "maps.json").read_text(encoding="utf-8")) == events
    assert (run_dir / "hooks-last-50.jsonl").read_text(encoding="utf-8").strip()
    assert (run_dir / "logcat.txt").exists()
    assert "normal" in (run_dir / "fault.txt").read_text(encoding="utf-8")
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["process_abi"] == {"arch": "arm64", "pointer_size": 8}
    assert attempt["operation"] == "init"
    assert attempt["domain_ptr"] == "domain-pointer"


def test_execute_surface_spawns_and_resumes_explicit_gadget(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    fake = _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8})
    gadget = tmp_path / "gadget-android-arm64.so"

    runner.execute_surface(
        None, {"ordered_libraries": []}, load=False, set_data_dir=False, init=False,
        data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path,
        adb="adb", gadget=gadget,
    )

    assert fake.spawn_requests == [(runner.PACKAGE, str(gadget))]
    assert fake.attach_requests == [4242]
    assert fake.resume_requests == [4242]
    attempt = json.loads((next(tmp_path.iterdir()) / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["spawn"] == {"mode": "gadget", "gadget_path": str(gadget), "pid": 4242}




def test_execute_surface_load_only_probes_exports_without_direct_actions(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8})

    runner.execute_surface(
        None,
        {"ordered_libraries": []},
        load=True,
        set_data_dir=False,
        init=False,
        data_dir="/helper/files/meta",
        domain_name="LogicHarness",
        evidence_root=tmp_path,
        adb="adb",
    )

    assert calls == ["environment", "loadgraph", "probeexports"]

def test_execute_surface_binds_metadata_then_probes_before_direct_actions(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8})
    load_plan = {"ordered_libraries": [], "input_provenance": {"metadata": {"path": "/helper/files/meta/Metadata/global-metadata.dat", "sha256": "a" * 64, "identity": {"dev": "17", "ino": "19", "size": 1}}}}

    runner.execute_surface(
        None, load_plan, load=False, set_data_dir=True, init=True,
        data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb",
    )

    assert calls == ["environment", "bindmetadata", "probeexports", "setdatadir", "init"]


def test_execute_surface_uses_five_second_serial_device_timeout(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    fake = _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8})

    runner.execute_surface(
        "SERIAL", {"ordered_libraries": []}, load=False, set_data_dir=False, init=False,
        data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb",
    )

    assert fake.serial_requests == [("SERIAL", 5)]
    assert fake.usb_requests == []


def test_execute_surface_serializes_detach_crash_and_retains_it_after_rpc_error(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []

    class Crash:
        pid = 1234
        process_name = "dev.wildriftresearch.logicharness"
        summary = "SIGSEGV"
        report = "native crash report"

    def detach_then_fail(_name, session):
        session.handlers["detached"]("process-terminated", Crash())
        raise RuntimeError("rpc after detach")

    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8}, on_rpc=detach_then_fail)

    with pytest.raises(RuntimeError, match="rpc after detach"):
        runner.execute_surface(
            None, {"ordered_libraries": []}, load=False, set_data_dir=False, init=False,
            data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb",
        )

    run_dir = next(tmp_path.iterdir())
    fault = json.loads((run_dir / "fault.txt").read_text(encoding="utf-8"))
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    expected_crash = {"pid": 1234, "process_name": "dev.wildriftresearch.logicharness", "summary": "SIGSEGV", "report": "native crash report", "fault_location": {"address": None, "context": None, "module": None, "rva": None}}
    assert fault["reason"] == "process-terminated"
    assert fault["crash"] == expected_crash
    assert fault["error"] == "RuntimeError: rpc after detach"
    assert attempt["fault"] == fault


def test_verify_post_copy_inputs_checks_battlelogic_in_fetest_tree(tmp_path: Path, monkeypatch):
    runner = load_mod()
    hashes = {"global-metadata.dat": "a" * 64, "BattleLogic.res": "b" * 64}
    manifest = tmp_path / "manifest.json"
    manifest.write_text(json.dumps({"anchors": [
        {"name": name, "sha256": digest, "expected": digest}
        for name, digest in hashes.items()
    ]}), encoding="utf-8")
    paths = []

    def helper_hash(_adb, _serial, relative_path):
        paths.append(relative_path)
        return hashes["BattleLogic.res"] if relative_path.endswith("BattleLogic.res") else hashes["global-metadata.dat"]

    monkeypatch.setattr(runner, "_helper_sha256", helper_hash)

    runner.verify_post_copy_inputs(
        "adb", None, {"ordered_libraries": []}, manifest,
        runner.DEFAULT_DEVICE_DSO_DIR, runner.DEFAULT_DATA_DIR,
        verify_stage=True, verify_dsos=False,
    )

    assert paths == [
        "files/meta/Metadata/global-metadata.dat",
        "files/fetest/Res/FETest/Logic/BattleLogic.res",
    ]


def test_verify_post_copy_inputs_retries_missing_canonical_metadata(tmp_path: Path, monkeypatch):
    runner = load_mod()
    hashes = {"global-metadata.dat": "a" * 64, "BattleLogic.res": "b" * 64}
    manifest = tmp_path / "manifest.json"
    manifest.write_text(json.dumps({"anchors": [
        {"name": name, "sha256": digest, "expected": digest}
        for name, digest in hashes.items()
    ]}), encoding="utf-8")
    paths: list[str] = []
    sleeps: list[float] = []

    def helper_hash(_adb, _serial, relative_path):
        paths.append(relative_path)
        if relative_path.endswith("Metadata/global-metadata.dat") and paths.count(relative_path) == 1:
            raise subprocess.CalledProcessError(1, ["sha256sum", relative_path])
        return hashes["BattleLogic.res"] if relative_path.endswith("BattleLogic.res") else hashes["global-metadata.dat"]

    monkeypatch.setattr(runner, "_helper_sha256", helper_hash)
    monkeypatch.setattr(runner.time, "sleep", lambda seconds: sleeps.append(seconds))

    runner.verify_post_copy_inputs(
        "adb", None, {"ordered_libraries": []}, manifest,
        runner.DEFAULT_DEVICE_DSO_DIR, runner.DEFAULT_DATA_DIR,
        verify_stage=True, verify_dsos=False,
    )

    assert paths == [
        "files/meta/Metadata/global-metadata.dat",
        "files/meta/Metadata/global-metadata.dat",
        "files/fetest/Res/FETest/Logic/BattleLogic.res",
    ]
    assert len(sleeps) == 1

@pytest.mark.parametrize("mismatch", ["global-metadata.dat", "BattleLogic.res", "libil2cpp.so"])
def test_verify_post_copy_inputs_rejects_each_immutable_manifest_mismatch(tmp_path: Path, monkeypatch, mismatch: str):
    runner = load_mod()
    hashes = {"global-metadata.dat": "a" * 64, "BattleLogic.res": "b" * 64, "libil2cpp.so": "c" * 64}
    manifest = tmp_path / "manifest.json"
    manifest.write_text(json.dumps({"anchors": [{"name": name, "sha256": digest, "expected": digest} for name, digest in hashes.items()]}), encoding="utf-8")
    graph = {"ordered_libraries": [{"name": "libil2cpp.so", "sha256": hashes["libil2cpp.so"]}]}

    def helper_hash(_adb, _serial, relative_path):
        for name, digest in hashes.items():
            if relative_path.endswith(name):
                return "d" * 64 if name == mismatch else digest
        raise AssertionError(relative_path)

    monkeypatch.setattr(runner, "_helper_sha256", helper_hash)
    with pytest.raises(RuntimeError, match=mismatch):
        runner.verify_post_copy_inputs("adb", None, graph, manifest, "/helper/files/dso", "/helper/files/meta", verify_stage=True, verify_dsos=True)


@pytest.mark.parametrize(
    ("flags", "expected"),
    [(["--stage"], (True, False)), (["--stream-dsos"], (False, True)), (["--stage", "--stream-dsos"], (True, True))],
)
def test_main_verifies_each_standalone_copy_path_before_success(tmp_path: Path, monkeypatch, flags: list[str], expected: tuple[bool, bool]):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text('{"ordered_libraries": []}', encoding="utf-8")
    manifest_path = tmp_path / "manifest.json"
    manifest_path.write_text('{"anchors": []}', encoding="utf-8")
    calls: list[tuple[bool, bool]] = []
    sidecars: list[Path] = []
    monkeypatch.setattr(runner, "stage_payload_bytes", lambda _manifest: 0)
    monkeypatch.setattr(runner, "_graph_sources", lambda _graph: [])
    monkeypatch.setattr(runner, "stage_helper", lambda *_args: None)
    monkeypatch.setattr(runner, "stage_sidecar_inputs", lambda _adb, _serial, manifest: sidecars.append(manifest))
    monkeypatch.setattr(runner, "verify_post_copy_inputs", lambda *_args, verify_stage, verify_dsos: calls.append((verify_stage, verify_dsos)), raising=False)
    monkeypatch.setattr(runner.subprocess, "run", lambda *args, **kwargs: SimpleNamespace(stdout="Filesystem 1K-blocks Used Available Use% Mounted on\n/tmpfs 100 10 90 10% /data\n", stderr=""))

    assert runner.main(["--graph", str(graph_path), "--manifest", str(manifest_path), *flags, "--reserve-kib", "0"]) == 0
    assert calls == ([(False, True), (True, False)] if len(flags) == 2 else [expected])
    assert sidecars == ([manifest_path] if "--stage" in flags else [])


def test_stage_payload_reserves_one_canonical_metadata_copy_and_rejects_boundary(tmp_path: Path):
    runner = load_mod()
    manifest = tmp_path / "manifest.json"
    manifest.write_text(json.dumps({"anchors": [
        {"name": "global-metadata.dat", "size": 1024},
        {"name": "BattleLogic.res", "size": 1},
    ]}), encoding="utf-8")

    payload = runner.stage_payload_bytes(manifest)
    assert payload == 1024 + 1
    with pytest.raises(RuntimeError, match="requires 2 KiB, available 1 KiB"):
        runner.require_data_space(1, payload_bytes=payload, reserve_kib=0)


def test_stream_preserves_valid_final_and_cleans_relay(tmp_path: Path, monkeypatch):
    runner = load_mod()
    source = tmp_path / "libil2cpp.so"
    source.write_bytes(b"streamed-dso")
    commands: list[list[str]] = []

    def run(command, **_kwargs):
        commands.append(command)
        return SimpleNamespace(returncode=0, stdout="", stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)
    runner.stream_dso_to_helper("adb", None, source, expected_sha256="a" * 64)
    relay = commands[0][-1]
    shell = commands[1][-1]
    assert "test \"$(sha256sum files/dso/libil2cpp.so" in shell
    assert "then exit 0" in shell
    assert "mv -f files/dso/libil2cpp.so.tmp files/dso/libil2cpp.so" in shell
    assert "rm -f files/dso/libil2cpp.so;" not in shell
    assert commands[2] == ["adb", "shell", "rm", "-f", relay]


def test_execute_surface_keeps_normal_fault_during_requested_cleanup(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8, "pid": 77}, detach_on_cleanup=True)

    runner.execute_surface(None, {"ordered_libraries": []}, load=False, set_data_dir=False, init=False, data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb")

    run_dir = next(tmp_path.iterdir())
    assert json.loads((run_dir / "fault.txt").read_text(encoding="utf-8"))["status"] == "normal"
    assert json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))["fault"]["status"] == "normal"


def test_execute_surface_marks_matching_pid_fatal_logcat(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8, "pid": 77})
    fatal_line = "07-17 03:58:24.069 77 80 F libc: Fatal signal 7 (SIGBUS), code 1, pid 77 (ch.logicharness)"
    monkeypatch.setattr(
        runner,
        "_capture_logcat",
        lambda *_args: {"status": "ok", "code": 0, "stdout": fatal_line + "\n", "stderr": ""},
    )

    runner.execute_surface(None, {"ordered_libraries": []}, load=False, set_data_dir=False, init=False, data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb")

    run_dir = next(tmp_path.iterdir())
    fault = json.loads((run_dir / "fault.txt").read_text(encoding="utf-8"))
    assert fault == {"fatal_logcat": [fatal_line], "status": "fatal-logcat"}
    assert json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))["fault"] == fault


def test_execute_surface_records_received_times_and_touch_window(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    events = [{"event": "A2_FMN_READ"}, {"event": "A2_FETEST_LOAD"}]
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8, "pid": 77}, message_events=events, frida_version="17.8.0")

    runner.execute_surface(None, {"ordered_libraries": [], "input_provenance": {"metadata": {"path": "meta", "sha256": "a" * 64}}}, load=False, set_data_dir=False, init=False, data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb")

    run_dir = next(tmp_path.iterdir())
    logged = [json.loads(line) for line in (run_dir / "events.jsonl").read_text(encoding="utf-8").splitlines()]
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    assert all("received_at" in event for event in logged)
    assert attempt["metadata_present"] is True
    assert attempt["fmn_touched"] is True
    assert attempt["fetest_touched"] is True
    assert attempt["process_abi"] == {"arch": "arm64", "pointer_size": 8, "pid": 77}
    assert attempt["frida_version"] == "17.8.0"


def test_serialize_crash_preserves_context_and_normalizes_module_rva():
    runner = load_mod()
    crash = SimpleNamespace(pid=1, process_name="helper", summary="SIGSEGV", report="report", address="0x1010", context={"pc": "0x1010"})
    maps = [{"event": "A2_MODULE_MAP", "library": "libil2cpp.so", "base": "0x1000", "size": 8192, "path": "/helper/libil2cpp.so"}]
    assert runner._serialize_crash(crash, maps) == {
        "pid": 1, "process_name": "helper", "summary": "SIGSEGV", "report": "report",
        "fault_location": {
            "address": "0x1010", "context": {"pc": "0x1010"},
            "module": {"name": "libil2cpp.so", "path": "/helper/libil2cpp.so", "base": "0x1000"}, "rva": "0x10",
        },
    }


def test_capture_logcat_records_nonzero_dump_failure(monkeypatch):
    runner = load_mod()
    monkeypatch.setattr(runner.subprocess, "run", lambda *args, **kwargs: SimpleNamespace(returncode=1, stdout="partial", stderr="denied"))

    assert runner._capture_logcat("adb", None) == {"status": "error", "code": 1, "stdout": "partial", "stderr": "denied"}


def test_stage_load_runs_status_clear_hook_stage_verify_then_rpcs(tmp_path: Path, monkeypatch):
    runner = load_mod()
    graph_path = tmp_path / "graph.json"
    graph_path.write_text('{"ordered_libraries": []}', encoding="utf-8")
    manifest_path = tmp_path / "manifest.json"
    manifest_path.write_text('{"anchors": []}', encoding="utf-8")
    order: list[str] = []
    monkeypatch.setattr(runner, "stage_payload_bytes", lambda _path: 0)
    monkeypatch.setattr(runner, "helper_status", lambda *_args: order.append("status"))
    monkeypatch.setattr(runner, "clear_logcat", lambda *_args: order.append("clear") or {"status": "cleared"})
    monkeypatch.setattr(runner, "stage_sidecar_inputs", lambda *_args: order.append("sidecars"), raising=False)
    monkeypatch.setattr(runner, "stage_helper", lambda *_args: order.append("stage"))
    monkeypatch.setattr(runner, "verify_post_copy_inputs", lambda *_args, **_kwargs: order.append("verify"))
    monkeypatch.setattr(runner, "verify_helper_inputs", lambda *_args, **_kwargs: {"libraries": [], "metadata": {"path": "meta", "sha256": "a" * 64}})
    monkeypatch.setattr(runner.subprocess, "run", lambda *args, **kwargs: SimpleNamespace(stdout="Filesystem 1K-blocks Used Available Use% Mounted on\n/tmpfs 100 10 90 10% /data\n", stderr=""))
    def execute_surface(*_args, before_rpcs, **_kwargs):
        order.append("hook")
        before_rpcs()
        order.append("rpcs")

    monkeypatch.setattr(runner, "execute_surface", execute_surface)

    assert runner.main(["--graph", str(graph_path), "--manifest", str(manifest_path), "--stage", "--load", "--reserve-kib", "0"]) == 0
    assert order == ["status", "clear", "hook", "sidecars", "stage", "verify", "rpcs"]


def test_absent_metadata_state_is_mutually_exclusive_with_stage(tmp_path: Path):
    runner = load_mod()
    graph = tmp_path / "graph.json"
    graph.write_text('{"ordered_libraries": []}', encoding="utf-8")
    manifest = tmp_path / "manifest.json"
    manifest.write_text('{"anchors": []}', encoding="utf-8")

    with pytest.raises(SystemExit):
        runner.main(["--graph", str(graph), "--manifest", str(manifest), "--stage", "--metadata-state", "absent"])


def test_absent_metadata_state_proves_absence_and_keeps_dso_verification(tmp_path: Path, monkeypatch):
    runner = load_mod()
    dso_hash = "a" * 64
    metadata_hash = "b" * 64
    manifest = tmp_path / "manifest.json"
    manifest.write_text(json.dumps({"anchors": [
        {"name": "libil2cpp.so", "sha256": dso_hash, "expected": dso_hash},
        {"name": "global-metadata.dat", "sha256": metadata_hash, "expected": metadata_hash},
    ]}), encoding="utf-8")
    graph = {"ordered_libraries": [{"name": "libil2cpp.so", "sha256": dso_hash}]}
    commands = []

    def run(command, **_kwargs):
        commands.append(command)
        if command[-1].startswith(f"run-as {runner.PACKAGE} sh -c ") and "test ! -e" in command[-1]:
            return SimpleNamespace(returncode=0, stdout="", stderr="")
        return SimpleNamespace(returncode=0, stdout=f"{dso_hash} file\n", stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)
    verified = runner.verify_helper_inputs("adb", None, graph, manifest, runner.DEFAULT_DEVICE_DSO_DIR, runner.DEFAULT_DATA_DIR, metadata_state="absent")

    assert verified["metadata"] is None
    assert any(command[-1].startswith(f"run-as {runner.PACKAGE} sh -c ") and "test ! -e" in command[-1] for command in commands)


def test_absent_metadata_state_rejects_existing_metadata(tmp_path: Path, monkeypatch):
    runner = load_mod()
    manifest = tmp_path / "manifest.json"
    digest = "a" * 64
    manifest.write_text(json.dumps({"anchors": [
        {"name": "libil2cpp.so", "sha256": digest, "expected": digest},
        {"name": "global-metadata.dat", "sha256": digest, "expected": digest},
    ]}), encoding="utf-8")
    graph = {"ordered_libraries": [{"name": "libil2cpp.so", "sha256": digest}]}
    monkeypatch.setattr(runner.subprocess, "run", lambda command, **_kwargs: SimpleNamespace(returncode=1, stdout="", stderr="metadata exists") if command[-1].startswith(f"run-as {runner.PACKAGE} sh -c ") and "test ! -e" in command[-1] else SimpleNamespace(returncode=0, stdout=f"{digest} file\n", stderr=""))

    with pytest.raises(RuntimeError, match="metadata must be absent"):
        runner.verify_helper_inputs("adb", None, graph, manifest, runner.DEFAULT_DEVICE_DSO_DIR, runner.DEFAULT_DATA_DIR, metadata_state="absent")


def test_execute_surface_bounds_event_artifact_with_dropped_marker(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    monkeypatch.setattr(runner, "MAX_EVENT_RECORDS", 2, raising=False)
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8}, message_events=[{"event": "A2_IO_READ"}] * 3)

    runner.execute_surface(None, {"ordered_libraries": []}, load=False, set_data_dir=False, init=False, data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb")

    records = [json.loads(line) for line in (next(tmp_path.iterdir()) / "events.jsonl").read_text(encoding="utf-8").splitlines()]
    assert records[-1] == {"event": "A2_EVENTS_TRUNCATED", "dropped": 1, "record_cap": 2}
    assert len(records) == 3

def test_execute_surface_retains_only_final_fifty_hook_events(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    events = [{"event": "A2_IO_READ", "sequence": sequence} for sequence in range(52)]
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8}, message_events=events)

    runner.execute_surface(None, {"ordered_libraries": []}, load=False, set_data_dir=False, init=False, data_dir="/helper/files/meta", domain_name="LogicHarness", evidence_root=tmp_path, adb="adb")

    retained = [json.loads(line)["sequence"] for line in (next(tmp_path.iterdir()) / "hooks-last-50.jsonl").read_text(encoding="utf-8").splitlines()]
    assert retained == list(range(2, 52))


def test_metadata_fingerprint_binds_verified_header_and_table_window(tmp_path: Path):
    runner = load_mod()
    metadata = tmp_path / "global-metadata.dat"
    payload = bytes(range(128))
    metadata.write_bytes(payload)
    digest = runner._sha256(metadata)
    manifest = tmp_path / "manifest.json"
    manifest.write_text(json.dumps({"anchors": [{
        "name": "global-metadata.dat", "path": str(metadata), "size": len(payload), "sha256": digest, "expected": digest,
    }]}), encoding="utf-8")

    assert runner.metadata_fingerprint(manifest) == {
        "metadata_sha256": digest,
        "metadata_size": len(payload),
        "header_hex": payload[:16].hex(),
        "window": {"offset": 40, "length": 64, "hex": payload[40:104].hex()},
    }


def test_execute_surface_arms_a3_before_load_and_sweeps_after_init(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    fingerprint = {
        "metadata_sha256": "a" * 64,
        "metadata_size": 128,
        "header_hex": "464d4e21000000000000000000000000",
        "window": {"offset": 40, "length": 64, "hex": "bb" * 64},
    }
    _install_fake_frida(
        monkeypatch,
        runner,
        calls,
        {"arch": "arm64", "pointer_size": 8},
        message_events=[{"event": "A2_IO_CLOSE", "fd": 147, "result": 0}, {"event": "A3_WATCH_ARMED"}],
    )
    dump_root = tmp_path / "dumps"

    runner.execute_surface(
        None,
        {"ordered_libraries": [], "input_provenance": {"metadata": {"path": "meta", "sha256": "a" * 64}}},
        load=True,
        set_data_dir=True,
        init=True,
        data_dir="/helper/files/meta",
        domain_name="LogicHarness",
        evidence_root=tmp_path,
        adb="adb",
        a3_fingerprint=fingerprint,
        a3_dump_root=dump_root,
    )

    assert calls == ["environment", "armwatch", "loadgraph", "probeexports", "setdatadir", "init", "sweepmemory"]
    run_dir = next(path for path in tmp_path.iterdir() if path.name != "dumps")
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["a3"]["fingerprint"] == fingerprint
    a3_events = [json.loads(line) for line in (next(dump_root.iterdir()) / "a3-events.jsonl").read_text(encoding="utf-8").splitlines()]
    assert [event["event"] for event in a3_events] == ["A2_IO_CLOSE", "A3_WATCH_ARMED"]
    assert (next(dump_root.iterdir()) / "memory-hits.jsonl").read_text(encoding="utf-8") == ""


def test_capture_device_gate_records_selected_physical_device(monkeypatch):
    runner = load_mod()
    serial = "192.168.100.11:39445"
    devices = f"List of devices attached\n{serial} device product:PJE110 model:PJE110 device:OP5CF9L1 transport_id:194\n"
    properties = "\n".join(
        [
            "[ro.product.manufacturer]: [OnePlus]",
            "[ro.vendor.oplus.market.enname]: [OnePlus Ace 3]",
            "[ro.product.model]: [PJE110]",
            "[ro.product.device]: [OP5CF9L1]",
            "[ro.build.version.release]: [16]",
            "[ro.product.cpu.abilist]: [arm64-v8a,armeabi-v7a,armeabi]",
        ]
    )

    def run(command, **_kwargs):
        if command == ["adb", "devices", "-l"]:
            return SimpleNamespace(returncode=0, stdout=devices, stderr="")
        assert command == ["adb", "-s", serial, "shell", "getprop"]
        return SimpleNamespace(returncode=0, stdout=properties, stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)

    capture = runner.capture_device_gate("adb", serial)

    assert capture["serial"] == serial
    assert capture["state"] == "device"
    assert capture["product"] == "PJE110"
    assert capture["model"] == "PJE110"
    assert capture["device"] == "OP5CF9L1"
    assert capture["properties"]["ro.vendor.oplus.market.enname"] == "OnePlus Ace 3"


def test_force_stop_for_fresh_capture_records_empty_post_pid_set(monkeypatch):
    runner = load_mod()
    serial = "SERIAL"
    commands = []

    def run(command, **_kwargs):
        commands.append(command)
        if command[-3:] == ["am", "force-stop", runner.PACKAGE]:
            return SimpleNamespace(returncode=0, stdout="", stderr="")
        assert command[-2:] == ["pidof", runner.PACKAGE]
        return SimpleNamespace(returncode=1, stdout="", stderr="")

    monkeypatch.setattr(runner.subprocess, "run", run)

    proof = runner.force_stop_for_fresh_capture("adb", serial)

    assert commands == [
        ["adb", "-s", serial, "shell", "am", "force-stop", runner.PACKAGE],
        ["adb", "-s", serial, "shell", "pidof", runner.PACKAGE],
    ]
    assert proof["command"] == ["shell", "am", "force-stop", runner.PACKAGE]
    assert proof["returncode"] == 0
    assert proof["post_pids"] == []


def test_execute_surface_persists_device_and_fresh_spawn_provenance(tmp_path: Path, monkeypatch):
    runner = load_mod()
    calls: list[str] = []
    _install_fake_frida(monkeypatch, runner, calls, {"arch": "arm64", "pointer_size": 8, "pid": 4242})
    gate = {"captured_at": "2026-07-17T00:00:00+00:00", "serial": "SERIAL"}
    force_stop = {
        "command": ["shell", "am", "force-stop", runner.PACKAGE],
        "completed_at": "2026-07-17T00:00:01+00:00",
        "post_pids": [],
        "returncode": 0,
    }
    monkeypatch.setattr(runner, "capture_device_gate", lambda _adb, _serial: gate)
    monkeypatch.setattr(runner, "force_stop_for_fresh_capture", lambda _adb, _serial: force_stop)

    runner.execute_surface(
        "SERIAL",
        {"ordered_libraries": []},
        load=False,
        set_data_dir=False,
        init=False,
        data_dir="/helper/files/meta",
        domain_name="LogicHarness",
        evidence_root=tmp_path,
        adb="adb",
        gadget=tmp_path / "gadget.so",
        capture_provenance=True,
    )

    attempt = json.loads((next(tmp_path.iterdir()) / "attempt.json").read_text(encoding="utf-8"))
    assert attempt["device_gate"] == gate
    assert attempt["fresh_capture"]["force_stop"] == force_stop
    assert attempt["fresh_capture"]["spawn"]["mode"] == "gadget"
    assert attempt["fresh_capture"]["spawn"]["pid"] == 4242
    assert attempt["fresh_capture"]["spawn"]["completed_at"]


def _install_fake_frida(monkeypatch, runner, calls, environment, on_rpc=None, message_events=None, detach_on_cleanup=False, frida_version=None):
    class Exports:
        def environment(self):
            calls.append("environment")
            if on_rpc is not None:
                return on_rpc("environment", session)
            return environment
        def bindmetadata(self, plan):
            calls.append("bindmetadata")
            return {"status": "bound"}

        def loadgraph(self, plan):
            calls.append("loadgraph")
            return {"loaded": []}

        def probeexports(self):
            calls.append("probeexports")
            return []

        def setdatadir(self, data_dir):
            calls.append("setdatadir")
            return {"status": "called"}

        def init(self, domain_name):
            calls.append("init")
            return {"status": "returned", "domain_ptr": "domain-pointer"}

        def armwatch(self, plan, fingerprint):
            calls.append("armwatch")
            return {"status": "armed"}

        def sweepmemory(self):
            calls.append("sweepmemory")
            return {"status": "swept"}

    class Script:
        def __init__(self):
            self.handlers = {}
            self.exports_sync = Exports()
            self.message_handler_registered_before_load = False

        def on(self, event, handler):
            self.handlers[event] = handler

        def load(self):
            self.message_handler_registered_before_load = "message" in self.handlers
            for event in ([{"event": "A2_MODULE_MAP", "library": "libil2cpp.so", "address": "module-base"}] if message_events is None else message_events):
                self.handlers["message"]({"type": "send", "payload": event}, None)

        def unload(self):
            pass

    class Session:
        def __init__(self):
            self.script = Script()
            self.handlers = {}

        def create_script(self, source):
            return self.script

        def on(self, event, handler):
            self.handlers[event] = handler

        def detach(self):
            if detach_on_cleanup:
                self.handlers["detached"]("application-requested")

    session = Session()
    spawn_requests: list[tuple[str, str | None]] = []
    attach_requests: list[object] = []
    resume_requests: list[int] = []
    serial_requests: list[tuple[str, int]] = []
    usb_requests: list[int] = []

    def spawn(package, *, gadget=None):
        spawn_requests.append((package, gadget))
        return 4242

    def attach(target):
        attach_requests.append(target)
        return session

    def resume(pid):
        resume_requests.append(pid)

    device = SimpleNamespace(attach=attach, spawn=spawn, resume=resume)

    def get_serial_device(serial, timeout):
        serial_requests.append((serial, timeout))
        return device

    def get_usb_device(timeout):
        usb_requests.append(timeout)
        return device

    fake = SimpleNamespace(
        script=session.script,
        serial_requests=serial_requests,
        usb_requests=usb_requests,
        spawn_requests=spawn_requests,
        attach_requests=attach_requests,
        resume_requests=resume_requests,
    )
    fake_frida = SimpleNamespace(
        get_usb_device=get_usb_device,
        get_device_manager=lambda: SimpleNamespace(get_device=get_serial_device),
        __version__=frida_version,
    )
    monkeypatch.setitem(sys.modules, "frida", fake_frida)
    monkeypatch.setattr(runner.subprocess, "run", lambda *args, **kwargs: SimpleNamespace(returncode=0, stdout="logcat", stderr=""))
    return fake
