from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import shlex
import subprocess
import sys
import time
from collections import deque
from datetime import UTC, datetime
from pathlib import Path
from typing import Any, Sequence
from uuid import uuid4


PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = f"{PACKAGE}/.MainActivity"
ROOT = Path(__file__).resolve().parents[3]
TRACK_B = Path(__file__).resolve().parent
HOOK = TRACK_B / "hooks" / "fetest_lua.js"
NATIVE_OBSERVE_HOOK = TRACK_B / "hooks" / "b2_feproj_native_observe.js"
G1_OBSERVE_HOOK = TRACK_B / "hooks" / "g1_resource_loader_observe.js"
G1_PCALL_HOOK = TRACK_B / "hooks" / "g1_pcall_observe.js"
G1_SPONT_HOOK = TRACK_B / "hooks" / "g1_spontaneous_observe.js"
G2_REG_HOOK = TRACK_B.parent / "track-a" / "hooks" / "g2_registration_observe.js"
G2_REG_EXPECTED = TRACK_B.parent / "track-a" / "g2-registration-expected-881.txt"
G2_CONSUMER_HOOK = TRACK_B.parent / "track-a" / "hooks" / "g2_consumer_observe.mjs"
# Sample registered classes driven in the controlled consumption segment (K1-K5).
# All three are present in g2-registration-expected-881.txt (lines 1/400/881).
G2_CONSUMER_SAMPLES = ["GainDeckAssetObject", "FEInterfaceConfig", "FixTransform"]
G2_REGISTRY_JSON = ROOT / "work" / "crit-handler-enum-20260814" / "registry.json"
DEFAULT_GRAPH = TRACK_B / "b2-load-graph.json"
DEFAULT_MANIFEST = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "input-manifest.json"
DEFAULT_EVIDENCE_ROOT = TRACK_B / "crashes"
DEFAULT_DEVICE_DSO_DIR = f"/data/user/0/{PACKAGE}/files/dso"
DEFAULT_FETEST_PATH = f"/data/user/0/{PACKAGE}/files/fetest/Res/FETest/Logic/BattleLogic.res"
DEFAULT_TESTMAIN_PATH = f"/data/user/0/{PACKAGE}/files/fetest/Res/FETest/TestMain.res"
BATTLE_LOGIC_NAME = "BattleLogic.res"
TESTMAIN_NAME = "TestMain.res"
# Locked TestMain.res (version-stamp carrier) — read-only reference from the
# 2026-08-14 device corpus backup (G1-SPONTANEOUS-PLAN.md §0.2).
TESTMAIN_SOURCE = (
    ROOT
    / "artifacts"
    / "device-backups"
    / "wild-rift-google-play-7.2.0.2460-7246064-20260814-device"
    / "external-data"
    / "files"
    / "Res"
    / "FETest"
    / "TestMain.res"
)
TESTMAIN_SHA256 = "ef953d6f8ea871624a11ed21957f7a3f541a0cd18d9cbcae3b154bd9f14a8dfc"
TESTMAIN_SIZE = 698
MAX_EVENT_RECORDS = 512


def _load_a2_support() -> Any:
    path = ROOT / "work" / "aggressive-logic-bridge-2026-07-13" / "track-a" / "a2_host_runner.py"
    spec = importlib.util.spec_from_file_location("b2_a2_support", path)
    if spec is None or spec.loader is None:
        raise RuntimeError("unable to load verified helper staging support")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


_SUPPORT = _load_a2_support()


def _capture_logcat(adb: str, serial: str | None) -> dict[str, object]:
    return _SUPPORT._capture_logcat(adb, serial)


def _capture_logcat_tolerant(adb: str, serial: str | None) -> dict[str, object]:
    # logcat can contain non-UTF-8 bytes (e.g. binary crash payloads); decode
    # with replacement so evidence is always preserved for the R1 path.
    try:
        result = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "logcat", "-d", "-v", "threadtime"),
            check=False,
            capture_output=True,
            timeout=30,
        )
        return {
            "status": "ok" if result.returncode == 0 else "error",
            "code": result.returncode,
            "stdout": result.stdout.decode("utf-8", errors="replace"),
            "stderr": result.stderr.decode("utf-8", errors="replace") if result.stderr else "",
        }
    except Exception as error:
        return {"status": "error", "code": None, "stdout": "", "stderr": str(error)}


def _g2_registry_entries() -> list[dict[str, object]]:
    """Load the 792 locked event-registry names (name + len) for the B-1
    controlled R1+R3 verification."""
    data = json.loads(G2_REGISTRY_JSON.read_text(encoding="utf-8"))
    return [{"name": e["name"], "len": int(e["len"])} for e in data["entries"]]


def _run_directory(evidence_root: Path, prefix: str | None = None) -> Path:
    run_id = datetime.now(UTC).strftime("%Y%m%dT%H%M%S.%fZ") + f"-{uuid4().hex[:8]}"
    if prefix is not None:
        run_id = datetime.now(UTC).strftime("%Y%m%dT%H%M%S.%fZ") + f"-{prefix}-{uuid4().hex[:6]}"
    directory = evidence_root / run_id
    directory.mkdir(parents=True, exist_ok=False)
    return directory


def _write_jsonl(path: Path, record: object) -> None:
    with path.open("a", encoding="utf-8") as output:
        output.write(json.dumps(record, sort_keys=True, separators=(",", ":")) + "\n")


def _expected_sha256(value: object, name: str) -> str:
    if not isinstance(value, str) or len(value) != 64 or any(character not in "0123456789abcdef" for character in value):
        raise ValueError(f"invalid sha256 for {name}")
    return value


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()


def require_arm64_process(environment: object) -> dict[str, object]:
    if not isinstance(environment, dict):
        raise RuntimeError("B2 surface execution requires helper process ABI metadata")
    arch = environment.get("arch")
    pointer_size = environment.get("pointer_size")
    if arch != "arm64" or pointer_size != 8:
        raise RuntimeError(f"B2 surface execution requires arm64 helper pointers; found arch={arch} pointer_size={pointer_size}")
    result: dict[str, object] = {"arch": arch, "pointer_size": pointer_size}
    if "pid" in environment:
        result["pid"] = environment["pid"]
    return result


def _manifest_anchors(manifest_path: Path) -> dict[str, dict[str, object]]:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    anchors = manifest.get("anchors")
    if not isinstance(anchors, list):
        raise ValueError("immutable manifest has no anchors")
    result = {anchor.get("name"): anchor for anchor in anchors if isinstance(anchor, dict) and isinstance(anchor.get("name"), str)}
    if "libFEProj.so" not in result or BATTLE_LOGIC_NAME not in result:
        raise ValueError("immutable manifest is missing B2 inputs")
    return result


def _manifest_hash(anchor: dict[str, object], name: str) -> str:
    expected = _expected_sha256(anchor.get("expected"), name)
    if _expected_sha256(anchor.get("sha256"), name) != expected:
        raise ValueError(f"immutable manifest hash mismatch for {name}")
    return expected


def battle_logic_fingerprint(manifest_path: Path) -> dict[str, object]:
    anchor = _manifest_anchors(manifest_path)[BATTLE_LOGIC_NAME]
    expected = _manifest_hash(anchor, BATTLE_LOGIC_NAME)
    source_value = anchor.get("path")
    if not isinstance(source_value, str):
        raise ValueError("immutable manifest has no BattleLogic.res source path")
    source = Path(source_value)
    if not source.is_file():
        raise FileNotFoundError(source)
    size = source.stat().st_size
    if anchor.get("size") != size or size <= 0 or size > 1024 * 1024:
        raise ValueError("immutable manifest BattleLogic.res size mismatch")
    if _sha256(source) != expected:
        raise ValueError("BattleLogic.res source hash mismatch")
    with source.open("rb") as input_file:
        header = input_file.read(16)
    if len(header) != 16:
        raise ValueError("BattleLogic.res is shorter than its B2 header")
    return {
        "name": BATTLE_LOGIC_NAME,
        "source_path": str(source),
        "sha256": expected,
        "size": size,
        "header_hex": header.hex(),
    }


def validate_b2_graph(graph: dict[str, object]) -> list[dict[str, object]]:
    if graph.get("target_library") != "libFEProj.so":
        raise ValueError("B2 graph target must be libFEProj.so")
    entries = graph.get("ordered_libraries")
    if not isinstance(entries, list) or len(entries) != 1:
        raise ValueError("B2 requires a single libFEProj ordered library")
    entry = entries[0]
    if not isinstance(entry, dict) or entry.get("name") != "libFEProj.so":
        raise ValueError("B2 requires libFEProj.so as its single load target")
    if not isinstance(entry.get("source_path"), str):
        raise ValueError("B2 graph has no libFEProj source path")
    _expected_sha256(entry.get("sha256"), "libFEProj.so")
    return [entry]


def build_b2_load_plan(graph: dict[str, object], verified: dict[str, object]) -> dict[str, object]:
    entries = validate_b2_graph(graph)
    libraries = verified.get("libraries")
    battle_logic = verified.get("battle_logic")
    if not isinstance(libraries, list) or len(libraries) != 1 or not isinstance(libraries[0], dict):
        raise ValueError("B2 verification requires one libFEProj library")
    library = libraries[0]
    if library.get("name") != "libFEProj.so":
        raise ValueError("B2 verified library is not libFEProj.so")
    graph_hash = _expected_sha256(entries[0].get("sha256"), "libFEProj.so")
    verified_hash = _expected_sha256(library.get("sha256"), "libFEProj.so")
    if graph_hash != verified_hash or not isinstance(library.get("path"), str):
        raise ValueError("B2 verified library is not graph-bound")
    if not isinstance(battle_logic, dict):
        raise ValueError("B2 verification requires BattleLogic.res")
    if battle_logic.get("name") != BATTLE_LOGIC_NAME or not isinstance(battle_logic.get("path"), str):
        raise ValueError("B2 BattleLogic input is invalid")
    _expected_sha256(battle_logic.get("sha256"), BATTLE_LOGIC_NAME)
    if not isinstance(battle_logic.get("size"), int) or battle_logic["size"] <= 0:
        raise ValueError("B2 BattleLogic size is invalid")
    if not isinstance(battle_logic.get("header_hex"), str) or len(battle_logic["header_hex"]) != 32:
        raise ValueError("B2 BattleLogic header is invalid")
    return {
        "ordered_libraries": [{"name": "libFEProj.so", "path": library["path"], "sha256": verified_hash}],
        "input_provenance": {"battle_logic": battle_logic},
    }


def _helper_sha256(adb: str, serial: str | None, absolute_path: str) -> str:
    relative = absolute_path.removeprefix(f"/data/user/0/{PACKAGE}/")
    return _SUPPORT._helper_sha256(adb, serial, relative)


def stage_battle_logic(adb: str, serial: str | None, fingerprint: dict[str, object], device_path: str) -> None:
    source = Path(str(fingerprint["source_path"]))
    _SUPPORT._relay_to_helper(
        adb,
        serial,
        source,
        name=BATTLE_LOGIC_NAME,
        final=device_path.removeprefix(f"/data/user/0/{PACKAGE}/"),
        expected_sha256=_expected_sha256(fingerprint["sha256"], BATTLE_LOGIC_NAME),
    )


def stage_test_main(adb: str, serial: str | None, device_path: str) -> None:
    if not TESTMAIN_SOURCE.is_file():
        raise FileNotFoundError(TESTMAIN_SOURCE)
    if _sha256(TESTMAIN_SOURCE) != TESTMAIN_SHA256:
        raise ValueError("TestMain.res source hash mismatch")
    if TESTMAIN_SOURCE.stat().st_size != TESTMAIN_SIZE:
        raise ValueError("TestMain.res source size mismatch")
    _SUPPORT._relay_to_helper(
        adb,
        serial,
        TESTMAIN_SOURCE,
        name=TESTMAIN_NAME,
        final=device_path.removeprefix(f"/data/user/0/{PACKAGE}/"),
        expected_sha256=TESTMAIN_SHA256,
    )


def verify_b2_inputs(
    adb: str,
    serial: str | None,
    graph: dict[str, object],
    manifest_path: Path,
    device_dso_dir: str,
    device_fetest_path: str,
) -> dict[str, object]:
    entries = validate_b2_graph(graph)
    anchors = _manifest_anchors(manifest_path)
    lib_anchor = anchors["libFEProj.so"]
    graph_hash = _expected_sha256(entries[0].get("sha256"), "libFEProj.so")
    expected_lib_hash = _manifest_hash(lib_anchor, "libFEProj.so")
    if graph_hash != expected_lib_hash:
        raise ValueError("B2 graph libFEProj hash is not immutable-manifest bound")
    library_path = f"{device_dso_dir}/libFEProj.so"
    if _helper_sha256(adb, serial, library_path) != expected_lib_hash:
        raise RuntimeError("helper libFEProj hash mismatch")

    fingerprint = battle_logic_fingerprint(manifest_path)
    battle_hash = _expected_sha256(fingerprint["sha256"], BATTLE_LOGIC_NAME)
    if _helper_sha256(adb, serial, device_fetest_path) != battle_hash:
        raise RuntimeError("helper BattleLogic.res hash mismatch")
    return {
        "libraries": [{"name": "libFEProj.so", "path": library_path, "sha256": expected_lib_hash}],
        "battle_logic": {
            "name": BATTLE_LOGIC_NAME,
            "path": device_fetest_path,
            "sha256": battle_hash,
            "size": fingerprint["size"],
            "header_hex": fingerprint["header_hex"],
        },
    }


def _serialize_crash(crash: object | None) -> dict[str, object] | None:
    if crash is None:
        return None
    if isinstance(crash, dict):
        return dict(crash)
    return {"summary": str(crash)}


def execute_b2_surface(
    serial: str | None,
    load_plan: dict[str, object],
    *,
    evidence_root: Path = DEFAULT_EVIDENCE_ROOT,
    adb: str = "adb",
    gadget: Path | None = None,
    logcat_clear: dict[str, object] | None = None,
    remote_gadget: str | None = None,
    attach_pid: int | None = None,
) -> Path:
    import frida

    run_dir = _run_directory(evidence_root)
    events_path = run_dir / "events.jsonl"
    rpc_path = run_dir / "rpc-results.jsonl"
    (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    library_hashes = {
        entry.get("name"): entry.get("sha256")
        for entry in load_plan.get("ordered_libraries", [])
        if isinstance(entry, dict)
    }
    last_events: deque[dict[str, object]] = deque(maxlen=50)
    persisted_events = 0
    dropped_events = 0
    detached: dict[str, object] = {"status": "normal"}
    cleanup_requested = False
    rpc_order: list[str] = []
    attempt: dict[str, object] = {
        "package": PACKAGE,
        "operation": "feproj-lua-surface",
        "started_at": datetime.now(UTC).isoformat(),
        "process_abi": None,
        "frida_version": getattr(frida, "__version__", None),
        "load_plan_path": "load-plan.json",
        "input": load_plan.get("input_provenance", {}).get("battle_logic"),
        "logcat_clear": logcat_clear,
        "spawn": None,
        "attach": None,
        "rpc_order": rpc_order,
    }

    def on_message(message: object, data: object) -> None:
        nonlocal persisted_events, dropped_events
        if isinstance(message, dict) and message.get("type") == "send" and isinstance(message.get("payload"), dict):
            event: dict[str, object] = dict(message["payload"])
        else:
            event = {"event": "B2_FRIDA_MESSAGE", "message": str(message)}
        if event.get("event") == "B2_MODULE_LOAD" and event.get("library") in library_hashes:
            event["sha256"] = library_hashes[event["library"]]
        event["received_at"] = datetime.now(UTC).isoformat()
        last_events.append(event)
        if persisted_events < MAX_EVENT_RECORDS:
            _write_jsonl(events_path, event)
            persisted_events += 1
        else:
            dropped_events += 1

    def on_detached(reason: object, crash: object | None = None) -> None:
        if cleanup_requested and str(reason) == "application-requested":
            return
        detached.update({"status": "detached", "reason": str(reason), "crash": _serialize_crash(crash)})

    session = None
    script = None
    error: Exception | None = None
    try:
        if remote_gadget is not None:
            if attach_pid is None:
                raise RuntimeError("--remote-gadget requires --attach-pid")
            if gadget is not None:
                raise RuntimeError("--remote-gadget cannot be combined with --gadget")
            device = frida.get_device_manager().add_remote_device(remote_gadget)
        elif serial:
            device = frida.get_device_manager().get_device(serial, timeout=5)
        else:
            device = frida.get_usb_device(timeout=5)
        spawned_pid = None
        if attach_pid is not None:
            if gadget is not None:
                raise RuntimeError("--attach-pid cannot be combined with --gadget")
            attempt["attach"] = {
                "mode": "embedded-gadget" if remote_gadget is not None else "pid",
                "pid": attach_pid,
                "remote": remote_gadget,
            }
            session = device.attach(attach_pid)
        else:
            spawned_pid = device.spawn(PACKAGE, gadget=str(gadget))
            attempt["spawn"] = {"mode": "gadget", "gadget_path": str(gadget), "pid": spawned_pid}
            session = device.attach(spawned_pid)
        if hasattr(session, "on"):
            session.on("detached", on_detached)
        script = session.create_script(HOOK.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        if spawned_pid is not None:
            device.resume(spawned_pid)
        exports = script.exports_sync

        def call_rpc(name: str, *args: object) -> object:
            rpc_order.append(name)
            result = getattr(exports, name)(*args)
            _write_jsonl(rpc_path, {"rpc": name, "result": result})
            return result

        attempt["process_abi"] = require_arm64_process(call_rpc("environment"))
        call_rpc("loadgraph", load_plan)
        call_rpc("probeexports")
        call_rpc("runfetest", load_plan)
    except Exception as caught:
        error = caught
        if detached.get("status") == "normal":
            detached["status"] = "error"
        detached["error"] = f"{type(caught).__name__}: {caught}"
        raise
    finally:
        cleanup_requested = True
        if script is not None:
            try:
                script.unload()
            except Exception as unload_error:
                detached.setdefault("unload_error", str(unload_error))
        if session is not None:
            try:
                session.detach()
            except Exception as detach_error:
                detached.setdefault("detach_error", str(detach_error))
        if dropped_events:
            _write_jsonl(events_path, {"event": "B2_EVENTS_TRUNCATED", "dropped": dropped_events, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-50.jsonl").write_text(
            "".join(json.dumps(event, sort_keys=True, separators=(",", ":")) + "\n" for event in last_events),
            encoding="utf-8",
        )
        logcat = _capture_logcat(adb, serial)
        (run_dir / "logcat.txt").write_text(str(logcat.get("stdout", "")), encoding="utf-8")
        attempt["logcat_dump"] = {key: value for key, value in logcat.items() if key != "stdout"}
        attempt["fetest_touched"] = any(str(event.get("event", "")).startswith("FETEST_") for event in last_events)
        attempt["finished_at"] = datetime.now(UTC).isoformat()
        attempt["fault"] = detached
        attempt["exception"] = None if error is None else f"{type(error).__name__}: {error}"
        (run_dir / "fault.txt").write_text(json.dumps(detached, sort_keys=True) + "\n", encoding="utf-8")
        (run_dir / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    return run_dir


def execute_b2_native_load_surface(
    serial: str | None,
    load_plan: dict[str, object],
    *,
    evidence_root: Path = DEFAULT_EVIDENCE_ROOT,
    adb: str = "adb",
    remote_gadget: str | None = None,
    attach_pid: int | None = None,
    action: str = "loadfeproj",
    survive_seconds: int = 60,
    hook_path: Path | None = None,
    post_rpc: str | None = "fetesttouch",
    post_rpc_args: Sequence[object] | None = None,
    operation: str = "feproj-native-observe",
    run_prefix: str | None = None,
) -> Path:
    """B2 R1 native-observe surface (and G1 resource→loader observe surface).

    Unlike execute_b2_surface (which drives Module.load from the hook), this
    path lets the helper's Java code dlopen libFEProj.so via System.load on an
    ART thread — the route proven safe by E0/E2.  The hook only observes:
    it waits for the module to appear, then attaches the Lua-loader/fetest
    observation surface and reports events.  Loading stays on the app side.
    """
    import frida

    hook = hook_path if hook_path is not None else NATIVE_OBSERVE_HOOK
    run_dir = _run_directory(evidence_root, prefix=run_prefix)
    events_path = run_dir / "events.jsonl"
    rpc_path = run_dir / "rpc-results.jsonl"
    (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    library_hashes = {
        entry.get("name"): entry.get("sha256")
        for entry in load_plan.get("ordered_libraries", [])
        if isinstance(entry, dict)
    }
    battle_logic = load_plan.get("input_provenance", {}).get("battle_logic")
    battle_logic_path = battle_logic.get("path") if isinstance(battle_logic, dict) else None
    last_events: deque[dict[str, object]] = deque(maxlen=50)
    persisted_events = 0
    dropped_events = 0
    detached: dict[str, object] = {"status": "normal"}
    cleanup_requested = False
    rpc_order: list[str] = []
    attempt: dict[str, object] = {
        "package": PACKAGE,
        "operation": operation,
        "mode": "java-system-load",
        "action": action,
        "started_at": datetime.now(UTC).isoformat(),
        "process_abi": None,
        "frida_version": getattr(frida, "__version__", None),
        "load_plan_path": "load-plan.json",
        "input": battle_logic,
        "spawn": None,
        "attach": None,
        "rpc_order": rpc_order,
    }

    def on_message(message: object, data: object) -> None:
        nonlocal persisted_events, dropped_events
        if isinstance(message, dict) and message.get("type") == "send" and isinstance(message.get("payload"), dict):
            event: dict[str, object] = dict(message["payload"])
        else:
            event = {"event": "B2_FRIDA_MESSAGE", "message": str(message)}
        if event.get("event") == "B2_MODULE_LOAD" and event.get("library") in library_hashes:
            event["sha256"] = library_hashes[event["library"]]
        event["received_at"] = datetime.now(UTC).isoformat()
        last_events.append(event)
        if persisted_events < MAX_EVENT_RECORDS:
            _write_jsonl(events_path, event)
            persisted_events += 1
        else:
            dropped_events += 1

    def on_detached(reason: object, crash: object | None = None) -> None:
        if cleanup_requested and str(reason) == "application-requested":
            return
        detached.update({"status": "detached", "reason": str(reason), "crash": _serialize_crash(crash)})

    session = None
    script = None
    error: Exception | None = None
    load_triggered_at: str | None = None
    try:
        if remote_gadget is not None:
            if attach_pid is None:
                raise RuntimeError("--remote-gadget requires --attach-pid")
            device = frida.get_device_manager().add_remote_device(remote_gadget)
        elif serial:
            device = frida.get_device_manager().get_device(serial, timeout=5)
        else:
            device = frida.get_usb_device(timeout=5)
        if attach_pid is None:
            raise RuntimeError("native-load-action requires --attach-pid on an already-running embedded Gadget")
        attempt["attach"] = {"mode": "embedded-gadget", "pid": attach_pid, "remote": remote_gadget}
        session = device.attach(attach_pid)
        if hasattr(session, "on"):
            session.on("detached", on_detached)
        script = session.create_script(hook.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        exports = script.exports_sync

        def call_rpc(name: str, *args: object) -> object:
            rpc_order.append(name)
            result = getattr(exports, name)(*args)
            _write_jsonl(rpc_path, {"rpc": name, "result": result})
            return result

        attempt["process_abi"] = require_arm64_process(call_rpc("environment"))
        if battle_logic_path is not None:
            call_rpc("setbattlelogicpath", battle_logic_path)

        # Trigger the Java side to System.load libFEProj.so via onNewIntent.
        triggered = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "am", "start", "-n", COMPONENT, "--es", "action", action),
            check=True,
            text=True,
            capture_output=True,
            timeout=30,
        )
        attempt["load_trigger"] = {"command": ["shell", "am", "start", "-n", COMPONENT, "--es", "action", action], "stdout": triggered.stdout.strip()}
        load_triggered_at = datetime.now(UTC).isoformat()

        loaded = call_rpc("waitfeprojloaded", 60000)
        attempt["loaded"] = loaded
        call_rpc("probeluaexports")
        post_result = call_rpc(post_rpc, *(post_rpc_args or [])) if post_rpc is not None else None

        # Observe process survival for the required window.
        survive_from = time.monotonic()
        while time.monotonic() - survive_from < survive_seconds:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)
        proc = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "pidof", PACKAGE),
            check=False,
            text=True,
            capture_output=True,
            timeout=30,
        )
        pids = proc.stdout.split()
        attempt["survival"] = {
            "requested_seconds": survive_seconds,
            "observed_seconds": round(time.monotonic() - survive_from, 3),
            "post_pids": pids,
            "alive": str(attach_pid) in pids,
            "load_triggered_at": load_triggered_at,
        }
        attempt["fetest_touch"] = {
            "rpc": post_result,
            "observed": any(str(event.get("event", "")).startswith("FETEST_") for event in last_events),
        }
    except Exception as caught:
        error = caught
        if detached.get("status") == "normal":
            detached["status"] = "error"
        detached["error"] = f"{type(caught).__name__}: {caught}"
        raise
    finally:
        cleanup_requested = True
        if script is not None:
            try:
                script.unload()
            except Exception as unload_error:
                detached.setdefault("unload_error", str(unload_error))
        if session is not None:
            try:
                session.detach()
            except Exception as detach_error:
                detached.setdefault("detach_error", str(detach_error))
        if dropped_events:
            _write_jsonl(events_path, {"event": "B2_EVENTS_TRUNCATED", "dropped": dropped_events, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-50.jsonl").write_text(
            "".join(json.dumps(event, sort_keys=True, separators=(",", ":")) + "\n" for event in last_events),
            encoding="utf-8",
        )
        logcat = _capture_logcat_tolerant(adb, serial)
        (run_dir / "logcat.txt").write_text(str(logcat.get("stdout", "")), encoding="utf-8")
        attempt["logcat_dump"] = {key: value for key, value in logcat.items() if key != "stdout"}
        attempt["finished_at"] = datetime.now(UTC).isoformat()
        attempt["fault"] = detached
        attempt["exception"] = None if error is None else f"{type(error).__name__}: {error}"
        (run_dir / "fault.txt").write_text(json.dumps(detached, sort_keys=True) + "\n", encoding="utf-8")
        (run_dir / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    return run_dir


def execute_g2_consumer_surface(
    serial: str | None,
    load_plan: dict[str, object],
    *,
    evidence_root: Path = DEFAULT_EVIDENCE_ROOT,
    adb: str = "adb",
    remote_gadget: str | None = None,
    attach_pid: int | None = None,
    action: str = "loadfeproj",
    survive_seconds: int = 60,
    names: Sequence[str] | None = None,
    sample_names: Sequence[str] | None = None,
    no_drive_ms: int = 60000,
) -> Path:
    """G2 consumer observe surface (plan 2026-08-17-g2-consumer-observe.md §3.2).

    Java System.loads libFEProj.so (R1 path); the hook observes the consumer
    anchors (C1 __index / C2 __newindex / C3 registerClass / C4 beginClass /
    C5 dispatcher / C7 metadata getter) plus the exported Lua ABI (K3 _G
    access).  The host then drives the plan sequence in ONE fresh Lua state:
      runconsumerfull(names, sampleNames)  -> registration (881) + controlled
                                               consumption (K1-K5)
      observenodrive(no_drive_ms)           -> K6 no-drive window
      finalcounts()                         -> aggregated counters
    """
    import frida

    hook = G2_CONSUMER_HOOK
    run_dir = _run_directory(evidence_root, prefix="g2cons")
    events_path = run_dir / "events.jsonl"
    rpc_path = run_dir / "rpc-results.jsonl"
    (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    library_hashes = {
        entry.get("name"): entry.get("sha256")
        for entry in load_plan.get("ordered_libraries", [])
        if isinstance(entry, dict)
    }
    battle_logic = load_plan.get("input_provenance", {}).get("battle_logic")
    battle_logic_path = battle_logic.get("path") if isinstance(battle_logic, dict) else None
    last_events: deque[dict[str, object]] = deque(maxlen=50)
    persisted_events = 0
    dropped_events = 0
    detached: dict[str, object] = {"status": "normal"}
    cleanup_requested = False
    rpc_order: list[str] = []
    attempt: dict[str, object] = {
        "package": PACKAGE,
        "operation": "g2-consumer-observe",
        "mode": "java-system-load",
        "action": action,
        "started_at": datetime.now(UTC).isoformat(),
        "process_abi": None,
        "frida_version": getattr(frida, "__version__", None),
        "load_plan_path": "load-plan.json",
        "input": battle_logic,
        "spawn": None,
        "attach": None,
        "rpc_order": rpc_order,
        "consumer": {
            "names_count": len(names) if names is not None else 0,
            "sample_names": list(sample_names) if sample_names is not None else [],
            "no_drive_ms": no_drive_ms,
        },
    }

    def on_message(message: object, data: object) -> None:
        nonlocal persisted_events, dropped_events
        if isinstance(message, dict) and message.get("type") == "send" and isinstance(message.get("payload"), dict):
            event: dict[str, object] = dict(message["payload"])
        else:
            event = {"event": "B2_FRIDA_MESSAGE", "message": str(message)}
        if event.get("event") == "B2_MODULE_LOAD" and event.get("library") in library_hashes:
            event["sha256"] = library_hashes[event["library"]]
        event["received_at"] = datetime.now(UTC).isoformat()
        last_events.append(event)
        if persisted_events < MAX_EVENT_RECORDS:
            _write_jsonl(events_path, event)
            persisted_events += 1
        else:
            dropped_events += 1

    def on_detached(reason: object, crash: object | None = None) -> None:
        if cleanup_requested and str(reason) == "application-requested":
            return
        detached.update({"status": "detached", "reason": str(reason), "crash": _serialize_crash(crash)})

    session = None
    script = None
    error: Exception | None = None
    load_triggered_at: str | None = None
    try:
        if remote_gadget is not None:
            if attach_pid is None:
                raise RuntimeError("--remote-gadget requires --attach-pid")
            device = frida.get_device_manager().add_remote_device(remote_gadget)
        elif serial:
            device = frida.get_device_manager().get_device(serial, timeout=5)
        else:
            device = frida.get_usb_device(timeout=5)
        if attach_pid is None:
            raise RuntimeError("g2-consumer-observe requires --attach-pid on an already-running embedded Gadget")
        attempt["attach"] = {"mode": "embedded-gadget", "pid": attach_pid, "remote": remote_gadget}
        session = device.attach(attach_pid)
        if hasattr(session, "on"):
            session.on("detached", on_detached)
        script = session.create_script(hook.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        exports = script.exports_sync

        def call_rpc(name: str, *args: object) -> object:
            rpc_order.append(name)
            result = getattr(exports, name)(*args)
            _write_jsonl(rpc_path, {"rpc": name, "result": result})
            return result

        attempt["process_abi"] = require_arm64_process(call_rpc("environment"))
        if battle_logic_path is not None:
            call_rpc("setbattlelogicpath", battle_logic_path)
        if names is not None:
            call_rpc("setexpectednames", list(names))

        # Trigger the Java side to System.load libFEProj.so via onNewIntent.
        triggered = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "am", "start", "-n", COMPONENT, "--es", "action", action),
            check=True,
            text=True,
            capture_output=True,
            timeout=30,
        )
        attempt["load_trigger"] = {"command": ["shell", "am", "start", "-n", COMPONENT, "--es", "action", action], "stdout": triggered.stdout.strip()}
        load_triggered_at = datetime.now(UTC).isoformat()

        loaded = call_rpc("waitfeprojloaded", 60000)
        attempt["loaded"] = loaded
        call_rpc("probeluaexports")

        # (a) registration  + (b)  in ONE fresh Lua state.
        consumer = call_rpc("runconsumerfull", list(names or []), list(sample_names or []))
        attempt["consumer_result"] = consumer

        # (c)  (K6): observe whether consumer activity occurs
        # spontaneously outside the controlled window.
        no_drive = call_rpc("observenodrive", no_drive_ms)
        attempt["no_drive"] = no_drive

        attempt["final_counts"] = call_rpc("finalcounts")

        # Observe process survival for the required window.
        survive_from = time.monotonic()
        while time.monotonic() - survive_from < survive_seconds:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)
        proc = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "pidof", PACKAGE),
            check=False,
            text=True,
            capture_output=True,
            timeout=30,
        )
        pids = proc.stdout.split()
        attempt["survival"] = {
            "requested_seconds": survive_seconds,
            "observed_seconds": round(time.monotonic() - survive_from, 3),
            "post_pids": pids,
            "alive": str(attach_pid) in pids,
            "load_triggered_at": load_triggered_at,
        }
    except Exception as caught:
        error = caught
        if detached.get("status") == "normal":
            detached["status"] = "error"
        detached["error"] = f"{type(caught).__name__}: {caught}"
        raise
    finally:
        cleanup_requested = True
        if script is not None:
            try:
                script.unload()
            except Exception as unload_error:
                detached.setdefault("unload_error", str(unload_error))
        if session is not None:
            try:
                session.detach()
            except Exception as detach_error:
                detached.setdefault("detach_error", str(detach_error))
        if dropped_events:
            _write_jsonl(events_path, {"event": "B2_EVENTS_TRUNCATED", "dropped": dropped_events, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-50.jsonl").write_text(
            "".join(json.dumps(event, sort_keys=True, separators=(",", ":")) + "\n" for event in last_events),
            encoding="utf-8",
        )
        logcat = _capture_logcat_tolerant(adb, serial)
        (run_dir / "logcat.txt").write_text(str(logcat.get("stdout", "")), encoding="utf-8")
        attempt["logcat_dump"] = {key: value for key, value in logcat.items() if key != "stdout"}
        attempt["finished_at"] = datetime.now(UTC).isoformat()
        attempt["fault"] = detached
        attempt["exception"] = None if error is None else f"{type(error).__name__}: {error}"
        (run_dir / "fault.txt").write_text(json.dumps(detached, sort_keys=True) + "\n", encoding="utf-8")
        (run_dir / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    return run_dir


def execute_g1_spontaneous_surface(
    serial: str | None,
    load_plan: dict[str, object],
    *,
    evidence_root: Path = DEFAULT_EVIDENCE_ROOT,
    adb: str = "adb",
    remote_gadget: str | None = None,
    attach_pid: int | None = None,
    action: str = "loadfeproj",
    survive_seconds: int = 60,
    test_main_path: str = DEFAULT_TESTMAIN_PATH,
) -> Path:
    """G1 spontaneous loader-edge surface (G1-SPONTANEOUS-PLAN.md).

    Java System.loads libFEProj.so (R1 path); the hook observes open/read with
    caller attribution, the Lua loader/execution exports, and the internal
    validator/registrar/check anchors.  The host then drives the plan sequence:
      prereadregistry (U3/U4) -> plan A (A-1 or A-2) -> observe 60s ->
      plan B (only if A-1 mirrored and state non-null) -> U2 string scan.
    """
    import frida

    hook = G1_SPONT_HOOK
    run_dir = _run_directory(evidence_root, prefix="g1spont")
    events_path = run_dir / "events.jsonl"
    rpc_path = run_dir / "rpc-results.jsonl"
    (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    library_hashes = {
        entry.get("name"): entry.get("sha256")
        for entry in load_plan.get("ordered_libraries", [])
        if isinstance(entry, dict)
    }
    battle_logic = load_plan.get("input_provenance", {}).get("battle_logic")
    battle_logic_path = battle_logic.get("path") if isinstance(battle_logic, dict) else None
    last_events: deque[dict[str, object]] = deque(maxlen=50)
    persisted_events = 0
    dropped_events = 0
    detached: dict[str, object] = {"status": "normal"}
    cleanup_requested = False
    rpc_order: list[str] = []
    attempt: dict[str, object] = {
        "package": PACKAGE,
        "operation": "g1-spontaneous-observe",
        "mode": "java-system-load",
        "action": action,
        "started_at": datetime.now(UTC).isoformat(),
        "process_abi": None,
        "frida_version": getattr(frida, "__version__", None),
        "load_plan_path": "load-plan.json",
        "input": battle_logic,
        "test_main": {"path": test_main_path, "sha256": TESTMAIN_SHA256, "size": TESTMAIN_SIZE},
        "spawn": None,
        "attach": None,
        "rpc_order": rpc_order,
    }

    def on_message(message: object, data: object) -> None:
        nonlocal persisted_events, dropped_events
        if isinstance(message, dict) and message.get("type") == "send" and isinstance(message.get("payload"), dict):
            event: dict[str, object] = dict(message["payload"])
        else:
            event = {"event": "B2_FRIDA_MESSAGE", "message": str(message)}
        if event.get("event") == "B2_MODULE_LOAD" and event.get("library") in library_hashes:
            event["sha256"] = library_hashes[event["library"]]
        event["received_at"] = datetime.now(UTC).isoformat()
        last_events.append(event)
        if persisted_events < MAX_EVENT_RECORDS:
            _write_jsonl(events_path, event)
            persisted_events += 1
        else:
            dropped_events += 1

    def on_detached(reason: object, crash: object | None = None) -> None:
        if cleanup_requested and str(reason) == "application-requested":
            return
        detached.update({"status": "detached", "reason": str(reason), "crash": _serialize_crash(crash)})

    session = None
    script = None
    error: Exception | None = None
    load_triggered_at: str | None = None
    try:
        if remote_gadget is not None:
            if attach_pid is None:
                raise RuntimeError("--remote-gadget requires --attach-pid")
            device = frida.get_device_manager().add_remote_device(remote_gadget)
        elif serial:
            device = frida.get_device_manager().get_device(serial, timeout=5)
        else:
            device = frida.get_usb_device(timeout=5)
        if attach_pid is None:
            raise RuntimeError("g1-spontaneous-observe requires --attach-pid on an already-running embedded Gadget")
        attempt["attach"] = {"mode": "embedded-gadget", "pid": attach_pid, "remote": remote_gadget}
        session = device.attach(attach_pid)
        if hasattr(session, "on"):
            session.on("detached", on_detached)
        script = session.create_script(hook.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        exports = script.exports_sync

        def call_rpc(name: str, *args: object) -> object:
            rpc_order.append(name)
            result = getattr(exports, name)(*args)
            _write_jsonl(rpc_path, {"rpc": name, "result": result})
            return result

        attempt["process_abi"] = require_arm64_process(call_rpc("environment"))
        if battle_logic_path is not None:
            call_rpc("setbattlelogicpath", battle_logic_path)
        call_rpc("settestmainpath", test_main_path)

        # Trigger the Java side to System.load libFEProj.so via onNewIntent.
        triggered = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "am", "start", "-n", COMPONENT, "--es", "action", action),
            check=True,
            text=True,
            capture_output=True,
            timeout=30,
        )
        attempt["load_trigger"] = {"command": ["shell", "am", "start", "-n", COMPONENT, "--es", "action", action], "stdout": triggered.stdout.strip()}
        load_triggered_at = datetime.now(UTC).isoformat()

        loaded = call_rpc("waitfeprojloaded", 60000)
        attempt["loaded"] = loaded
        call_rpc("probeluaexports")

        # U3/U4: read-only registry snapshot before any trigger.
        registry = call_rpc("prereadregistry")
        attempt["registry_preread"] = registry

        # Plan A decision (G1-SPONTANEOUS-PLAN.md §4.4):
        #   g_buf@0x726D0D0 non-null (stub) or ctx_cache@0x726DEA0 null -> A-2 only.
        g_buf = registry.get("g_buf_0x726D0D0")
        ctx_cache = registry.get("ctx_cache_0x726DEA0")
        plan_a = {}
        if g_buf is not None or ctx_cache is None:
            plan_a = {"plan": "A2", "result": call_rpc("plana2")}
        else:
            plan_a = {"plan": "A1", "result": call_rpc("plana1")}
        attempt["plan_a"] = plan_a

        # Observe 60s for spontaneous open/read -> lua_load.
        survive_from = time.monotonic()
        while time.monotonic() - survive_from < survive_seconds:
            if detached.get("status") != "normal":
                break
            time.sleep(1.0)

        # Plan B only if A-1 mirrored (g_buf non-null) and state non-null.
        plan_b = None
        if plan_a.get("plan") == "A1":
            registry_after = call_rpc("prereadregistry")
            attempt["registry_after_a"] = registry_after
            state = registry_after.get("state_0x726D0E0")
            g_buf_after = registry_after.get("g_buf_0x726D0D0")
            if state is not None and g_buf_after is not None:
                plan_b = {"plan": "B1", "result": call_rpc("planb1")}
            else:
                plan_b = {"plan": "B1", "skipped": True, "reason": "state or g_buf null after A1", "state": state, "g_buf": g_buf_after}
        attempt["plan_b"] = plan_b

        # U2 bisect: locate the "luaL_loadbuffer %d--%s" string.
        attempt["u2_scan"] = call_rpc("scanloadbufferstr")

        proc = subprocess.run(
            _SUPPORT.adb_command(adb, serial, "shell", "pidof", PACKAGE),
            check=False,
            text=True,
            capture_output=True,
            timeout=30,
        )
        pids = proc.stdout.split()
        attempt["survival"] = {
            "requested_seconds": survive_seconds,
            "observed_seconds": round(time.monotonic() - survive_from, 3),
            "post_pids": pids,
            "alive": str(attach_pid) in pids,
            "load_triggered_at": load_triggered_at,
        }
        attempt["fetest_touch"] = {
            "observed": any(str(event.get("event", "")).startswith("FETEST_") for event in last_events),
        }
    except Exception as caught:
        error = caught
        if detached.get("status") == "normal":
            detached["status"] = "error"
        detached["error"] = f"{type(caught).__name__}: {caught}"
        raise
    finally:
        cleanup_requested = True
        if script is not None:
            try:
                script.unload()
            except Exception as unload_error:
                detached.setdefault("unload_error", str(unload_error))
        if session is not None:
            try:
                session.detach()
            except Exception as detach_error:
                detached.setdefault("detach_error", str(detach_error))
        if dropped_events:
            _write_jsonl(events_path, {"event": "B2_EVENTS_TRUNCATED", "dropped": dropped_events, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-50.jsonl").write_text(
            "".join(json.dumps(event, sort_keys=True, separators=(",", ":")) + "\n" for event in last_events),
            encoding="utf-8",
        )
        logcat = _capture_logcat_tolerant(adb, serial)
        (run_dir / "logcat.txt").write_text(str(logcat.get("stdout", "")), encoding="utf-8")
        attempt["logcat_dump"] = {key: value for key, value in logcat.items() if key != "stdout"}
        attempt["finished_at"] = datetime.now(UTC).isoformat()
        attempt["fault"] = detached
        attempt["exception"] = None if error is None else f"{type(error).__name__}: {error}"
        (run_dir / "fault.txt").write_text(json.dumps(detached, sort_keys=True) + "\n", encoding="utf-8")
        (run_dir / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    return run_dir


def _available_data_kib(adb: str, serial: str | None) -> int:
    # Some Android toybox builds resolve `df /data` to an unrelated mount
    # line; request the full table and let available_data_kib() select the
    # row whose mount point is exactly /data or /data/* (same fix as a2).
    result = subprocess.run(
        _SUPPORT.adb_command(adb, serial, "shell", "df", "-k"),
        check=True,
        text=True,
        capture_output=True,
        timeout=30,
    )
    return _SUPPORT.available_data_kib(result.stdout)


def _force_stop(adb: str, serial: str | None) -> None:
    subprocess.run(
        _SUPPORT.adb_command(adb, serial, "shell", "am", "force-stop", PACKAGE),
        check=False,
        text=True,
        capture_output=True,
        timeout=30,
    )


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Run the B2 FEProj/Lua format-compat surface against the owned helper")
    parser.add_argument("--adb", default="adb")
    parser.add_argument("--serial")
    parser.add_argument("--graph", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    parser.add_argument("--gadget", type=Path)
    parser.add_argument("--remote-gadget", help="connect to an already-running embedded Frida Gadget listener, e.g. 127.0.0.1:27042")
    parser.add_argument("--attach-pid", type=int, help="attach to the running helper process that hosts the embedded Frida Gadget")
    parser.add_argument("--stream-dsos", action="store_true", help="stream only the graph-bound libFEProj.so")
    parser.add_argument("--stage-battle-logic", action="store_true", help="stage only the hash-bound BattleLogic.res")
    parser.add_argument("--capture", action="store_true", help="spawn the owned helper and run the B2 RPC surface")
    parser.add_argument("--native-load-action", action="store_true", help="observe while Java System.loads libFEProj.so (R1 path; requires --remote-gadget/--attach-pid)")
    parser.add_argument("--g1-resource-observe", action="store_true", help="G1 resource->loader timing edge: System.load + controlled luaL_loadbufferx (requires --remote-gadget/--attach-pid)")
    parser.add_argument("--g1-pcall-observe", action="store_true", help="G1 loader->execution edge: System.load + controlled lua_load->lua_pcall (requires --remote-gadget/--attach-pid)")
    parser.add_argument("--g1-spontaneous-observe", action="store_true", help="G1 spontaneous loader edge: System.load + validator/registrar anchors + plan A/B (requires --remote-gadget/--attach-pid)")
    parser.add_argument("--g2-registration-observe", action="store_true", help="G2 registration (plan A): System.load + controlled 881-class dispatcher drive (requires --remote-gadget/--attach-pid)")
    parser.add_argument("--g2-registration-observe-b1", action="store_true", help="G2 registration (plan B-1): System.load + observe 792 event registrations, no drive (requires --remote-gadget/--attach-pid)")
    parser.add_argument("--g2-consumer-observe", action="store_true", help="G2 consumer: System.load + registration  + controlled consumption (K1-K5) + no-drive window (K6) (requires --remote-gadget/--attach-pid)")
    parser.add_argument("--stage-test-main", action="store_true", help="stage the hash-bound TestMain.res (version-stamp carrier)")
    parser.add_argument("--reserve-kib", type=int, default=64 * 1024)
    parser.add_argument("--device-dso-dir", default=DEFAULT_DEVICE_DSO_DIR)
    parser.add_argument("--device-fetest-path", default=DEFAULT_FETEST_PATH)
    parser.add_argument("--device-testmain-path", default=DEFAULT_TESTMAIN_PATH)
    parser.add_argument("--evidence-root", type=Path, default=DEFAULT_EVIDENCE_ROOT)
    args = parser.parse_args(argv)

    g2_modes = (args.g2_registration_observe, args.g2_registration_observe_b1, args.g2_consumer_observe)
    if not (args.stream_dsos or args.stage_battle_logic or args.stage_test_main or args.capture or args.native_load_action or args.g1_resource_observe or args.g1_pcall_observe or args.g1_spontaneous_observe or any(g2_modes)):
        parser.error("select --stream-dsos, --stage-battle-logic, --stage-test-main, --capture, --native-load-action, --g1-resource-observe, --g1-pcall-observe, --g1-spontaneous-observe, --g2-registration-observe, --g2-registration-observe-b1, or --g2-consumer-observe")
    if args.reserve_kib < 0:
        parser.error("--reserve-kib must not be negative")
    if args.capture and args.native_load_action:
        parser.error("--capture cannot be combined with --native-load-action")
    if args.capture and (args.g1_resource_observe or args.g1_pcall_observe or args.g1_spontaneous_observe or any(g2_modes)):
        parser.error("--capture cannot be combined with --g1-resource-observe/--g1-pcall-observe/--g1-spontaneous-observe/--g2-registration-observe/--g2-consumer-observe")
    if args.native_load_action and (args.g1_resource_observe or args.g1_pcall_observe or args.g1_spontaneous_observe or any(g2_modes)):
        parser.error("--native-load-action cannot be combined with --g1-resource-observe/--g1-pcall-observe/--g1-spontaneous-observe/--g2-registration-observe/--g2-consumer-observe")
    if args.g1_resource_observe and args.g1_pcall_observe:
        parser.error("--g1-resource-observe cannot be combined with --g1-pcall-observe")
    if args.g1_spontaneous_observe and (args.g1_resource_observe or args.g1_pcall_observe):
        parser.error("--g1-spontaneous-observe cannot be combined with --g1-resource-observe/--g1-pcall-observe")
    if args.g2_registration_observe and args.g2_registration_observe_b1:
        parser.error("--g2-registration-observe cannot be combined with --g2-registration-observe-b1")
    if args.g2_consumer_observe and (args.g2_registration_observe or args.g2_registration_observe_b1):
        parser.error("--g2-consumer-observe cannot be combined with --g2-registration-observe/--g2-registration-observe-b1")
    if any(g2_modes) and (args.g1_resource_observe or args.g1_pcall_observe or args.g1_spontaneous_observe):
        parser.error("--g2-* modes cannot be combined with --g1-* modes")
    if args.capture and args.gadget is None and args.remote_gadget is None:
        parser.error("--capture requires an explicit arm64 --gadget or --remote-gadget")
    if args.gadget is not None and args.remote_gadget is not None:
        parser.error("--remote-gadget cannot be combined with --gadget")
    if args.gadget is not None and args.attach_pid is not None:
        parser.error("--attach-pid cannot be combined with --gadget")
    if (args.remote_gadget is None) != (args.attach_pid is None):
        parser.error("--remote-gadget and --attach-pid must be used together")
    if args.attach_pid is not None and not (args.capture or args.native_load_action or args.g1_resource_observe or args.g1_pcall_observe or args.g1_spontaneous_observe or any(g2_modes)):
        parser.error("--attach-pid/--remote-gadget require --capture, --native-load-action, --g1-resource-observe, --g1-pcall-observe, --g1-spontaneous-observe, or --g2-* observe")
    if (args.native_load_action or args.g1_resource_observe or args.g1_pcall_observe or args.g1_spontaneous_observe or any(g2_modes)) and args.remote_gadget is None:
        parser.error("--native-load-action/--g1-resource-observe/--g1-pcall-observe/--g1-spontaneous-observe/--g2-* observe requires --remote-gadget and --attach-pid")
    if args.gadget is not None and not args.gadget.is_file():
        parser.error("--gadget must name an existing file")

    graph = json.loads(args.graph.read_text(encoding="utf-8"))
    if not isinstance(graph, dict):
        raise ValueError("B2 graph is not an object")
    entries = validate_b2_graph(graph)
    fingerprint = battle_logic_fingerprint(args.manifest)
    sources = _SUPPORT._graph_sources(graph) if args.stream_dsos else []
    if args.stream_dsos or args.stage_battle_logic or args.stage_test_main:
        payload_bytes = sum(2 * source.stat().st_size for source, _ in sources)
        if args.stage_battle_logic:
            payload_bytes += 2 * int(fingerprint["size"])
        if args.stage_test_main:
            payload_bytes += 2 * TESTMAIN_SIZE
        _SUPPORT.require_data_space(_available_data_kib(args.adb, args.serial), payload_bytes=payload_bytes, reserve_kib=args.reserve_kib)
    if args.stream_dsos:
        for source, expected_sha256 in sources:
            _SUPPORT.stream_dso_to_helper(args.adb, args.serial, source, expected_sha256=expected_sha256)
    if args.stage_battle_logic:
        stage_battle_logic(args.adb, args.serial, fingerprint, args.device_fetest_path)
    if args.stage_test_main:
        stage_test_main(args.adb, args.serial, args.device_testmain_path)
    if args.capture:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        run_dir = execute_b2_surface(
            args.serial,
            load_plan,
            evidence_root=args.evidence_root,
            adb=args.adb,
            gadget=args.gadget,
            logcat_clear=_SUPPORT.clear_logcat(args.adb, args.serial),
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
        )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    if args.native_load_action:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        run_dir = execute_b2_native_load_surface(
            args.serial,
            load_plan,
            evidence_root=args.evidence_root,
            adb=args.adb,
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
            action="loadfeproj",
            survive_seconds=60,
        )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    if args.g1_resource_observe:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        run_dir = execute_b2_native_load_surface(
            args.serial,
            load_plan,
            evidence_root=args.evidence_root,
            adb=args.adb,
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
            action="loadfeproj",
            survive_seconds=60,
            hook_path=G1_OBSERVE_HOOK,
            post_rpc="runresource",
            operation="g1-resource-loader-observe",
            run_prefix="g1res",
        )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    if args.g1_pcall_observe:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        run_dir = execute_b2_native_load_surface(
            args.serial,
            load_plan,
            evidence_root=args.evidence_root,
            adb=args.adb,
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
            action="loadfeproj",
            survive_seconds=60,
            hook_path=G1_PCALL_HOOK,
            post_rpc="runpcall",
            operation="g1-pcall-observe",
            run_prefix="g1pcall",
        )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    if args.g1_spontaneous_observe:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        run_dir = execute_g1_spontaneous_surface(
            args.serial,
            load_plan,
            evidence_root=args.evidence_root,
            adb=args.adb,
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
            action="loadfeproj",
            survive_seconds=60,
            test_main_path=args.device_testmain_path,
        )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    if args.g2_registration_observe or args.g2_registration_observe_b1:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        g2_evidence_root = TRACK_B.parent / "track-a" / "crashes"
        if args.g2_registration_observe:
            names = G2_REG_EXPECTED.read_text(encoding="utf-8").splitlines()
            names = [n for n in names if n.strip()]
            run_dir = execute_b2_native_load_surface(
                args.serial,
                load_plan,
                evidence_root=g2_evidence_root,
                adb=args.adb,
                remote_gadget=args.remote_gadget,
                attach_pid=args.attach_pid,
                action="loadfeproj",
                survive_seconds=60,
                hook_path=G2_REG_HOOK,
                post_rpc="runregistration",
                post_rpc_args=[names, _g2_registry_entries()],
                operation="g2-registration-observe",
                run_prefix="g2reg",
            )
        else:
            registry_entries = _g2_registry_entries()
            run_dir = execute_b2_native_load_surface(
                args.serial,
                load_plan,
                evidence_root=g2_evidence_root,
                adb=args.adb,
                remote_gadget=args.remote_gadget,
                attach_pid=args.attach_pid,
                action="loadfeproj",
                survive_seconds=60,
                hook_path=G2_REG_HOOK,
                post_rpc="runregobserve",
                post_rpc_args=[registry_entries],
                operation="g2-registration-observe-b1",
                run_prefix="g2regb1",
            )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    if args.g2_consumer_observe:
        verified = verify_b2_inputs(
            args.adb,
            args.serial,
            graph,
            args.manifest,
            args.device_dso_dir,
            args.device_fetest_path,
        )
        load_plan = build_b2_load_plan(graph, verified)
        g2_evidence_root = TRACK_B.parent / "track-a" / "crashes"
        names = G2_REG_EXPECTED.read_text(encoding="utf-8").splitlines()
        names = [n for n in names if n.strip()]
        run_dir = execute_g2_consumer_surface(
            args.serial,
            load_plan,
            evidence_root=g2_evidence_root,
            adb=args.adb,
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
            action="loadfeproj",
            survive_seconds=60,
            names=names,
            sample_names=G2_CONSUMER_SAMPLES,
            no_drive_ms=60000,
        )
        _force_stop(args.adb, args.serial)
        print(json.dumps({"run_dir": str(run_dir)}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
