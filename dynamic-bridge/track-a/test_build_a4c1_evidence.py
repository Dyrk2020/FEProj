from __future__ import annotations

import json
from pathlib import Path

import pytest

from build_a4c1_evidence import EvidenceError, build_evidence


METADATA_PATH = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat"
METADATA_SHA256 = "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"
LIBIL2CPP_SHA256 = "6e8e7002169bc658fbe64be4c6e216e22c4bf719a620940e77890b9e57211dc6"
HEADER_HEX = "464d4e211f00000049db9dcc2b3d9dcf"
WINDOW_HEX = (
    "607bf400047b0d0064f60101b882d9001c79db0104260300209fde0108013300"
    "28a0110288003900b0a04a0228ed0200d88d4d029cb14500743f93025c935800"
)
PREFIX_HEX = HEADER_HEX + ("00" * 24) + WINDOW_HEX
IDENTITY = {"dev": "65099", "ino": "1692515", "size": 58401572}
DEVICE = {
    "name": "OnePlus3",
    "serial": "192.168.100.11:39445",
    "state": "device",
    "manufacturer_model": "OnePlus Ace 3",
    "model": "PJE110",
    "device": "OP5CF9L1",
    "android": "16",
    "abi": "arm64-v8a",
}
DEVICE_CAPTURE = {
    "captured_at": "2026-07-17T00:00:00+00:00",
    "serial": DEVICE["serial"],
    "state": "device",
    "product": "PJE110",
    "model": "PJE110",
    "device": "OP5CF9L1",
    "device_line": f"{DEVICE['serial']} device product:PJE110 model:PJE110 device:OP5CF9L1 transport_id:1",
    "properties": {
        "ro.product.manufacturer": "OnePlus",
        "ro.vendor.oplus.market.enname": "OnePlus Ace 3",
        "ro.product.model": "PJE110",
        "ro.product.device": "OP5CF9L1",
        "ro.build.version.release": "16",
        "ro.product.cpu.abilist": "arm64-v8a,armeabi-v7a,armeabi",
    },
}


def write_run(
    root: Path,
    run_id: str,
    pid: int,
    base: str,
    *,
    identity: dict[str, object] = IDENTITY,
    include_open: bool = True,
    include_device_gate: bool = True,
    include_fresh_capture: bool = True,
    close_before_alias: bool = False,
    close_alias_before_data_plane: bool = False,
    truncate_before_alias: bool = False,
    include_library_sha: bool = True,
    fatal_logcat: bool = False,
) -> None:
    crash_dir = root / "crashes" / run_id
    dump_dir = root / "dumps" / run_id
    crash_dir.mkdir(parents=True)
    dump_dir.mkdir(parents=True)
    attempt = {
        "a3": {
            "event_counts": {"A3_FMN_FD_ALIAS": 1, "A3_METADATA_MMAP": 1},
            "fingerprint": {
                "header_hex": HEADER_HEX,
                "metadata_sha256": METADATA_SHA256,
                "metadata_size": IDENTITY["size"],
                "window": {"hex": WINDOW_HEX, "length": 64, "offset": 40},
            },
        },
        "domain_ptr": "0x1",
        "started_at": "2026-07-17T00:00:00+00:00",
        "exception": None,
        "finished_at": "2026-07-17T00:00:03+00:00",
        "fault": {"status": "normal"},
        "logcat_dump": {"status": "ok", "code": 0, "stderr": ""},
        "frida_version": "17.15.5",
        "metadata": {
            "identity": IDENTITY,
            "name": "global-metadata.dat",
            "path": METADATA_PATH,
            "sha256": METADATA_SHA256,
        },
        "metadata_present": True,
        "package": "dev.wildriftresearch.logicharness",
        "process_abi": {"arch": "arm64", "pid": pid, "pointer_size": 8},
        "spawn": {"gadget_path": "frida-gadget-17.15.5-android-arm64.so", "mode": "gadget", "pid": pid},
    }
    if include_device_gate:
        attempt["device_gate"] = DEVICE_CAPTURE
    if include_fresh_capture:
        attempt["fresh_capture"] = {
            "force_stop": {
                "command": ["shell", "am", "force-stop", "dev.wildriftresearch.logicharness"],
                "completed_at": "2026-07-17T00:00:01+00:00",
                "post_check": {
                    "command": ["shell", "pidof", "dev.wildriftresearch.logicharness"],
                    "returncode": 1,
                    "stdout": "",
                },
                "post_pids": [],
                "returncode": 0,
            },
            "spawn": {
                "completed_at": "2026-07-17T00:00:02+00:00",
                "mode": "gadget",
                "pid": pid,
            },
        }
    events = [
        {
            "api": "dup",
            "binding_source": "alias",
            "event": "A3_FMN_FD_ALIAS",
            "identity": IDENTITY,
            "metadata_sha256": METADATA_SHA256,
            "origin_api": "open",
            "origin_fd": 147,
            "path": METADATA_PATH,
            "source_binding_source": "open",
            "source_fd": 147,
            "target_fd": 581,
        },
        {
            "api": "mmap",
            "base": base,
            "binding_source": "alias",
            "caller": {"address": "0x700400159c", "module": "libil2cpp.so", "rva": "0x400159c"},
            "event": "A3_METADATA_MMAP",
            "fd": 581,
            "flags": 2,
            "identity": identity,
            "length": 58404864,
            "metadata_sha256": METADATA_SHA256,
            "offset": "0x0",
            "path": METADATA_PATH,
            "prefix_256_hex": PREFIX_HEX,
            "protection": 3,
            "thread_id": pid + 1,
        },
    ]
    if include_open:
        events.insert(
            0,
            {
                "api": "open",
                "binding_source": "open",
                "event": "A3_FMN_OPEN",
                "fd": 147,
                "identity": identity,
                "metadata_sha256": METADATA_SHA256,
                "path": METADATA_PATH,
            },
        )
    full_events = list(events)
    if close_before_alias:
        alias_index = next(index for index, event in enumerate(full_events) if event["event"] == "A3_FMN_FD_ALIAS")
        full_events.insert(alias_index, {"api": "close", "event": "A2_IO_CLOSE", "fd": 147, "result": 0})
    if close_alias_before_data_plane:
        mmap_index = next(index for index, event in enumerate(full_events) if event["event"] == "A3_METADATA_MMAP")
        full_events.insert(mmap_index, {"api": "close", "event": "A2_IO_CLOSE", "fd": 581, "result": 0})
    if truncate_before_alias:
        alias_index = next(index for index, event in enumerate(full_events) if event["event"] == "A3_FMN_FD_ALIAS")
        full_events.insert(alias_index, {"event": "A2_EVENTS_TRUNCATED", "dropped": 1, "record_cap": alias_index})
    (crash_dir / "attempt.json").write_text(json.dumps(attempt), encoding="utf-8")
    library = {"name": "libil2cpp.so", "path": "/data/user/0/pkg/files/dso/libil2cpp.so"}
    if include_library_sha:
        library["sha256"] = LIBIL2CPP_SHA256
    (crash_dir / "load-plan.json").write_text(
        json.dumps({"ordered_libraries": [library]}),
        encoding="utf-8",
    )
    (dump_dir / "a3-events.jsonl").write_text(
        "".join(json.dumps(event) + "\n" for event in events),
        encoding="utf-8",
    )
    (crash_dir / "events.jsonl").write_text(
        "".join(json.dumps(event) + "\n" for event in full_events),
        encoding="utf-8",
    )
    (crash_dir / "logcat.txt").write_text(
        f"F libc: Fatal signal 7 (SIGBUS), code 1, pid {pid} (ch.logicharness)\n" if fatal_logcat else "",
        encoding="utf-8",
    )


def test_build_evidence_classifies_repeatable_alias_mmap_as_pass(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")

    evidence = build_evidence(tmp_path, run_ids, DEVICE)

    assert evidence["schema"] == "a4c1-fd-lineage-v1"
    assert evidence["status"] == "PASS"
    assert evidence["device_gate"] == DEVICE
    assert evidence["canonical_metadata"]["identity"] == IDENTITY
    assert evidence["repeatability"]["shared_data_plane_edges"] == [
        {
            "api": "mmap",
            "binding_source": "alias",
            "caller_module": "libil2cpp.so",
            "caller_rva": "0x400159c",
            "event": "A3_METADATA_MMAP",
        }
    ]
    assert [run["pid"] for run in evidence["runs"]] == [1001, 2002]
    assert [run["data_plane"][0]["base"] for run in evidence["runs"]] == ["0x71000000", "0x72000000"]
    assert evidence["execution"]["matching_pid_fatal_signals"] == 0
    assert evidence["runs"][0]["raw_events"] == "crashes/run-1/events.jsonl"
    assert evidence["runs"][0]["raw_a3_events"] == "dumps/run-1/a3-events.jsonl"
    assert evidence["runs"][0]["raw_logcat"] == "crashes/run-1/logcat.txt"
    assert evidence["runs"][0]["ordered_event_log"] == {"dropped_events": 0, "recorded_events": 3, "truncated": False}


def test_build_evidence_rejects_event_identity_mismatch(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(
        tmp_path,
        run_ids[1],
        2002,
        "0x72000000",
        identity={"dev": "65099", "ino": "999", "size": 58401572},
    )

    with pytest.raises(EvidenceError, match="identity"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_empty_locked_markers(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    for index, run_id in enumerate(run_ids, start=1):
        write_run(tmp_path, run_id, index * 1000, f"0x7{index}000000")
        attempt_path = tmp_path / "crashes" / run_id / "attempt.json"
        attempt = json.loads(attempt_path.read_text(encoding="utf-8"))
        attempt["a3"]["fingerprint"]["header_hex"] = ""
        attempt["a3"]["fingerprint"]["window"] = {"hex": "", "length": 0, "offset": 0}
        attempt_path.write_text(json.dumps(attempt), encoding="utf-8")

    with pytest.raises(EvidenceError, match="locked header"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_missing_caller_module_and_rva(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    for index, run_id in enumerate(run_ids, start=1):
        write_run(tmp_path, run_id, index * 1000, f"0x7{index}000000")
        events_path = tmp_path / "dumps" / run_id / "a3-events.jsonl"
        events = [json.loads(line) for line in events_path.read_text(encoding="utf-8").splitlines()]
        for event in events:
            if event["event"] == "A3_METADATA_MMAP":
                event.pop("caller")
        events_path.write_text("".join(json.dumps(event) + "\n" for event in events), encoding="utf-8")

    with pytest.raises(EvidenceError, match="caller module/RVA"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_alias_without_canonical_open_ancestry(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", include_open=False)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000", include_open=False)

    with pytest.raises(EvidenceError, match="canonical open ancestry"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_missing_raw_device_gate(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", include_device_gate=False)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000", include_device_gate=False)

    with pytest.raises(EvidenceError, match="raw device gate"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_missing_fresh_capture_proof(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", include_fresh_capture=False)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000", include_fresh_capture=False)

    with pytest.raises(EvidenceError, match="fresh capture proof"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_deduplicates_mmap_wrappers(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    for index, run_id in enumerate(run_ids, start=1):
        write_run(tmp_path, run_id, index * 1000, f"0x7{index}000000")
        events_path = tmp_path / "dumps" / run_id / "a3-events.jsonl"
        events = [json.loads(line) for line in events_path.read_text(encoding="utf-8").splitlines()]
        mmap_event = next(event for event in events if event["event"] == "A3_METADATA_MMAP")
        events.append({**mmap_event, "api": "mmap64"})
        events_path.write_text("".join(json.dumps(event) + "\n" for event in events), encoding="utf-8")

    evidence = build_evidence(tmp_path, run_ids, DEVICE)

    assert evidence["status"] == "PASS"
    assert len(evidence["repeatability"]["qualifying_pass_edges"]) == 1
    assert [len(run["data_plane"]) for run in evidence["runs"]] == [1, 1]
    assert evidence["runs"][0]["data_plane"][0]["observed_apis"] == ["mmap", "mmap64"]


def test_build_evidence_rejects_missing_locked_library_sha256(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", include_library_sha=False)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000", include_library_sha=False)

    with pytest.raises(EvidenceError, match="locked library SHA-256"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_mixed_frida_toolchain(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")
    attempt_path = tmp_path / "crashes" / run_ids[1] / "attempt.json"
    attempt = json.loads(attempt_path.read_text(encoding="utf-8"))
    attempt["frida_version"] = "17.8.0"
    attempt["spawn"]["gadget_path"] = "frida-gadget-17.8.0-android-arm64.so"
    attempt_path.write_text(json.dumps(attempt), encoding="utf-8")

    with pytest.raises(EvidenceError, match="Frida toolchain"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_missing_post_force_stop_check(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")
    attempt_path = tmp_path / "crashes" / run_ids[1] / "attempt.json"
    attempt = json.loads(attempt_path.read_text(encoding="utf-8"))
    attempt["fresh_capture"]["force_stop"].pop("post_check")
    attempt_path.write_text(json.dumps(attempt), encoding="utf-8")

    with pytest.raises(EvidenceError, match="post-force-stop check"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_mismatched_raw_device_line(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")
    attempt_path = tmp_path / "crashes" / run_ids[1] / "attempt.json"
    attempt = json.loads(attempt_path.read_text(encoding="utf-8"))
    attempt["device_gate"]["device_line"] = "OTHER device product:PJE110 model:PJE110 device:OP5CF9L1"
    attempt_path.write_text(json.dumps(attempt), encoding="utf-8")

    with pytest.raises(EvidenceError, match="raw device line mismatch"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_stale_raw_device_gate(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")
    attempt_path = tmp_path / "crashes" / run_ids[1] / "attempt.json"
    attempt = json.loads(attempt_path.read_text(encoding="utf-8"))
    attempt["device_gate"]["captured_at"] = "2026-07-16T23:59:59+00:00"
    attempt_path.write_text(json.dumps(attempt), encoding="utf-8")

    with pytest.raises(EvidenceError, match="device/fresh capture timestamps"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_alias_after_canonical_fd_close(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", close_before_alias=True)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")

    with pytest.raises(EvidenceError, match="closed canonical open ancestry"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_rejects_closed_alias_before_data_plane(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", close_alias_before_data_plane=True)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")

    with pytest.raises(EvidenceError, match="alias fd was closed before data-plane use"):
        build_evidence(tmp_path, run_ids, DEVICE)


def test_build_evidence_ignores_events_after_truncation_marker(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", truncate_before_alias=True)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")

    evidence = build_evidence(tmp_path, run_ids, DEVICE)

    assert evidence["status"] == "PARTIAL"
    assert evidence["runs"][0]["ordered_event_log"]["truncated"] is True


def test_build_evidence_emits_ordered_proof_and_first_class_truncation_fields(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000")
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")
    for run_id in run_ids:
        events_path = tmp_path / "crashes" / run_id / "events.jsonl"
        events = [json.loads(line) for line in events_path.read_text(encoding="utf-8").splitlines()]
        events.insert(0, {"event": "A2_UNRELATED_EVENT"})
        cap = len(events)
        events.append({"event": "A2_EVENTS_TRUNCATED", "dropped": 575, "record_cap": cap})
        events.append({"event": "A3_FMN_OPEN", "fd": 147})
        events_path.write_text("".join(json.dumps(event) + "\n" for event in events), encoding="utf-8")

    evidence = build_evidence(tmp_path, run_ids, DEVICE)
    for run in evidence["runs"]:
        assert run["truncated"] is True
        assert run["dropped_events"] == 575
        assert run["proof_scope"] == "pre_truncation_prefix"
        assert [item["event"] for item in run["proof_sequence"]] == [
            "A3_FMN_OPEN", "A3_FMN_FD_ALIAS", "A3_METADATA_MMAP"
        ]
        assert [item["index"] for item in run["proof_sequence"]] == [1, 2, 3]
        assert [item["ordered_event_index"] for item in run["proof_sequence"]] == [1, 2, 3]
        assert all(item["truncation_boundary"] == 4 for item in run["proof_sequence"])


def test_helper_side_read_is_non_qualifying_and_does_not_gate_pass(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    for index, run_id in enumerate(run_ids, start=1):
        write_run(tmp_path, run_id, index * 1000, f"0x7{index}000000")
        events_path = tmp_path / "dumps" / run_id / "a3-events.jsonl"
        events = [json.loads(line) for line in events_path.read_text(encoding="utf-8").splitlines()]
        mmap_event = next(event for event in events if event["event"] == "A3_METADATA_MMAP")
        events.insert(0, {**mmap_event, "event": "A3_FMN_READ", "api": "read", "caller": {"module": "libjavacore.so", "rva": "0x2e4b8"}, "byte_count": 16, "prefix_256_hex": HEADER_HEX})
        events_path.write_text("".join(json.dumps(event) + "\n" for event in events), encoding="utf-8")

    evidence = build_evidence(tmp_path, run_ids, DEVICE)
    assert evidence["status"] == "PASS"
    assert any(item["reason"].startswith("helper-side") for item in evidence["repeatability"]["non_qualifying_edges"])


def test_build_evidence_rejects_matching_pid_fatal_logcat(tmp_path: Path) -> None:
    run_ids = ["run-1", "run-2"]
    write_run(tmp_path, run_ids[0], 1001, "0x71000000", fatal_logcat=True)
    write_run(tmp_path, run_ids[1], 2002, "0x72000000")

    with pytest.raises(EvidenceError, match="fatal signal in logcat"):
        build_evidence(tmp_path, run_ids, DEVICE)
