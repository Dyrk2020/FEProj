from __future__ import annotations

import argparse
import hashlib
import json
import shlex
import subprocess
import sys
from collections import deque
import time
from datetime import UTC, datetime
from pathlib import Path
from typing import Any, Sequence
from uuid import uuid4

PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = f"{PACKAGE}/.MainActivity"
ROOT = Path(__file__).resolve().parents[3]
TRACK_A = Path(__file__).resolve().parent
DEFAULT_GRAPH = TRACK_A / "load-graph.json"
HOOK = TRACK_A / "hooks/a2_il2cpp_surface.js"
DEFAULT_DEVICE_DSO_DIR = f"/data/user/0/{PACKAGE}/files/dso"
DEFAULT_DATA_DIR = f"/data/user/0/{PACKAGE}/files/meta"
DEFAULT_FETEST_DIR = f"/data/user/0/{PACKAGE}/files/fetest"
DEFAULT_MANIFEST = ROOT / "work/aggressive-logic-bridge-2026-07-13/input-manifest.json"
DEFAULT_EVIDENCE_ROOT = TRACK_A / "crashes"
METADATA_NAME = "global-metadata.dat"
METADATA_RELATIVE_PATH = "Metadata/global-metadata.dat"
BATTLE_LOGIC_NAME = "BattleLogic.res"
MAX_EVENT_RECORDS = 512
BATTLE_LOGIC_RELATIVE_PATH = "Res/FETest/Logic/BattleLogic.res"
METADATA_WINDOW_OFFSET = 40
METADATA_WINDOW_LENGTH = 64
DEFAULT_A3_DUMP_ROOT = TRACK_A / "dumps"
POST_COPY_VERIFY_TIMEOUT_SECONDS = 30.0
POST_COPY_VERIFY_INTERVAL_SECONDS = 0.2


def adb_command(adb: str, serial: str | None, *args: str) -> list[str]:
    return [adb, *(["-s", serial] if serial else []), *args]


def capture_device_gate(adb: str, serial: str | None) -> dict[str, object]:
    devices = subprocess.run(
        [adb, "devices", "-l"],
        check=True,
        text=True,
        capture_output=True,
        timeout=30,
    )
    candidates: list[tuple[str, str, dict[str, str], str]] = []
    for line in devices.stdout.splitlines():
        fields = line.split()
        if len(fields) < 2 or fields[0] == "List":
            continue
        attributes = dict(field.split(":", 1) for field in fields[2:] if ":" in field)
        candidates.append((fields[0], fields[1], attributes, line))
    selected = next((entry for entry in candidates if serial is not None and entry[0] == serial), None)
    if selected is None and serial is None:
        online = [entry for entry in candidates if entry[1] == "device"]
        if len(online) == 1:
            selected = online[0]
    if selected is None:
        raise RuntimeError(f"selected adb device is not present: {serial}")
    selected_serial, state, attributes, device_line = selected
    properties_result = subprocess.run(
        adb_command(adb, selected_serial, "shell", "getprop"),
        check=True,
        text=True,
        capture_output=True,
        timeout=30,
    )
    properties: dict[str, str] = {}
    for line in properties_result.stdout.splitlines():
        if not line.startswith("[") or "]: [" not in line or not line.endswith("]"):
            continue
        key, value = line[1:-1].split("]: [", 1)
        properties[key] = value
    required_properties = {
        "ro.product.manufacturer",
        "ro.product.model",
        "ro.product.device",
        "ro.build.version.release",
        "ro.product.cpu.abilist",
    }
    market_name_key = next(
        (key for key in ("ro.vendor.oplus.market.enname", "ro.product.marketname") if properties.get(key)),
        None,
    )
    missing = sorted(key for key in required_properties if not properties.get(key))
    if market_name_key is None:
        missing.append("OnePlus market name")
    if missing:
        raise RuntimeError(f"device gate properties missing: {', '.join(missing)}")
    assert market_name_key is not None
    captured_properties = required_properties | {market_name_key}
    return {
        "captured_at": datetime.now(UTC).isoformat(),
        "serial": selected_serial,
        "state": state,
        "product": attributes.get("product"),
        "model": attributes.get("model"),
        "device": attributes.get("device"),
        "device_line": device_line,
        "properties": {key: properties[key] for key in sorted(captured_properties)},
    }


def force_stop_for_fresh_capture(adb: str, serial: str | None) -> dict[str, object]:
    command = ["shell", "am", "force-stop", PACKAGE]
    result = subprocess.run(
        adb_command(adb, serial, *command),
        check=False,
        text=True,
        capture_output=True,
        timeout=30,
    )
    if result.returncode != 0:
        raise RuntimeError(f"force-stop failed for {PACKAGE}: {result.stderr.strip()}")
    post_command = ["shell", "pidof", PACKAGE]
    post = subprocess.run(
        adb_command(adb, serial, *post_command),
        check=False,
        text=True,
        capture_output=True,
        timeout=30,
    )
    try:
        post_pids = [int(value) for value in post.stdout.split()]
    except ValueError as exc:
        raise RuntimeError(f"invalid post-force-stop PID output: {post.stdout!r}") from exc
    if post_pids:
        raise RuntimeError(f"package remained alive after force-stop: {post_pids}")
    return {
        "command": command,
        "completed_at": datetime.now(UTC).isoformat(),
        "returncode": result.returncode,
        "post_check": {"command": post_command, "returncode": post.returncode, "stdout": post.stdout},
        "post_pids": post_pids,
    }


def _run_as_shell_command(script: str) -> str:
    return f"run-as {shlex.quote(PACKAGE)} sh -c {shlex.quote(script)}"

def require_arm64_process(environment: object) -> dict[str, object]:
    if not isinstance(environment, dict):
        raise RuntimeError("A2 surface execution requires helper process ABI metadata")
    arch = environment.get("arch")
    pointer_size = environment.get("pointer_size")
    if arch != "arm64":
        raise RuntimeError(f"A2 surface execution requires arm64 helper process; found {arch}")
    if pointer_size != 8:
        raise RuntimeError(f"A2 surface execution requires 8-byte arm64 helper pointers; found {pointer_size}")
    result: dict[str, object] = {"arch": arch, "pointer_size": pointer_size}
    if "pid" in environment:
        result["pid"] = environment["pid"]
    return result


def available_data_kib(df_output: str) -> int:
    for line in df_output.splitlines():
        fields = line.split()
        if len(fields) >= 6 and (fields[-1] == "/data" or fields[-1].startswith("/data/")):
            try:
                return int(fields[-3])
            except ValueError as error:
                raise RuntimeError("unable to parse available /data space") from error
    raise RuntimeError("unable to find /data space in adb df output")


def require_data_space(available_kib: int, *, payload_bytes: int, reserve_kib: int) -> None:
    required_kib = (payload_bytes + 1023) // 1024 + reserve_kib
    if available_kib < required_kib:
        raise RuntimeError(f"insufficient /data space: requires {required_kib} KiB, available {available_kib} KiB")


def stage_payload_bytes(manifest_path: Path) -> int:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    sizes = {anchor.get("name"): anchor.get("size") for anchor in manifest.get("anchors", [])}
    try:
        metadata_size = sizes[METADATA_NAME]
        battle_logic_size = sizes["BattleLogic.res"]
    except KeyError as error:
        raise ValueError(f"stage input missing from manifest: {error.args[0]}") from error
    if not isinstance(metadata_size, int) or not isinstance(battle_logic_size, int):
        raise ValueError("stage input size is invalid")
    return metadata_size + battle_logic_size


def _safe_library_name(name: str) -> str:
    if Path(name).name != name or "\\" in name or not name.endswith(".so"):
        raise ValueError(f"refusing non-library source name: {name}")
    return name


def _expected_sha256(value: object, name: str) -> str:
    if not isinstance(value, str) or len(value) != 64 or any(character not in "0123456789abcdef" for character in value):
        raise ValueError(f"invalid sha256 for {name}")
    return value


def _relay_to_helper(
    adb: str,
    serial: str | None,
    source: Path,
    *,
    name: str,
    final: str,
    expected_sha256: str,
) -> None:
    temporary = f"{final}.tmp"
    relay = f"/data/local/tmp/a2-{name}-{uuid4().hex}.tmp"
    target_dir = final.rsplit("/", 1)[0]
    operation_error: Exception | None = None
    try:
        pushed = subprocess.run(
            adb_command(adb, serial, "push", str(source), relay),
            check=False,
            text=True,
            capture_output=True,
            timeout=900,
        )
        if pushed.returncode != 0:
            detail = pushed.stderr.strip() or pushed.stdout.strip()
            raise RuntimeError(f"temporary helper relay push failed for {name}: {detail}")
        script = (
            f"umask 077; mkdir -p {target_dir}; "
            f"if [ -e {final} ] && test \"$(sha256sum {final} | awk '{{print $1}}')\" = {expected_sha256}; then exit 0; fi; "
            f"trap 'rm -f {temporary}' EXIT HUP INT TERM; "
            f"cat {shlex.quote(relay)} > {temporary}; test \"$(sha256sum {temporary} | awk '{{print $1}}')\" = {expected_sha256} || exit 1; "
            f"mv -f {temporary} {final}"
        )
        copied = subprocess.run(
            adb_command(adb, serial, "shell", _run_as_shell_command(script)),
            check=False,
            text=True,
            capture_output=True,
            timeout=900,
        )
        if copied.returncode != 0:
            detail = copied.stderr.strip() or copied.stdout.strip()
            raise RuntimeError(f"helper relay copy failed for {name}: {detail}")
    except Exception as error:
        operation_error = error
        raise
    finally:
        try:
            cleanup = subprocess.run(
                adb_command(adb, serial, "shell", "rm", "-f", relay),
                check=False,
                text=True,
                capture_output=True,
                timeout=30,
            )
        except Exception as cleanup_error:
            if operation_error is None:
                raise RuntimeError(f"temporary helper relay cleanup failed for {name}: {cleanup_error}") from cleanup_error
        else:
            if cleanup.returncode != 0 and operation_error is None:
                detail = cleanup.stderr.strip() or cleanup.stdout.strip()
                raise RuntimeError(f"temporary helper relay cleanup failed for {name}: {detail}")


def stream_dso_to_helper(adb: str, serial: str | None, source: Path, *, expected_sha256: str) -> None:
    name = _safe_library_name(source.name)
    expected_sha256 = _expected_sha256(expected_sha256, name)
    if not source.is_file():
        raise FileNotFoundError(source)
    _relay_to_helper(
        adb,
        serial,
        source,
        name=name,
        final=f"files/dso/{name}",
        expected_sha256=expected_sha256,
    )


def _graph_payload(graph_path: Path) -> dict[str, object]:
    graph = json.loads(graph_path.read_text(encoding="utf-8"))
    if not isinstance(graph.get("ordered_libraries"), list):
        raise ValueError("load graph has no ordered_libraries")
    return graph


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _graph_sources(graph: dict[str, object]) -> list[tuple[Path, str]]:
    sources: list[tuple[Path, str]] = []
    for entry in graph["ordered_libraries"]:
        if not isinstance(entry, dict) or not isinstance(entry.get("source_path"), str) or not isinstance(entry.get("name"), str):
            raise ValueError("load graph library has no source_path")
        source = Path(entry["source_path"])
        if not source.is_file():
            raise FileNotFoundError(source)
        expected = _expected_sha256(entry.get("sha256"), entry["name"])
        if _sha256(source) != expected:
            raise ValueError(f"load graph source hash mismatch: {source.name}")
        sources.append((source, expected))
    return sources


def _manifest_anchors(manifest_path: Path) -> dict[str, dict[str, object]]:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    anchors = manifest.get("anchors")
    if not isinstance(anchors, list):
        raise ValueError("immutable manifest has no anchors")
    by_name = {anchor.get("name"): anchor for anchor in anchors if isinstance(anchor, dict)}
    if METADATA_NAME not in by_name:
        raise ValueError(f"immutable manifest is missing {METADATA_NAME}")
    return by_name


def _manifest_hash(anchor: dict[str, object], name: str) -> str:
    declared = _expected_sha256(anchor.get("sha256"), name)
    expected = _expected_sha256(anchor.get("expected"), name)
    if declared != expected:
        raise ValueError(f"immutable manifest hash mismatch for {name}")
    return expected

def metadata_fingerprint(manifest_path: Path) -> dict[str, object]:
    anchors = _manifest_anchors(manifest_path)
    anchor = anchors[METADATA_NAME]
    assert isinstance(anchor, dict)
    expected = _manifest_hash(anchor, METADATA_NAME)
    source_value = anchor.get("path")
    if not isinstance(source_value, str):
        raise ValueError("immutable manifest has no metadata source path")
    source = Path(source_value)
    if not source.is_file():
        raise FileNotFoundError(source)
    size = source.stat().st_size
    declared_size = anchor.get("size")
    if not isinstance(declared_size, int) or declared_size != size:
        raise ValueError("immutable manifest metadata size mismatch")
    if _sha256(source) != expected:
        raise ValueError("metadata source hash mismatch")
    if size < METADATA_WINDOW_OFFSET + METADATA_WINDOW_LENGTH:
        raise ValueError("metadata is shorter than the required A3 window")
    with source.open("rb") as metadata:
        header = metadata.read(16)
        metadata.seek(METADATA_WINDOW_OFFSET)
        window = metadata.read(METADATA_WINDOW_LENGTH)
    if len(header) != 16 or len(window) != METADATA_WINDOW_LENGTH:
        raise ValueError("unable to read required A3 metadata fingerprints")
    return {
        "metadata_sha256": expected,
        "metadata_size": size,
        "header_hex": header.hex(),
        "window": {"offset": METADATA_WINDOW_OFFSET, "length": METADATA_WINDOW_LENGTH, "hex": window.hex()},
    }


def stage_sidecar_inputs(adb: str, serial: str | None, manifest_path: Path) -> None:
    anchors = _manifest_anchors(manifest_path)
    for name in (METADATA_NAME, BATTLE_LOGIC_NAME):
        anchor = anchors.get(name)
        if not isinstance(anchor, dict):
            raise ValueError(f"immutable manifest is missing {name}")
        expected_sha256 = _manifest_hash(anchor, name)
        source_value = anchor.get("path")
        if not isinstance(source_value, str):
            raise ValueError(f"immutable manifest has no source path for {name}")
        source = Path(source_value)
        if not source.is_file():
            raise FileNotFoundError(source)
        if _sha256(source) != expected_sha256:
            raise ValueError(f"sidecar source hash mismatch: {name}")
        _relay_to_helper(
            adb,
            serial,
            source,
            name=name,
            final=f"files/incoming/{name}",
            expected_sha256=expected_sha256,
        )


def _helper_sha256(adb: str, serial: str | None, relative_path: str) -> str:
    result = subprocess.run(
        adb_command(adb, serial, "shell", "run-as", PACKAGE, "sha256sum", relative_path),
        check=True,
        text=True,
        capture_output=True,
        timeout=30,
    )
    digest = result.stdout.strip().split(maxsplit=1)
    if not digest:
        raise RuntimeError(f"helper checksum returned no digest for {relative_path}")
    return _expected_sha256(digest[0], relative_path)

def _helper_metadata_stat(adb: str, serial: str | None, relative_path: str) -> dict[str, object]:
    script = f"stat -c '%d %i %s' {shlex.quote(relative_path)}"
    result = subprocess.run(
        adb_command(adb, serial, "shell", _run_as_shell_command(script)),
        check=True,
        text=True,
        capture_output=True,
        timeout=30,
    )
    fields = result.stdout.strip().split()
    if len(fields) != 3 or not all(field.isdecimal() for field in fields):
        raise RuntimeError(f"helper stat returned invalid identity for {relative_path}: {result.stdout.strip()!r}")
    return {"dev": fields[0], "ino": fields[1], "size": int(fields[2])}


def prove_metadata_absent(adb: str, serial: str | None, data_dir: str) -> None:
    metadata_path = f"{data_dir}/{METADATA_RELATIVE_PATH}".removeprefix(f"/data/user/0/{PACKAGE}/")
    result = subprocess.run(
        adb_command(adb, serial, "shell", _run_as_shell_command(f"test ! -e {shlex.quote(metadata_path)}")),
        check=False,
        text=True,
        capture_output=True,
        timeout=30,
    )
    if result.returncode != 0:
        raise RuntimeError(f"metadata must be absent: {result.stderr.strip()}")


def verify_helper_inputs(
    adb: str,
    serial: str | None,
    graph: dict[str, object],
    manifest_path: Path,
    device_dso_dir: str,
    data_dir: str,
    *,
    metadata_state: str = "staged",
) -> dict[str, object]:
    if metadata_state not in {"staged", "absent"}:
        raise ValueError(f"unsupported metadata state: {metadata_state}")
    anchors = _manifest_anchors(manifest_path)
    verified_libraries: list[dict[str, str]] = []
    for entry in graph["ordered_libraries"]:
        if not isinstance(entry, dict) or not isinstance(entry.get("name"), str):
            raise ValueError("load graph library has no name")
        name = _safe_library_name(entry["name"])
        anchor = anchors.get(name)
        if not isinstance(anchor, dict):
            raise ValueError(f"immutable manifest is missing {name}")
        expected = _manifest_hash(anchor, name)
        if _expected_sha256(entry.get("sha256"), name) != expected:
            raise ValueError(f"load graph is not bound to immutable manifest hash: {name}")
        device_path = f"{device_dso_dir}/{name}"
        if _helper_sha256(adb, serial, device_path.removeprefix(f"/data/user/0/{PACKAGE}/")) != expected:
            raise RuntimeError(f"helper DSO hash mismatch: {name}")
        verified_libraries.append({"name": name, "path": device_path, "sha256": expected})
    if metadata_state == "absent":
        prove_metadata_absent(adb, serial, data_dir)
        metadata: dict[str, str] | None = None
    else:
        metadata_anchor = anchors[METADATA_NAME]
        assert isinstance(metadata_anchor, dict)
        metadata_hash = _manifest_hash(metadata_anchor, METADATA_NAME)
        metadata_size = metadata_anchor.get("size")
        if not isinstance(metadata_size, int) or metadata_size <= 0:
            raise ValueError("immutable manifest metadata size is invalid")
        metadata_path = f"{data_dir}/{METADATA_RELATIVE_PATH}"
        helper_path = metadata_path.removeprefix(f"/data/user/0/{PACKAGE}/")
        if _helper_sha256(adb, serial, helper_path) != metadata_hash:
            raise RuntimeError("helper metadata hash mismatch")
        identity = _helper_metadata_stat(adb, serial, helper_path)
        if identity["size"] != metadata_size:
            raise RuntimeError("helper metadata size mismatch")
        metadata = {"name": METADATA_NAME, "path": metadata_path, "sha256": metadata_hash, "identity": identity}
    return {"libraries": verified_libraries, "metadata": metadata}


def verify_post_copy_inputs(
    adb: str,
    serial: str | None,
    graph: dict[str, object],
    manifest_path: Path,
    device_dso_dir: str,
    data_dir: str,
    *,
    verify_stage: bool,
    verify_dsos: bool,
) -> None:
    anchors = _manifest_anchors(manifest_path)

    def verify_anchor(name: str, device_path: str) -> None:
        anchor = anchors.get(name)
        if not isinstance(anchor, dict):
            raise ValueError(f"immutable manifest is missing {name}")
        expected = _manifest_hash(anchor, name)
        helper_path = device_path.removeprefix(f"/data/user/0/{PACKAGE}/")
        deadline = time.monotonic() + POST_COPY_VERIFY_TIMEOUT_SECONDS
        while True:
            try:
                actual = _helper_sha256(adb, serial, helper_path)
            except subprocess.CalledProcessError as error:
                if time.monotonic() >= deadline:
                    raise RuntimeError(f"helper post-copy input did not appear: {name}") from error
                time.sleep(POST_COPY_VERIFY_INTERVAL_SECONDS)
                continue
            if actual != expected:
                raise RuntimeError(f"helper post-copy hash mismatch: {name}")
            return

    if verify_stage:
        verify_anchor(METADATA_NAME, f"{data_dir}/{METADATA_RELATIVE_PATH}")
        verify_anchor(BATTLE_LOGIC_NAME, f"{DEFAULT_FETEST_DIR}/{BATTLE_LOGIC_RELATIVE_PATH}")
    if verify_dsos:
        for entry in graph["ordered_libraries"]:
            if not isinstance(entry, dict) or not isinstance(entry.get("name"), str):
                raise ValueError("load graph library has no name")
            name = _safe_library_name(entry["name"])
            anchor = anchors.get(name)
            if not isinstance(anchor, dict):
                raise ValueError(f"immutable manifest is missing {name}")
            expected = _manifest_hash(anchor, name)
            if _expected_sha256(entry.get("sha256"), name) != expected:
                raise ValueError(f"load graph is not bound to immutable manifest hash: {name}")
            verify_anchor(name, f"{device_dso_dir}/{name}")


def _helper_action(adb: str, serial: str | None, action: str) -> None:
    subprocess.run(
        adb_command(adb, serial, "shell", "am", "start", "-W", "-n", COMPONENT, "--es", "action", action),
        check=True,
        text=True,
        capture_output=True,
        timeout=180,
    )


def stage_helper(adb: str, serial: str | None) -> None:
    _helper_action(adb, serial, "stage")


def helper_status(adb: str, serial: str | None) -> None:
    _helper_action(adb, serial, "status")


def _helper_load_plan(graph: dict[str, object], device_dso_dir: str, verified_inputs: dict[str, object]) -> dict[str, object]:
    libraries = []
    verified_by_name = {entry["name"]: entry for entry in verified_inputs["libraries"]}
    for entry in graph["ordered_libraries"]:
        if not isinstance(entry, dict) or not isinstance(entry.get("name"), str):
            raise ValueError("load graph library has no name")
        name = _safe_library_name(entry["name"])
        verified = verified_by_name.get(name)
        if not isinstance(verified, dict):
            raise ValueError(f"unverified load graph library: {name}")
        libraries.append({"name": name, "path": f"{device_dso_dir}/{name}", "sha256": verified["sha256"]})
    return {"ordered_libraries": libraries, "input_provenance": {"metadata": verified_inputs["metadata"]}}


def _write_jsonl(path: Path, record: object) -> None:
    with path.open("a", encoding="utf-8") as output:
        output.write(json.dumps(record, sort_keys=True, separators=(",", ":")) + "\n")


def clear_logcat(adb: str, serial: str | None) -> dict[str, object]:
    try:
        result = subprocess.run(adb_command(adb, serial, "shell", "logcat", "-c"), check=False, text=True, capture_output=True, timeout=30)
        return {"status": "cleared" if result.returncode == 0 else "error", "code": result.returncode, "stderr": result.stderr}
    except Exception as error:
        return {"status": "error", "code": None, "stderr": str(error)}


def _capture_logcat(adb: str, serial: str | None) -> dict[str, object]:
    try:
        result = subprocess.run(
            adb_command(adb, serial, "shell", "logcat", "-d", "-v", "threadtime"),
            check=False,
            text=True,
            capture_output=True,
            timeout=30,
        )
        return {"status": "ok" if result.returncode == 0 else "error", "code": result.returncode, "stdout": result.stdout, "stderr": result.stderr}
    except Exception as error:
        return {"status": "error", "code": None, "stdout": "", "stderr": str(error)}


def _fatal_logcat_lines(logcat: str, pid: object) -> list[str]:
    if not isinstance(pid, int) or pid <= 0:
        return []
    pid_marker = f"pid {pid} ("
    return [line for line in logcat.splitlines() if "Fatal signal " in line and pid_marker in line]


def _run_directory(evidence_root: Path) -> Path:
    run_id = datetime.now(UTC).strftime("%Y%m%dT%H%M%S.%fZ") + f"-{uuid4().hex[:8]}"
    directory = evidence_root / run_id
    directory.mkdir(parents=True, exist_ok=False)
    return directory


def _serialize_crash(crash: object | None, maps: list[dict[str, object]]) -> dict[str, object] | None:
    if crash is None:
        return None

    def field(name: str) -> object:
        value = crash.get(name) if isinstance(crash, dict) else getattr(crash, name, None)
        return value if value is None or isinstance(value, (bool, int, float, str, dict, list)) else str(value)

    address_value = field("address")
    try:
        address = f"0x{int(str(address_value), 0):x}" if address_value is not None else None
    except ValueError:
        address = None
    module = None
    rva = None
    if address is not None:
        address_int = int(address, 0)
        for mapping in maps:
            try:
                base = int(str(mapping.get("base")), 0)
                size = int(mapping.get("size"))
            except (TypeError, ValueError):
                continue
            if base <= address_int < base + size:
                module = {"name": mapping.get("library"), "path": mapping.get("path"), "base": f"0x{base:x}"}
                rva = f"0x{address_int - base:x}"
                break
    return {
        "pid": field("pid"), "process_name": field("process_name"), "summary": field("summary"), "report": field("report"),
        "fault_location": {"address": address, "context": field("context"), "module": module, "rva": rva},
    }

def execute_surface(
    serial: str | None,
    load_plan: dict[str, object],
    *,
    load: bool,
    set_data_dir: bool,
    init: bool,
    data_dir: str,
    domain_name: str,
    evidence_root: Path = DEFAULT_EVIDENCE_ROOT,
    adb: str = "adb",
    before_rpcs: object | None = None,
    logcat_clear: dict[str, object] | None = None,
    gadget: Path | None = None,
    a3_fingerprint: dict[str, object] | None = None,
    a3_dump_root: Path = DEFAULT_A3_DUMP_ROOT,
    capture_provenance: bool = False,
    remote_gadget: str | None = None,
    attach_pid: int | None = None,
    hook_path: Path | None = None,
) -> None:
    import frida

    run_dir = _run_directory(evidence_root)
    events_path = run_dir / "events.jsonl"
    rpc_path = run_dir / "rpc-results.jsonl"
    (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    a3_dump_dir = a3_dump_root / run_dir.name if a3_fingerprint is not None else None
    a3_events_path = None if a3_dump_dir is None else a3_dump_dir / "a3-events.jsonl"
    a3_memory_hits_path = None if a3_dump_dir is None else a3_dump_dir / "memory-hits.jsonl"
    a3_event_counts: dict[str, int] = {}
    if a3_dump_dir is not None:
        a3_dump_dir.mkdir(parents=True, exist_ok=False)
        assert a3_memory_hits_path is not None
        a3_memory_hits_path.write_text("", encoding="utf-8")
    event_times: list[tuple[dict[str, object], float]] = []
    last_events: deque[dict[str, object]] = deque(maxlen=50)
    maps: list[dict[str, object]] = []
    persisted_events = 0
    dropped_events = 0
    truncation_written = False
    library_hashes = {entry.get("name"): entry.get("sha256") for entry in load_plan.get("ordered_libraries", []) if isinstance(entry, dict)}
    detached: dict[str, object] = {"status": "normal"}
    cleanup_requested = False
    metadata = load_plan.get("input_provenance", {}).get("metadata") if isinstance(load_plan.get("input_provenance"), dict) else None
    attempt: dict[str, object] = {
        "package": PACKAGE, "started_at": datetime.now(UTC).isoformat(), "operation": "init" if init else "set-data-dir-only" if set_data_dir else "load-only" if load else "none",
        "data_dir": data_dir, "metadata": metadata, "metadata_present": metadata is not None,
        "process_abi": None, "domain_ptr": None, "frida_version": getattr(frida, "__version__", None), "load_plan_path": "load-plan.json",
        "spawn": None,
        "logcat_clear": logcat_clear,
        "a3": None if a3_fingerprint is None else {"fingerprint": a3_fingerprint, "dump_dir": str(a3_dump_dir)},
    }

    def on_message(message: object, data: object) -> None:
        nonlocal persisted_events, dropped_events
        if isinstance(message, dict) and message.get("type") == "send" and isinstance(message.get("payload"), dict):
            event = dict(message["payload"])
        else:
            event = {"event": "A2_FRIDA_MESSAGE", "message": message}
        if event.get("event") == "A2_MODULE_LOAD" and event.get("library") in library_hashes:
            event["sha256"] = library_hashes[event["library"]]
        event["received_at"] = datetime.now(UTC).isoformat()
        event_name = event.get("event")
        is_a3_event = isinstance(event_name, str) and event_name.startswith("A3_")
        if a3_events_path is not None and (is_a3_event or event_name == "A2_IO_CLOSE"):
            _write_jsonl(a3_events_path, event)
            if is_a3_event:
                a3_event_counts[event_name] = a3_event_counts.get(event_name, 0) + 1
                if event_name == "A3_MEMORY_HIT" and a3_memory_hits_path is not None:
                    _write_jsonl(a3_memory_hits_path, event)
        received_monotonic = time.monotonic()
        last_events.append(event)
        event_times.append((event, received_monotonic))
        if persisted_events < MAX_EVENT_RECORDS:
            _write_jsonl(events_path, event)
            persisted_events += 1
        else:
            dropped_events += 1
        if event.get("event") in {"A2_MODULE_MAP", "A2_ANON_RW_SUMMARY"}:
            maps.append(event)

    def on_detached(reason: object, crash: object | None = None) -> None:
        if cleanup_requested and str(reason) == "application-requested":
            return
        detached.update({"status": "detached", "reason": str(reason), "crash": _serialize_crash(crash, maps)})

    session = None
    script = None
    error: Exception | None = None
    try:
        if capture_provenance:
            if gadget is None:
                raise RuntimeError("capture provenance requires an explicit Gadget spawn")
            if remote_gadget is not None or attach_pid is not None:
                raise RuntimeError("capture provenance cannot be combined with embedded-gadget attach mode")
            attempt["device_gate"] = capture_device_gate(adb, serial)
            attempt["fresh_capture"] = {"force_stop": force_stop_for_fresh_capture(adb, serial)}
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
            attempt["attach"] = {"mode": "embedded-gadget" if remote_gadget is not None else "pid",
                                 "pid": attach_pid,
                                 "remote": remote_gadget}
            session = device.attach(attach_pid)
        elif gadget is None:
            session = device.attach(PACKAGE)
        else:
            spawned_pid = device.spawn(PACKAGE, gadget=str(gadget))
            attempt["spawn"] = {"mode": "gadget", "gadget_path": str(gadget), "pid": spawned_pid}
            if capture_provenance:
                fresh_capture = attempt["fresh_capture"]
                assert isinstance(fresh_capture, dict)
                fresh_capture["spawn"] = {
                    "completed_at": datetime.now(UTC).isoformat(),
                    "mode": "gadget",
                    "pid": spawned_pid,
                }
            session = device.attach(spawned_pid)
        if hasattr(session, "on"):
            session.on("detached", on_detached)
        hook_source_path = hook_path if hook_path is not None else HOOK
        if not hook_source_path.is_file():
            raise FileNotFoundError(f"hook script does not exist: {hook_source_path}")
        script = session.create_script(hook_source_path.read_text(encoding="utf-8"))
        script.on("message", on_message)
        script.load()
        if spawned_pid is not None:
            device.resume(spawned_pid)
        if before_rpcs is not None:
            before_rpcs()
        metadata = load_plan.get("input_provenance", {}).get("metadata") if isinstance(load_plan.get("input_provenance"), dict) else None
        attempt["metadata"] = metadata
        attempt["metadata_present"] = metadata is not None
        library_hashes.clear()
        library_hashes.update({entry.get("name"): entry.get("sha256") for entry in load_plan.get("ordered_libraries", []) if isinstance(entry, dict)})
        (run_dir / "load-plan.json").write_text(json.dumps(load_plan, sort_keys=True, indent=2) + "\n", encoding="utf-8")
        exports = script.exports_sync

        def call_rpc(name: str, *args: object) -> object:
            result = getattr(exports, name)(*args)
            _write_jsonl(rpc_path, {"rpc": name, "result": result})
            return result

        attempt["process_abi"] = require_arm64_process(call_rpc("environment"))
        if a3_fingerprint is not None:
            call_rpc("armwatch", load_plan, a3_fingerprint)
        if load:
            call_rpc("loadgraph", load_plan)
        if load or set_data_dir or init:
            if not load:
                call_rpc("bindmetadata", load_plan)
            call_rpc("probeexports")
        if set_data_dir:
            call_rpc("setdatadir", data_dir)
        if init:
            init_result = call_rpc("init", domain_name)
            if isinstance(init_result, dict) and isinstance(init_result.get("domain_ptr"), str):
                attempt["domain_ptr"] = init_result["domain_ptr"]
        if a3_fingerprint is not None:
            call_rpc("sweepmemory")
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
        cutoff = time.monotonic() - 0.1
        attempt["fmn_touched"] = None if not event_times else any(event.get("event") == "A2_FMN_READ" and received >= cutoff for event, received in event_times)
        attempt["fetest_touched"] = None if not event_times else any(str(event.get("event", "")).startswith("A2_FETEST") and received >= cutoff for event, received in event_times)
        if dropped_events:
            _write_jsonl(events_path, {"event": "A2_EVENTS_TRUNCATED", "dropped": dropped_events, "record_cap": MAX_EVENT_RECORDS})
        (run_dir / "hooks-last-50.jsonl").write_text("".join(json.dumps(event, sort_keys=True, separators=(",", ":")) + "\n" for event in last_events), encoding="utf-8")
        (run_dir / "maps.json").write_text(json.dumps(maps, sort_keys=True, indent=2) + "\n", encoding="utf-8")
        logcat = _capture_logcat(adb, serial)
        (run_dir / "logcat.txt").write_text(str(logcat["stdout"]), encoding="utf-8")
        attempt["logcat_dump"] = {key: value for key, value in logcat.items() if key != "stdout"}
        process_abi = attempt.get("process_abi")
        process_pid = process_abi.get("pid") if isinstance(process_abi, dict) else None
        fatal_logcat = _fatal_logcat_lines(str(logcat["stdout"]), process_pid)
        if fatal_logcat:
            detached["status"] = "fatal-logcat"
            detached["fatal_logcat"] = fatal_logcat
        (run_dir / "fault.txt").write_text(json.dumps(detached, sort_keys=True) + "\n", encoding="utf-8")
        if a3_dump_dir is not None:
            (a3_dump_dir / "summary.json").write_text(
                json.dumps({"fingerprint": a3_fingerprint, "event_counts": a3_event_counts, "events": "a3-events.jsonl", "memory_hits": "memory-hits.jsonl"}, sort_keys=True, indent=2) + "\n",
                encoding="utf-8",
            )
            assert isinstance(attempt["a3"], dict)
            attempt["a3"]["event_counts"] = a3_event_counts
        attempt["finished_at"] = datetime.now(UTC).isoformat()
        attempt["fault"] = detached
        attempt["exception"] = None if error is None else f"{type(error).__name__}: {error}"
        (run_dir / "attempt.json").write_text(json.dumps(attempt, sort_keys=True, indent=2) + "\n", encoding="utf-8")


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Run A2 surface or provenance-bound A3 capture against the self-owned logic harness")
    parser.add_argument("--adb", default="adb")
    parser.add_argument("--serial")
    parser.add_argument("--graph", type=Path, default=DEFAULT_GRAPH)
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    parser.add_argument("--gadget", type=Path, help="explicit Frida Gadget for self-owned helper spawn")
    parser.add_argument("--remote-gadget", help="connect to an already-running embedded Frida Gadget listener, e.g. 127.0.0.1:27042")
    parser.add_argument("--attach-pid", type=int, help="attach to the running helper process that hosts the embedded Frida Gadget")
    parser.add_argument("--hook", type=Path, help="custom Frida hook script to load instead of the default A2 surface hook")
    parser.add_argument("--stage", action="store_true", help="invoke helper action=stage before any Frida RPC")
    parser.add_argument("--stream-dsos", action="store_true", help="stream graph DSOs directly into helper files/dso")
    parser.add_argument("--reserve-kib", type=int, default=64 * 1024)
    parser.add_argument("--device-dso-dir", default=DEFAULT_DEVICE_DSO_DIR)
    parser.add_argument("--data-dir", default=DEFAULT_DATA_DIR)
    parser.add_argument("--domain-name", default="LogicHarness")
    parser.add_argument("--metadata-state", choices=("staged", "absent"), default="staged")
    parser.add_argument("--load", action="store_true", help="call only the loadgraph RPC")
    parser.add_argument("--set-data-dir", action="store_true", help="call only the setdatadir RPC")
    parser.add_argument("--init", action="store_true", help="call only the init RPC; never implicit")
    parser.add_argument("--a3", action="store_true", help="arm provenance-bound I/O/backtrace/delta-memory A3 capture around the full exported surface")
    args = parser.parse_args(argv)

    if not (args.stage or args.stream_dsos or args.load or args.set_data_dir or args.init):
        parser.error("select at least one explicit action")
    if args.reserve_kib < 0:
        parser.error("--reserve-kib must not be negative")
    if args.metadata_state == "absent" and args.stage:
        parser.error("--metadata-state absent cannot be combined with --stage")
    if args.a3 and not (args.load and args.set_data_dir and args.init):
        parser.error("--a3 requires --load --set-data-dir --init")
    if args.a3 and args.metadata_state != "staged":
        parser.error("--a3 requires --metadata-state staged")
    if args.gadget is not None and not args.gadget.is_file():
        parser.error("--gadget must name an existing file")
    if (args.remote_gadget is None) != (args.attach_pid is None):
        parser.error("--remote-gadget and --attach-pid must be used together")
    if args.attach_pid is not None and not (args.load or args.set_data_dir or args.init):
        parser.error("--attach-pid/--remote-gadget require a surface action (--load/--set-data-dir/--init)")
    if args.attach_pid is not None and args.a3:
        parser.error("--a3 provenance capture requires gadget spawn mode, not embedded-gadget attach mode")

    graph = _graph_payload(args.graph)
    a3_fingerprint = metadata_fingerprint(args.manifest) if args.a3 else None
    sources: list[tuple[Path, str]] = []
    if args.stream_dsos or args.stage:
        # Some Android toybox builds resolve `df /data` to an unrelated mount
        # line; request the full table and let available_data_kib() select the
        # row whose mount point is exactly /data or /data/*.
        df = subprocess.run(
            adb_command(args.adb, args.serial, "shell", "df", "-k"),
            check=True,
            text=True,
            capture_output=True,
            timeout=30,
        )
        if args.stream_dsos:
            sources = _graph_sources(graph)
        require_data_space(
            available_data_kib(df.stdout),
            payload_bytes=sum(2 * source.stat().st_size for source, _ in sources) + (stage_payload_bytes(args.manifest) if args.stage else 0),
            reserve_kib=args.reserve_kib,
        )
    if args.stream_dsos:
        for source, expected_sha256 in sources:
            stream_dso_to_helper(args.adb, args.serial, source, expected_sha256=expected_sha256)
        verify_post_copy_inputs(args.adb, args.serial, graph, args.manifest, args.device_dso_dir, args.data_dir, verify_stage=False, verify_dsos=True)
    has_surface_action = args.load or args.set_data_dir or args.init
    if args.stage and not has_surface_action:
        stage_sidecar_inputs(args.adb, args.serial, args.manifest)
        stage_helper(args.adb, args.serial)
        verify_post_copy_inputs(args.adb, args.serial, graph, args.manifest, args.device_dso_dir, args.data_dir, verify_stage=True, verify_dsos=False)
    if has_surface_action:
        load_plan: dict[str, object] = {}
        before_rpcs = None
        if args.stage:
            helper_status(args.adb, args.serial)
            def stage_before_rpcs() -> None:
                stage_sidecar_inputs(args.adb, args.serial, args.manifest)
                stage_helper(args.adb, args.serial)
                verify_post_copy_inputs(args.adb, args.serial, graph, args.manifest, args.device_dso_dir, args.data_dir, verify_stage=True, verify_dsos=False)
                verified = verify_helper_inputs(args.adb, args.serial, graph, args.manifest, args.device_dso_dir, args.data_dir, metadata_state="staged")
                load_plan.update(_helper_load_plan(graph, args.device_dso_dir, verified))
            before_rpcs = stage_before_rpcs
        else:
            verified = verify_helper_inputs(args.adb, args.serial, graph, args.manifest, args.device_dso_dir, args.data_dir, metadata_state=args.metadata_state)
            load_plan.update(_helper_load_plan(graph, args.device_dso_dir, verified))
        logcat_clear = clear_logcat(args.adb, args.serial)
        execute_surface(
            args.serial,
            load_plan,
            load=args.load,
            set_data_dir=args.set_data_dir,
            init=args.init,
            data_dir=args.data_dir,
            domain_name=args.domain_name,
            adb=args.adb,
            before_rpcs=before_rpcs,
            logcat_clear=logcat_clear,
            gadget=args.gadget,
            a3_fingerprint=a3_fingerprint,
            capture_provenance=args.a3 and args.gadget is not None,
            remote_gadget=args.remote_gadget,
            attach_pid=args.attach_pid,
            hook_path=args.hook,
        )
    return 0


if __name__ == "__main__":
    sys.exit(main())
