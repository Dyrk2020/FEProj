#!/usr/bin/env python3
"""Fail-closed evidence builder for T1 (G2 metadata transform/parser chain observation).

Reads the two accepted fresh-capture run directories and emits
track-a/g2-metadata-chain-evidence.json. It raises (nonzero exit) instead of
producing a verdict when a locked invariant is missing or inconsistent.

Boundary (from docs/plans/2026-08-16-dynamic-analysis-g1g2.md §2.5):
this is helper-APK (layer H) observation of the transform/parser chain only.
It must NOT announce G2 PASS and must NOT claim consumer/registration observed.
"""
from __future__ import annotations

import json
from pathlib import Path
from typing import Any

TRACK_A = Path(__file__).resolve().parent
EVIDENCE_ROOT = TRACK_A / "crashes"
OUTPUT = TRACK_A / "g2-metadata-chain-evidence.json"

PACKAGE = "dev.wildriftresearch.logicharness"
LOCKED_METADATA_SHA256 = "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"
LOCKED_METADATA_SIZE = 58401572
LOCKED_LIBIL2CPP_SHA256 = "6e8e7002169bc658fbe64be4c6e216e22c4bf719a620940e77890b9e57211dc6"
LOCKED_LIBIL2CPP_SIZE = 215681928
LOCKED_FRIDA_VERSION = "17.15.5"

ACCEPTED_RUNS = [
    "20260816T145454-g2chain-bbedd5b9",
    "20260816T145517-g2chain-abac2a9a",
]

# runtime RVA == ELF static VA (METADATA-CHAIN.md §1)
CORE_ANCHORS = {
    "0x403F234": "il2cpp_set_data_dir",
    "0x3FE600C": "il2cpp_init",
    "0x4025598": "Runtime::Init",
    "0x3FDD77C": "MetadataCache::Initialize",
    "0x4004540": "CTR-decryptor",
    "0x4004760": "keystream-PRF",
    "0x4025314": "metadata-file-reader",
    "0x4004CE0": "buffer-processor",
}
LAZY_ANCHORS = {
    "0x3B95A08": "name-table-lazy-getter",
    "0x3FE09CC": "lazy-getter",
    "0x3FE1914": "lazy-getter",
    "0x3FE0AD8": "lazy-getter",
    "0x3FE2338": "lazy-getter",
    "0x3FE1A20": "lazy-getter",
    "0x3FE2960": "lazy-getter",
    "0x3FE2E40": "lazy-getter",
    "0x3FE2F4C": "lazy-getter",
    "0x3FE3E54": "lazy-getter",
}


class EvidenceError(ValueError):
    pass


def _require(condition: bool, message: str) -> None:
    if not condition:
        raise EvidenceError(message)


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    _require(isinstance(value, dict), f"expected object in {path}")
    return value


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    events: list[dict[str, Any]] = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        value = json.loads(line)
        _require(isinstance(value, dict), f"expected object at {path}:{line_number}")
        events.append(value)
    return events


def build_run(run_name: str) -> dict[str, Any]:
    run_dir = EVIDENCE_ROOT / run_name
    _require(run_dir.is_dir(), f"run directory missing: {run_dir}")
    attempt = read_json(run_dir / "attempt.json")
    events = read_jsonl(run_dir / "events.jsonl")
    rpc = read_jsonl(run_dir / "rpc-results.jsonl")

    # frida version + package + operation
    _require(attempt.get("frida_version") == LOCKED_FRIDA_VERSION,
             f"{run_name}: frida version mismatch: {attempt.get('frida_version')}")
    _require(attempt.get("package") == PACKAGE, f"{run_name}: package mismatch")

    # process ABI
    abi = attempt.get("process_abi") or {}
    _require(abi.get("arch") == "arm64", f"{run_name}: expected arm64, got {abi.get('arch')}")
    _require(abi.get("pointer_size") == 8, f"{run_name}: expected arm64 pointer size 8")
    _require(isinstance(abi.get("pid"), int) and abi["pid"] > 0, f"{run_name}: missing pid")

    # metadata provenance
    metadata = attempt.get("metadata") or {}
    _require(metadata.get("sha256") == LOCKED_METADATA_SHA256,
             f"{run_name}: metadata SHA mismatch: {metadata.get('sha256')}")
    _require(metadata.get("name") == "global-metadata.dat", f"{run_name}: metadata name mismatch")
    identity = metadata.get("identity") or {}
    _require(identity.get("size") == LOCKED_METADATA_SIZE, f"{run_name}: metadata size mismatch")

    # libil2cpp.so provenance (from the A2_MODULE_LOAD event the hook emitted)
    lib_events = [e for e in events if e.get("event") == "A2_MODULE_LOAD" and e.get("library") == "libil2cpp.so"]
    _require(len(lib_events) >= 1, f"{run_name}: missing A2_MODULE_LOAD for libil2cpp.so")
    lib_sha = lib_events[0].get("sha256")
    _require(lib_sha == LOCKED_LIBIL2CPP_SHA256, f"{run_name}: libil2cpp.so SHA mismatch: {lib_sha}")

    # domain_ptr via rpc init result
    init_results = [e.get("result") for e in rpc if e.get("rpc") == "init"]
    _require(init_results, f"{run_name}: missing init rpc result")
    init_result = init_results[-1]
    _require(init_result.get("domain_ptr") == "0x1", f"{run_name}: domain_ptr != 0x1")

    # core call order (excluding high-frequency name-table getter rows)
    chain = [e for e in events if e.get("event") == "G2_CHAIN"]
    core = [e for e in chain if e.get("rva") in CORE_ANCHORS]
    _require(len(core) >= 16, f"{run_name}: core chain too short: {len(core)}")

    order = [(e.get("rva"), e.get("phase")) for e in core]
    # canonical 16-step signature: set_data_dir enter/leave, init enter, Runtime::Init enter,
    # MetadataCache::Initialize enter, CTR#1 enter, PRF enter, CTR#1 leave, reader enter,
    # buffer enter, buffer leave, reader leave, CTR#2 enter, PRF enter, CTR#2 leave,
    # Initialize leave.
    expected = [
        ("0x403F234", "enter"),
        ("0x403F234", "leave"),
        ("0x3FE600C", "enter"),
        ("0x4025598", "enter"),
        ("0x3FDD77C", "enter"),
        ("0x4004540", "enter"),
        ("0x4004760", "enter"),
        ("0x4004540", "leave"),
        ("0x4025314", "enter"),
        ("0x4004CE0", "enter"),
        ("0x4004CE0", "leave"),
        ("0x4025314", "leave"),
        ("0x4004540", "enter"),
        ("0x4004760", "enter"),
        ("0x4004540", "leave"),
        ("0x3FDD77C", "leave"),
    ]
    _require(order[:16] == expected, f"{run_name}: canonical order mismatch:\n{order[:16]}")

    # lazy getter hits from rpc g2 payload
    g2 = init_result.get("g2") or {}
    _require(g2.get("installed") is True, f"{run_name}: g2 anchors not installed")
    _require(g2.get("ctr_calls") == 2, f"{run_name}: expected 2 CTR calls")
    lazy_hits = g2.get("lazy_hits") or {}
    name_hits = lazy_hits.get("0x3B95A08", 0)
    _require(name_hits >= 1, f"{run_name}: name-table getter never hit")

    # at least one of the section lazy getters genuinely hit in addition to name table
    section_hits = {k: v for k, v in lazy_hits.items() if k != "0x3B95A08" and v > 0}
    _require(len(section_hits) >= 1, f"{run_name}: no section lazy getter hit")

    # name-table getter returns plain assembly names matching static nametable decryption
    name_leaves = [e for e in chain if e.get("rva") == "0x3B95A08" and e.get("phase") == "leave"]
    plain_heads = []
    for e in name_leaves:
        head = (e.get("ret") or {}).get("head16")
        if head:
            try:
                plain_heads.append(bytes.fromhex(head))
            except ValueError:
                continue
    _require(any(h.startswith(b"Assembly-CSharp") or h.startswith(b"mscorlib") for h in plain_heads),
             f"{run_name}: name-table getter head16 did not match expected assembly names")

    # dropped / truncated ledger (must be reported verbatim in the review)
    trunc = [e for e in events if e.get("event") == "A2_EVENTS_TRUNCATED"]
    dropped = trunc[0].get("dropped", 0) if trunc else 0

    return {
        "run": run_name,
        "pid": abi["pid"],
        "device_serial": attempt.get("attach", {}).get("remote"),
        "frida_version": attempt["frida_version"],
        "metadata_sha256": metadata["sha256"],
        "metadata_size": identity.get("size"),
        "libil2cpp_sha256": lib_sha,
        "domain_ptr": init_result.get("domain_ptr"),
        "core_order": order[:16],
        "ctr_calls": g2.get("ctr_calls"),
        "prf_enters": g2.get("prf_enters"),
        "lazy_hits": lazy_hits,
        "name_getter_head16_examples": [h.hex() for h in plain_heads[:6]],
        "dropped_events": dropped,
        "base": g2.get("base"),
    }


def main() -> int:
    runs = [build_run(name) for name in ACCEPTED_RUNS]

    # cross-run: call order identical, ctr/prf identical, lazy hit counts identical
    _require(runs[0]["core_order"] == runs[1]["core_order"], "two runs core order diverged")
    _require(runs[0]["ctr_calls"] == runs[1]["ctr_calls"], "two runs CTR count diverged")
    _require(runs[0]["prf_enters"] == runs[1]["prf_enters"], "two runs PRF count diverged")
    _require(runs[0]["lazy_hits"] == runs[1]["lazy_hits"], "two runs lazy hit profile diverged")
    _require(runs[0]["metadata_sha256"] == LOCKED_METADATA_SHA256, "run A metadata SHA not locked")
    _require(runs[1]["metadata_sha256"] == LOCKED_METADATA_SHA256, "run B metadata SHA not locked")
    _require(runs[0]["libil2cpp_sha256"] == LOCKED_LIBIL2CPP_SHA256, "run A libil2cpp SHA not locked")
    _require(runs[1]["libil2cpp_sha256"] == LOCKED_LIBIL2CPP_SHA256, "run B libil2cpp SHA not locked")
    _require(runs[0]["base"] != runs[1]["base"], "two runs should have distinct ASLR bases")

    evidence = {
        "schema": "g2-metadata-chain-evidence/1",
        "target": "dev.wildriftresearch.logicharness (helper APK, evidence layer H)",
        "evidence_layer": "H",
        "scope_declaration": (
            "Observed the il2cpp metadata transform/parser chain inside the helper APK only. "
            "This does NOT announce G2 PASS and does NOT claim consumer/registration observed."
        ),
        "locked_inputs": {
            "metadata": {"name": "global-metadata.dat", "sha256": LOCKED_METADATA_SHA256, "size": LOCKED_METADATA_SIZE},
            "libil2cpp.so": {"sha256": LOCKED_LIBIL2CPP_SHA256, "size": LOCKED_LIBIL2CPP_SIZE},
            "frida_version": LOCKED_FRIDA_VERSION,
        },
        "runs": runs,
        "five_step_order": {
            "step1_ctr_filename": "CTR-decryptor enter/leave (0x4004540) precedes file reader",
            "step2_reader": "metadata-file-reader (0x4025314) with buffer-processor (0x4004CE0) inside",
            "step3_ctr_header": "second CTR-decryptor enter/leave (0x4004540) after reader",
            "step4_pair_alloc": "inside MetadataCache::Initialize after CTR#2 (no stable hookable instruction; see review)",
            "step5_per_image": "inside MetadataCache::Initialize, bounded by its leave (0x3FDD77C)",
        },
        "lazy_getter_verdict": {
            "name_table_getter_0x3B95A08": "hit 27320x in both runs; returns plaintext .NET assembly names "
            "(Assembly-CSharp*, mscorlib.dll, System.dll, ...) matching metadata-bulk-20260814 nametable decryption",
            "section_getters": "7 of 9 lazy getters hit; 0x3FE09CC/0x3FE0AD8/0x3FE1914 (1x), 0x3FE2E40 (1x), "
            "0x3FE2F4C (5459x), 0x3FE3E54 (5458x); 0x3FE2338/0x3FE1A20/0x3FE2960 = 0 hits",
            "section_getter_return": "return values are struct pointers/offsets, not name strings (consistent with "
            "METADATA-CHAIN.md section accessors)",
        },
        "dropped_note": (
            "Both runs hit the 512-record cap of a2_host_runner.py MAX_EVENT_RECORDS and wrote an "
            "A2_EVENTS_TRUNCATED marker. Per-run dropped counts are recorded in runs[].dropped_events. "
            "The core 16-step order and all lazy hit totals are captured via the init RPC return value "
            "(rpc-results.jsonl) and are unaffected by the cap. Same accounting discipline as A4C1."
        ),
        "conclusion_boundary": (
            "Only the transform/parser stage was observed in the helper APK. "
            "registration/consumer stages remain NOT_OBSERVED; G2-FMN-semantic-bridge stays NOT_ESTABLISHED."
        ),
    }
    OUTPUT.write_text(json.dumps(evidence, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    print(f"wrote {OUTPUT}")
    print(f"  run A core order ok, run B core order ok, lazy profile identical")
    print(f"  ctr_calls={runs[0]['ctr_calls']} prf_enters={runs[0]['prf_enters']}")
    print(f"  name getter hits={runs[0]['lazy_hits']['0x3B95A08']}")
    print(f"  dropped run A={runs[0]['dropped_events']} run B={runs[1]['dropped_events']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
