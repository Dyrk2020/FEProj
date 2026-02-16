from __future__ import annotations

import argparse
import hashlib
import json
from collections import Counter
from datetime import datetime
from pathlib import Path
from typing import Any, Iterable, Mapping, Sequence


PACKAGE = "dev.wildriftresearch.logicharness"
LOCKED_METADATA_PATH = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat"
LOCKED_METADATA_SHA256 = "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"
LOCKED_METADATA_SIZE = 58401572
LOCKED_LIBIL2CPP_SHA256 = "6e8e7002169bc658fbe64be4c6e216e22c4bf719a620940e77890b9e57211dc6"
LOCKED_FRIDA_VERSION = "17.15.5"
LOCKED_HEADER_HEX = "464d4e211f00000049db9dcc2b3d9dcf"
LOCKED_WINDOW_OFFSET = 40
LOCKED_WINDOW_HEX = (
    "607bf400047b0d0064f60101b882d9001c79db0104260300209fde0108013300"
    "28a0110288003900b0a04a0228ed0200d88d4d029cb14500743f93025c935800"
)
RELEVANT_EVENTS = {
    "A3_FMN_OPEN",
    "A3_FMN_FD_ALIAS",
    "A3_FMN_FD_REBOUND",
    "A3_FMN_READ",
    "A3_METADATA_MMAP",
}
DATA_PLANE_EVENTS = {"A3_FMN_READ", "A3_METADATA_MMAP"}
ROUTE_BINDINGS = {"alias", "fstat_rebind"}
HELPER_SIDE_MODULES = {"libjavacore.so"}
EXCLUDED_RUNS = {
    "20260716T195759.294800Z-43e19784": "diagnostic; matching-PID SIGBUS",
    "20260716T174816.549085Z-511572b8": "diagnostic; pre-deferred-mmap implementation",
    "20260716T190432.762350Z-8b2771a2": "diagnostic",
    "20260716T17.8.0": "diagnostic; stalled Frida 17.8.0 toolchain",
}
B2_BOUNDARY = "B2_MODULE_LOAD_BEGIN"



class EvidenceError(ValueError):
    pass


def _require(condition: bool, message: str) -> None:
    if not condition:
        raise EvidenceError(message)


def _read_json(path: Path) -> dict[str, Any]:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        raise EvidenceError(f"failed to read JSON {path}: {exc}") from exc
    _require(isinstance(value, dict), f"expected JSON object in {path}")
    return value


def _read_jsonl(path: Path) -> list[dict[str, Any]]:
    events: list[dict[str, Any]] = []
    try:
        lines = path.read_text(encoding="utf-8").splitlines()
    except OSError as exc:
        raise EvidenceError(f"failed to read JSONL {path}: {exc}") from exc
    for line_number, line in enumerate(lines, start=1):
        if not line.strip():
            continue
        try:
            event = json.loads(line)
        except json.JSONDecodeError as exc:
            raise EvidenceError(f"invalid JSONL {path}:{line_number}: {exc}") from exc
        _require(isinstance(event, dict), f"expected object at {path}:{line_number}")
        events.append(event)
    return events


def _identity(value: Any, context: str) -> dict[str, object]:
    _require(isinstance(value, Mapping), f"{context} identity is missing")
    try:
        return {
            "dev": str(value["dev"]),
            "ino": str(value["ino"]),
            "size": int(value["size"]),
        }
    except (KeyError, TypeError, ValueError) as exc:
        raise EvidenceError(f"{context} identity is invalid") from exc


def _event_sha256(event: Mapping[str, Any]) -> Any:
    provenance = event.get("provenance")
    nested = provenance.get("metadata_sha256") if isinstance(provenance, Mapping) else None
    return event.get("metadata_sha256") or nested


def _event_edge(event: Mapping[str, Any]) -> tuple[str, str, str, str, str]:
    caller = event.get("caller")
    caller = caller if isinstance(caller, Mapping) else {}
    event_name = str(event.get("event", ""))
    api = str(event.get("api", ""))
    if event_name == "A3_METADATA_MMAP" and api in {"mmap", "mmap64"}:
        api = "mmap"
    return (
        event_name,
        api,
        str(event.get("binding_source", "")),
        str(caller.get("module", "")),
        str(caller.get("rva", "")),
    )


def _edge_record(edge: tuple[str, str, str, str, str]) -> dict[str, str]:
    event, api, binding_source, caller_module, caller_rva = edge
    return {
        "api": api,
        "binding_source": binding_source,
        "caller_module": caller_module,
        "caller_rva": caller_rva,
        "event": event,
    }


def _decode_prefix(event: Mapping[str, Any], context: str) -> bytes:
    prefix_hex = event.get("prefix_256_hex")
    if not isinstance(prefix_hex, str) or not prefix_hex:
        return b""
    try:
        return bytes.fromhex(prefix_hex)
    except ValueError as exc:
        raise EvidenceError(f"{context} has invalid prefix_256_hex") from exc


def _prefix_matches(prefix: bytes, header: bytes, window_offset: int, window: bytes) -> bool:
    return (
        len(prefix) >= len(header)
        and prefix[: len(header)] == header
        and len(prefix) >= window_offset + len(window)
        and prefix[window_offset : window_offset + len(window)] == window
    )


def _validate_device_gate(device: Mapping[str, str]) -> dict[str, str]:
    required = {
        "name",
        "serial",
        "state",
        "manufacturer_model",
        "model",
        "device",
        "android",
        "abi",
    }
    missing = sorted(required - set(device))
    _require(not missing, f"device gate missing fields: {', '.join(missing)}")
    normalized = {key: str(device[key]) for key in required}
    _require(normalized["name"] == "OnePlus3", "device gate name must be OnePlus3")
    _require(normalized["state"] == "device", "device gate state must be device")
    _require(normalized["manufacturer_model"] == "OnePlus Ace 3", "device gate manufacturer model mismatch")
    _require(normalized["model"] == "PJE110", "device gate model mismatch")
    _require(normalized["device"] == "OP5CF9L1", "device gate device mismatch")
    _require(normalized["android"] == "16", "device gate Android version mismatch")
    _require("arm64-v8a" in normalized["abi"].split(","), "device gate must include arm64-v8a")
    return {key: normalized[key] for key in device}


def _timestamp(value: object, context: str) -> datetime:
    _require(isinstance(value, str) and bool(value), f"{context} timestamp is missing")
    try:
        parsed = datetime.fromisoformat(value)
    except ValueError as exc:
        raise EvidenceError(f"{context} timestamp is invalid") from exc
    _require(parsed.tzinfo is not None, f"{context} timestamp has no timezone")
    return parsed


def _fatal_logcat_lines(logcat: str, pid: object) -> list[str]:
    if not isinstance(pid, int) or pid <= 0:
        return []
    pid_marker = f"pid {pid} ("
    return [line for line in logcat.splitlines() if "Fatal signal " in line and pid_marker in line]


def _device_gate_from_attempt(attempt: Mapping[str, Any], context: str) -> dict[str, str]:
    capture = attempt.get("device_gate")
    _require(isinstance(capture, Mapping), f"{context} raw device gate is missing")
    _timestamp(capture.get("captured_at"), f"{context} raw device gate")
    properties = capture.get("properties")
    _require(isinstance(properties, Mapping), f"{context} raw device gate properties are missing")
    _require(properties.get("ro.product.manufacturer") == "OnePlus", f"{context} raw device manufacturer mismatch")
    market_name = properties.get("ro.vendor.oplus.market.enname") or properties.get("ro.product.marketname")
    _require(market_name == "OnePlus Ace 3", f"{context} raw device market name mismatch")
    _require(capture.get("product") == "PJE110", f"{context} raw device product mismatch")
    _require(capture.get("model") == properties.get("ro.product.model"), f"{context} raw device model sources disagree")
    _require(capture.get("device") == properties.get("ro.product.device"), f"{context} raw device code sources disagree")
    device_line = capture.get("device_line")
    line_parts = device_line.split() if isinstance(device_line, str) else []
    required_line_fields = {
        f"product:{capture.get('product')}",
        f"model:{capture.get('model')}",
        f"device:{capture.get('device')}",
    }
    _require(
        len(line_parts) >= 5
        and line_parts[0] == capture.get("serial")
        and line_parts[1] == capture.get("state")
        and required_line_fields.issubset(line_parts[2:]),
        f"{context} raw device line mismatch",
    )
    return _validate_device_gate(
        {
            "name": "OnePlus3",
            "serial": str(capture.get("serial", "")),
            "state": str(capture.get("state", "")),
            "manufacturer_model": str(market_name),
            "model": str(properties.get("ro.product.model", "")),
            "device": str(properties.get("ro.product.device", "")),
            "android": str(properties.get("ro.build.version.release", "")),
            "abi": str(properties.get("ro.product.cpu.abilist", "")),
        }
    )


def _fresh_capture_from_attempt(attempt: Mapping[str, Any], pid: object, context: str) -> dict[str, Any]:
    proof = attempt.get("fresh_capture")
    _require(isinstance(proof, Mapping), f"{context} fresh capture proof is missing")
    force_stop = proof.get("force_stop")
    spawn = proof.get("spawn")
    _require(isinstance(force_stop, Mapping), f"{context} fresh capture proof has no force-stop record")
    _require(isinstance(spawn, Mapping), f"{context} fresh capture proof has no spawn record")
    _require(
        force_stop.get("command") == ["shell", "am", "force-stop", PACKAGE],
        f"{context} fresh capture proof has an unexpected force-stop command",
    )
    _require(force_stop.get("returncode") == 0, f"{context} force-stop failed")
    post_check = force_stop.get("post_check")
    _require(isinstance(post_check, Mapping), f"{context} post-force-stop check is missing")
    _require(
        post_check.get("command") == ["shell", "pidof", PACKAGE]
        and post_check.get("returncode") in {0, 1}
        and post_check.get("stdout") == "",
        f"{context} post-force-stop check is invalid",
    )
    _require(force_stop.get("post_pids") == [], f"{context} package remained alive after force-stop")
    _require(isinstance(pid, int) and pid > 0, f"{context} spawned PID is invalid")
    _require(spawn.get("mode") == "gadget" and spawn.get("pid") == pid, f"{context} fresh capture spawn mismatch")
    attempt_spawn = attempt.get("spawn")
    _require(isinstance(attempt_spawn, Mapping) and attempt_spawn.get("pid") == pid, f"{context} attempt spawn PID mismatch")
    started_at = _timestamp(attempt.get("started_at"), f"{context} start")
    device_gate = attempt.get("device_gate")
    _require(isinstance(device_gate, Mapping), f"{context} raw device gate is missing")
    device_captured_at = _timestamp(device_gate.get("captured_at"), f"{context} raw device gate")
    force_stopped_at = _timestamp(force_stop.get("completed_at"), f"{context} force-stop")
    spawned_at = _timestamp(spawn.get("completed_at"), f"{context} spawn")
    finished_at = _timestamp(attempt.get("finished_at"), f"{context} finish")
    _require(
        started_at <= device_captured_at <= force_stopped_at <= spawned_at <= finished_at,
        f"{context} device/fresh capture timestamps are out of order",
    )
    return {
        "force_stop_completed_at": force_stop.get("completed_at"),
        "post_pids": [],
        "spawn_completed_at": spawn.get("completed_at"),
        "spawn_pid": pid,
    }


def _route_for_event(
    event: Mapping[str, Any],
    event_index: int,
    indexed_events: Sequence[tuple[int, dict[str, Any]]],
) -> dict[str, Any] | None:
    binding_source = event.get("binding_source")
    fd = event.get("fd")
    if binding_source == "alias":
        candidates = [
            (index, candidate)
            for index, candidate in indexed_events
            if index < event_index
            and candidate.get("event") == "A3_FMN_FD_ALIAS"
            and candidate.get("target_fd") == fd
        ]
        _require(candidates, f"alias data-plane fd {fd} has no preceding lineage event")
        alias_index, alias = candidates[-1]
        source_fd = alias.get("source_fd")
        _require(
            alias.get("source_binding_source") == "open"
            and alias.get("origin_api") == "open"
            and alias.get("origin_fd") == source_fd,
            f"alias data-plane fd {fd} has no canonical open ancestry",
        )
        opens = [
            (index, candidate)
            for index, candidate in indexed_events
            if index < alias_index
            and candidate.get("event") == "A3_FMN_OPEN"
            and candidate.get("fd") == source_fd
        ]
        _require(opens, f"alias data-plane fd {fd} has no canonical open ancestry")
        open_index, _ = opens[-1]
        closed = any(
            open_index < index < alias_index
            and candidate.get("event") == "A2_IO_CLOSE"
            and candidate.get("fd") == source_fd
            and candidate.get("result") == 0
            for index, candidate in indexed_events
        )
        _require(not closed, f"alias data-plane fd {fd} has closed canonical open ancestry")
        alias_closed = any(
            alias_index < index < event_index
            and candidate.get("event") == "A2_IO_CLOSE"
            and candidate.get("fd") == fd
            and candidate.get("result") == 0
            for index, candidate in indexed_events
        )
        _require(not alias_closed, f"alias fd was closed before data-plane use: {fd}")
        return {
            "api": alias.get("api"),
            "origin_api": alias.get("origin_api"),
            "origin_fd": alias.get("origin_fd"),
            "source_fd": source_fd,
            "target_fd": alias.get("target_fd"),
            "type": "alias",
        }
    if binding_source == "fstat_rebind":
        candidates = [
            candidate
            for index, candidate in indexed_events
            if index < event_index
            and candidate.get("event") == "A3_FMN_FD_REBOUND"
            and candidate.get("fd") == fd
        ]
        _require(candidates, f"fstat-rebound data-plane fd {fd} has no preceding rebound event")
        rebound = candidates[-1]
        return {"api": rebound.get("api"), "fd": rebound.get("fd"), "type": "fstat_rebind"}
    if binding_source == "open":
        return {"fd": fd, "type": "open"}
    return None


def _summarize_data_plane(
    indexed_events: Sequence[tuple[int, dict[str, Any]]],
    header: bytes,
    window_offset: int,
    window: bytes,
    context: str,
) -> tuple[list[dict[str, Any]], dict[tuple[str, str, str, str, str], dict[str, Any]]]:
    groups: dict[tuple[str, str, str, str, str], list[tuple[int, dict[str, Any], dict[str, Any] | None, bytes]]] = {}
    for event_index, event in indexed_events:
        if event.get("event") not in DATA_PLANE_EVENTS:
            continue
        edge = _event_edge(event)
        _require(bool(edge[3]) and bool(edge[4]), f"{context} data-plane caller module/RVA is missing")
        try:
            int(edge[4], 0)
        except ValueError as exc:
            raise EvidenceError(f"{context} data-plane caller module/RVA is invalid") from exc
        route = _route_for_event(event, event_index, indexed_events)
        prefix = _decode_prefix(event, context)
        groups.setdefault(edge, []).append((event_index, event, route, prefix))

    summaries: list[dict[str, Any]] = []
    group_index: dict[tuple[str, str, str, str, str], dict[str, Any]] = {}
    for edge in sorted(groups):
        observations = groups[edge]
        matching = [item for item in observations if _prefix_matches(item[3], header, window_offset, window)]
        _, representative, route, prefix = matching[0] if matching else observations[0]
        caller = representative.get("caller")
        caller = caller if isinstance(caller, Mapping) else {}
        helper_side = (
            edge[0] == "A3_FMN_READ"
            and edge[3] in HELPER_SIDE_MODULES
        )
        summary: dict[str, Any] = {
            **_edge_record(edge),
            "binding_route": route,
            "qualifying": not helper_side,
            "qualification": "non_qualifying_helper_side_read" if helper_side else "candidate_data_plane",
            "byte_count": representative.get("byte_count"),
            "count": len(observations),
            "fd": representative.get("fd"),
            "identity": representative.get("identity"),
            "locked_prefix_matches": bool(matching),
            "metadata_sha256": _event_sha256(representative),
            "path": representative.get("path"),
            "prefix_256_hex": prefix.hex() if prefix else None,
            "prefix_256_sha256": hashlib.sha256(prefix).hexdigest() if prefix else None,
            "thread_id": representative.get("thread_id"),
        }
        observed_apis = sorted({str(item[1].get("api", "")) for item in observations})
        if len(observed_apis) > 1:
            summary["observed_apis"] = observed_apis
        for key in ("base", "flags", "length", "offset", "protection"):
            if key in representative:
                summary[key] = representative[key]
        summaries.append(summary)
        group_index[edge] = summary
    return summaries, group_index


def _validate_run(root: Path, run_id: str) -> tuple[dict[str, Any], dict[tuple[str, str, str, str, str], dict[str, Any]]]:
    crash_dir = root / "crashes" / run_id
    dump_dir = root / "dumps" / run_id
    attempt_path = crash_dir / "attempt.json"
    attempt = _read_json(attempt_path)
    load_plan_path = crash_dir / str(attempt.get("load_plan_path", "load-plan.json"))
    load_plan = _read_json(load_plan_path)
    a3_events_path = dump_dir / "a3-events.jsonl"
    ordered_events_path = crash_dir / "events.jsonl"
    a3_events = _read_jsonl(a3_events_path)
    events = _read_jsonl(ordered_events_path)
    context = f"run {run_id}"
    truncation_markers = [(index, event) for index, event in enumerate(events) if event.get("event") == "A2_EVENTS_TRUNCATED"]
    _require(len(truncation_markers) <= 1, f"{context} ordered event log has multiple truncation markers")
    if truncation_markers:
        truncation_index, truncation = truncation_markers[0]
        _require(
            truncation.get("record_cap") == truncation_index
            and isinstance(truncation.get("dropped"), int)
            and truncation.get("dropped") > 0,
            f"{context} ordered event truncation marker is invalid",
        )
        ordered_event_log = {
            "dropped_events": truncation.get("dropped"),
            "recorded_events": truncation_index,
            "truncated": True,
        }
        events = events[:truncation_index]
    else:
        ordered_event_log = {"dropped_events": 0, "recorded_events": len(events), "truncated": False}

    _require(attempt.get("package") == PACKAGE, f"{context} package mismatch")
    spawn_record = attempt.get("spawn")
    _require(attempt.get("frida_version") == LOCKED_FRIDA_VERSION, f"{context} Frida toolchain version mismatch")
    _require(
        isinstance(spawn_record, Mapping)
        and str(spawn_record.get("gadget_path", "")).replace("\\", "/").rsplit("/", 1)[-1] == f"frida-gadget-{LOCKED_FRIDA_VERSION}-android-arm64.so",
        f"{context} Frida toolchain Gadget mismatch",
    )
    captured_device_gate = _device_gate_from_attempt(attempt, context)
    _require(attempt.get("metadata_present") is True, f"{context} metadata is absent")
    _require(attempt.get("exception") is None, f"{context} has a host exception")
    fault = attempt.get("fault")
    _require(isinstance(fault, Mapping) and fault.get("status") == "normal", f"{context} fault status is not normal")
    _require(attempt.get("domain_ptr") not in (None, "0x0", "0"), f"{context} domain pointer is null")

    process_abi = attempt.get("process_abi")
    _require(isinstance(process_abi, Mapping), f"{context} process ABI is missing")
    _require(process_abi.get("arch") == "arm64", f"{context} process is not arm64")
    _require(process_abi.get("pointer_size") == 8, f"{context} pointer size is not 8")
    logcat_dump = attempt.get("logcat_dump")
    _require(
        isinstance(logcat_dump, Mapping) and logcat_dump.get("status") == "ok" and logcat_dump.get("code") == 0,
        f"{context} logcat capture is incomplete",
    )
    logcat_path = crash_dir / "logcat.txt"
    _require(logcat_path.is_file(), f"{context} raw logcat is missing")
    fatal_logcat = _fatal_logcat_lines(logcat_path.read_text(encoding="utf-8"), process_abi.get("pid"))
    _require(not fatal_logcat, f"{context} fatal signal in logcat: {fatal_logcat[0] if fatal_logcat else ''}")
    fresh_capture = _fresh_capture_from_attempt(attempt, process_abi.get("pid"), context)

    metadata = attempt.get("metadata")
    _require(isinstance(metadata, Mapping), f"{context} metadata record is missing")
    metadata_identity = _identity(metadata.get("identity"), context)
    metadata_sha256 = metadata.get("sha256")
    metadata_path = metadata.get("path")
    _require(metadata_sha256 == LOCKED_METADATA_SHA256, f"{context} locked metadata SHA-256 mismatch")
    _require(metadata_path == LOCKED_METADATA_PATH, f"{context} locked canonical path mismatch")
    _require(metadata_identity["size"] == LOCKED_METADATA_SIZE, f"{context} locked metadata size mismatch")

    a3 = attempt.get("a3")
    fingerprint = a3.get("fingerprint") if isinstance(a3, Mapping) else None
    _require(isinstance(fingerprint, Mapping), f"{context} fingerprint is missing")
    _require(fingerprint.get("metadata_sha256") == metadata_sha256, f"{context} fingerprint SHA-256 mismatch")
    _require(fingerprint.get("metadata_size") == metadata_identity["size"], f"{context} fingerprint size mismatch")
    header_hex = fingerprint.get("header_hex")
    window_record = fingerprint.get("window")
    _require(isinstance(header_hex, str), f"{context} fingerprint header is missing")
    _require(isinstance(window_record, Mapping), f"{context} fingerprint window is missing")
    try:
        header = bytes.fromhex(header_hex)
        window = bytes.fromhex(str(window_record["hex"]))
        window_offset = int(window_record["offset"])
    except (KeyError, TypeError, ValueError) as exc:
        raise EvidenceError(f"{context} fingerprint bytes are invalid") from exc
    _require(len(window) == int(window_record.get("length", -1)), f"{context} fingerprint window length mismatch")
    _require(header.hex() == LOCKED_HEADER_HEX, f"{context} locked header mismatch")
    _require(window_offset == LOCKED_WINDOW_OFFSET, f"{context} locked window offset mismatch")
    _require(window.hex() == LOCKED_WINDOW_HEX, f"{context} locked window mismatch")

    libraries = load_plan.get("ordered_libraries")
    _require(isinstance(libraries, list), f"{context} load plan is missing libraries")
    names = [library.get("name") for library in libraries if isinstance(library, Mapping)]
    _require(names == ["libil2cpp.so"], f"{context} load plan is not locked to libil2cpp.so")
    library = libraries[0]
    _require(
        isinstance(library, Mapping) and library.get("sha256") == LOCKED_LIBIL2CPP_SHA256,
        f"{context} locked library SHA-256 mismatch",
    )
    input_metadata = load_plan.get("input_provenance", {}).get("metadata") if isinstance(load_plan.get("input_provenance"), Mapping) else None
    if isinstance(input_metadata, Mapping):
        _require(input_metadata.get("sha256") == metadata_sha256, f"{context} load-plan SHA-256 mismatch")
        _require(_identity(input_metadata.get("identity"), context) == metadata_identity, f"{context} load-plan identity mismatch")

    indexed_events = list(enumerate(events))
    relevant = [(index, event) for index, event in indexed_events if event.get("event") in RELEVANT_EVENTS]
    for _, event in relevant:
        event_name = event.get("event")
        _require(_identity(event.get("identity"), f"{context} {event_name}") == metadata_identity, f"{context} {event_name} identity mismatch")
        _require(_event_sha256(event) == metadata_sha256, f"{context} {event_name} SHA-256 mismatch")
        _require(event.get("path") == metadata_path, f"{context} {event_name} path mismatch")
    for event in a3_events:
        if event.get("event") in DATA_PLANE_EVENTS:
            caller = event.get("caller")
            _require(isinstance(caller, Mapping) and caller.get("module") and caller.get("rva"), f"{context} data-plane caller module/RVA is missing")

    aliases = [
        {
            "api": event.get("api"),
            "origin_api": event.get("origin_api"),
            "origin_fd": event.get("origin_fd"),
            "source_fd": event.get("source_fd"),
            "target_fd": event.get("target_fd"),
        }
        for _, event in relevant
        if event.get("event") == "A3_FMN_FD_ALIAS"
    ]
    rebounds = [
        {"api": event.get("api"), "fd": event.get("fd")}
        for _, event in relevant
        if event.get("event") == "A3_FMN_FD_REBOUND"
    ]
    analysis_indexed_events = list(indexed_events)
    if not ordered_event_log["truncated"]:
        for event in a3_events:
            if event.get("event") in DATA_PLANE_EVENTS and event not in events:
                analysis_indexed_events.append((len(analysis_indexed_events), event))
    data_plane, edge_groups = _summarize_data_plane(analysis_indexed_events, header, window_offset, window, context)
    alias_candidates = [
        (index, event) for index, event in indexed_events
        if event.get("event") == "A3_FMN_FD_ALIAS"
    ]
    proof_alias_index, proof_alias = alias_candidates[0] if alias_candidates else (None, {})
    proof_source_fd = proof_alias.get("source_fd")
    proof_target_fd = proof_alias.get("target_fd")
    proof_events = [
        (index, event) for index, event in indexed_events
        if (
            event.get("event") == "A3_FMN_OPEN" and event.get("fd") == proof_source_fd
        ) or event.get("event") == "A3_FMN_FD_ALIAS" and index == proof_alias_index
        or (
            event.get("event") == "A3_METADATA_MMAP" and event.get("fd") == proof_target_fd
        )
    ]
    proof_sequence = []
    for index, event in proof_events:
        caller = event.get("caller") if isinstance(event.get("caller"), Mapping) else {}
        proof_sequence.append({
            "index": index,
            "ordered_event_index": index,
            "event": event.get("event"),
            "api": event.get("api"),
            "fd": event.get("fd"),
            "source_fd": event.get("source_fd"),
            "target_fd": event.get("target_fd"),
            "caller_module": caller.get("module"),
            "caller_rva": caller.get("rva"),
            "offset": event.get("offset"),
            "truncation_boundary": ordered_event_log.get("recorded_events") if ordered_event_log.get("truncated") else None,
        })
    event_counts = Counter(str(event.get("event")) for event in a3_events if str(event.get("event", "")).startswith("A3_"))
    run_record = {
        "run_id": run_id,
        "raw_attempt": f"crashes/{run_id}/attempt.json",
        "raw_events": f"crashes/{run_id}/events.jsonl",
        "raw_a3_events": f"dumps/{run_id}/a3-events.jsonl",
        "raw_load_plan": f"crashes/{run_id}/{load_plan_path.name}",
        "raw_logcat": f"crashes/{run_id}/logcat.txt",
        "ordered_event_log": ordered_event_log,
        "truncated": ordered_event_log["truncated"],
        "dropped_events": ordered_event_log["dropped_events"],
        "proof_scope": "pre_truncation_prefix" if ordered_event_log["truncated"] else "complete_run",
        "truncation_boundary": ordered_event_log["recorded_events"] if ordered_event_log["truncated"] else None,
        "proof_sequence": proof_sequence,
        "captured_device_gate": captured_device_gate,
        "fresh_capture": fresh_capture,
        "arch": process_abi.get("arch"),
        "pointer_size": process_abi.get("pointer_size"),
        "pid": process_abi.get("pid"),
        "fault_status": fault.get("status"),
        "domain_ptr": attempt.get("domain_ptr"),
        "started_at": attempt.get("started_at"),
        "finished_at": attempt.get("finished_at"),
        "frida_version": attempt.get("frida_version"),
        "gadget_path": attempt.get("spawn", {}).get("gadget_path") if isinstance(attempt.get("spawn"), Mapping) else None,
        "locked_library": {
            "name": library.get("name"),
            "path": library.get("path"),
            "sha256": library.get("sha256"),
        },
        "metadata": {
            "header_hex": header_hex,
            "identity": metadata_identity,
            "path": metadata_path,
            "sha256": metadata_sha256,
            "size": metadata_identity["size"],
            "window": {"hex": window.hex(), "length": len(window), "offset": window_offset},
        },
        "event_counts": dict(sorted(event_counts.items())),
        "fd_aliases": aliases,
        "fd_rebounds": rebounds,
        "data_plane": data_plane,
    }
    return run_record, edge_groups


def build_evidence(root: Path, run_ids: Sequence[str], device: Mapping[str, str]) -> dict[str, Any]:
    root = Path(root)
    _require(len(run_ids) == 2, "exactly two run IDs are required")
    _require(len(set(run_ids)) == 2, "run IDs must be distinct")
    device_gate = _validate_device_gate(device)

    validated = [_validate_run(root, run_id) for run_id in run_ids]
    runs = [run for run, _ in validated]
    edge_groups = [groups for _, groups in validated]
    for run in runs:
        captured = run["captured_device_gate"]
        for key in ("serial", "state", "manufacturer_model", "model", "device", "android"):
            _require(captured[key] == device_gate[key], f"run {run['run_id']} raw device gate {key} differs from requested gate")
        _require("arm64-v8a" in captured["abi"].split(","), f"run {run['run_id']} raw device gate ABI mismatch")
    _require(len({run["pid"] for run in runs}) == 2, "fresh captures must have distinct PIDs")

    first_metadata = runs[0]["metadata"]
    for run in runs[1:]:
        _require(run["metadata"]["path"] == first_metadata["path"], "canonical metadata path differs across runs")
        _require(run["metadata"]["sha256"] == first_metadata["sha256"], "canonical metadata SHA-256 differs across runs")
        _require(run["metadata"]["header_hex"] == first_metadata["header_hex"], "canonical metadata header differs across runs")
        _require(run["metadata"]["window"] == first_metadata["window"], "canonical metadata window differs across runs")

    shared_edges = set(edge_groups[0]).intersection(edge_groups[1])
    shared_edge_records = [_edge_record(edge) for edge in sorted(shared_edges)]
    non_qualifying_edges = [
        {**_edge_record(edge), "reason": "helper-side libjavacore A3_FMN_READ"}
        for edge in sorted(shared_edges)
        if edge[0] == "A3_FMN_READ" and edge[3] in HELPER_SIDE_MODULES
    ]
    qualifying_edges = [
        edge
        for edge in sorted(shared_edges)
        if edge[2] in ROUTE_BINDINGS
        and edge not in {item for item in shared_edges if item[0] == "A3_FMN_READ" and item[3] in HELPER_SIDE_MODULES}
        and all(groups[edge]["binding_route"] is not None for groups in edge_groups)
        and all(groups[edge]["locked_prefix_matches"] for groups in edge_groups)
    ]
    route_type_sets: list[set[str]] = []
    for run in runs:
        route_types: set[str] = set()
        for observation in run["data_plane"]:
            route = observation.get("binding_route")
            if isinstance(route, Mapping):
                route_types.add(str(route["type"]))
        route_type_sets.append(route_types)
    shared_route_types = sorted(route_type_sets[0].intersection(route_type_sets[1]))

    if qualifying_edges:
        status = "PASS"
        status_reason = (
            "Two normal physical arm64 captures show the same provenance-bound data-plane edge in each ordered "
            "raw-event prefix, with an explicit live fd route, stable module/RVA, locked inputs, and no matching-PID fatal logcat."
        )
    elif shared_route_types and any(route in ROUTE_BINDINGS for route in shared_route_types):
        status = "PARTIAL"
        status_reason = "Two normal captures show a repeatable fd alias or rebind route but no qualifying shared data-plane edge."
    elif all(not run["fd_aliases"] and not run["fd_rebounds"] and not run["data_plane"] for run in runs):
        status = "NEGATIVE"
        status_reason = "Two normal captures show no fd alias, rebind, bound read, or bound mmap event."
    else:
        status = "PARTIAL"
        status_reason = "The two normal captures contain A4C1 observations, but they do not satisfy the repeatable PASS edge."

    identities = [run["metadata"]["identity"] for run in runs]
    canonical_identity = identities[0] if all(identity == identities[0] for identity in identities[1:]) else None
    return {
        "schema": "a4c1-fd-lineage-v1",
        "status": status,
        "status_reason": status_reason,
        "generated_from": {
            "builder": "build_a4c1_evidence.py",
            "run_ids": list(run_ids),
        },
        "device_gate": device_gate,
        "scope": {
            "target_package": PACKAGE,
            "minimum_graph": ["libil2cpp.so"],
            "official_package_attached": False,
            "undocumented_va_called": False,
            "additional_dso_loaded": False,
        },
        "execution": {
            "force_stopped_before_each_run": True,
            "flags": ["--stream-dsos", "--stage", "--load", "--set-data-dir", "--init", "--a3"],
            "required_runs": 2,
            "normal_runs": 2,
            "distinct_pids": True,
            "matching_pid_fatal_signals": 0,
            "ordered_event_prefixes_validated": True,
        },
        "canonical_metadata": {
            "header_hex": first_metadata["header_hex"],
            "identities_by_run": {run["run_id"]: run["metadata"]["identity"] for run in runs},
            "identity": canonical_identity,
            "path": first_metadata["path"],
            "sha256": first_metadata["sha256"],
            "size": first_metadata["size"],
            "window": first_metadata["window"],
        },
        "repeatability": {
        "qualifying_pass_edges": [_edge_record(edge) for edge in qualifying_edges],
        "non_qualifying_edges": non_qualifying_edges,
        "shared_data_plane_edges": shared_edge_records,
            "shared_route_types": shared_route_types,
            "stable_absolute_addresses_required": False,
            "stable_pid_required": False,
        },
        "runs": runs,
        "next_action": (
            "Stop A4C1 after synchronizing this generated evidence and review. Any FILE I/O, raw syscall, or page-access "
            "observation requires a separate plan."
        ),
    }


def _parse_args(argv: Iterable[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Build synchronized A4C1 evidence from exactly two raw captures.")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parent)
    parser.add_argument("--run", action="append", required=True, dest="run_ids")
    parser.add_argument("--output", type=Path)
    parser.add_argument("--device-name", required=True)
    parser.add_argument("--serial", required=True)
    parser.add_argument("--state", required=True)
    parser.add_argument("--manufacturer-model", required=True)
    parser.add_argument("--model", required=True)
    parser.add_argument("--device", required=True)
    parser.add_argument("--android", required=True)
    parser.add_argument("--abi", required=True)
    return parser.parse_args(argv)


def main(argv: Iterable[str] | None = None) -> int:
    args = _parse_args(argv)
    output = args.output or args.root / "a4c1-evidence.json"
    device = {
        "name": args.device_name,
        "serial": args.serial,
        "state": args.state,
        "manufacturer_model": args.manufacturer_model,
        "model": args.model,
        "device": args.device,
        "android": args.android,
        "abi": args.abi,
    }
    try:
        evidence = build_evidence(args.root, args.run_ids, device)
    except EvidenceError as exc:
        raise SystemExit(f"A4C1 evidence error: {exc}") from exc
    output.write_text(json.dumps(evidence, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(f"{evidence['status']}: {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
