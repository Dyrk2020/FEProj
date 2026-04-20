#!/usr/bin/env python3
"""Read-only Batch-0 compatibility audit for additive coordinate bundles.

The public schema intentionally requires one coordinate ``kind/value`` pair.
Batch-3 outputs retain all four coordinate spaces in a bundle.  This adapter
projects exactly one explicitly selected coordinate into the schema shape and
never changes the source artifact.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

from jsonschema import Draft202012Validator

ROOT = Path(__file__).resolve().parent
SCHEMA = json.loads((ROOT / "research.schema.json").read_text())
KINDS = ("file_offset", "static_va", "runtime_va", "rva")
VIEWS = ("raw_elf", "xor_0x30", "aes_decoded", "runtime_remapped", "head_cipher")


def project_coordinate(bundle: dict[str, Any], *, kind: str) -> dict[str, Any]:
    if kind not in KINDS:
        raise ValueError(f"unsupported coordinate kind: {kind}")
    value = bundle.get(kind)
    if not isinstance(value, int) or value < 0:
        raise ValueError(f"selected coordinate {kind!r} is absent or invalid")
    view = bundle.get("view")
    if view not in VIEWS:
        raise ValueError("coordinate bundle has no valid view")
    return {"view": view, "kind": kind, "value": value,
            "image_base": bundle.get("image_base")}


def validate_projected(bundle: dict[str, Any], *, kind: str) -> dict[str, Any]:
    projected = project_coordinate(bundle, kind=kind)
    Draft202012Validator(SCHEMA).validate({
        "schema_version": "1.0.0", "evidence_level": "DERIVED",
        "record_type": "address_record", "artifact_id": "compatibility-check",
        "package_build": "compatibility-check", "abi": "arm64-v8a",
        "binary_sha256": "0" * 64, "source_path": "compatibility",
        "coordinate": projected, "source_slot": None, "execution_slot": None,
        "caller": None, "callee": None, "prologue_boundary": False,
    })
    return projected


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path,
                        default=Path("work/2026-08-09-remediation/final/schema-compatibility.json"))
    args = parser.parse_args()
    cases = {
        "bundle_shape": {"file_offset": 256, "static_va": 512,
                          "runtime_va": 768, "rva": 1024,
                          "image_base": 0, "view": "runtime_remapped",
                          "frame": "execution"},
        "fixed_anchor": {"file_offset": 0x158853C, "static_va": 0x158853C,
                          "runtime_va": 0x15A853C, "rva": 0x158853C,
                          "image_base": 0, "view": "runtime_remapped",
                          "frame": "execution"},
    }
    result: dict[str, Any] = {
        "schema_version": "1.0.0",
        "status": "PASS",
        "schema_preserved": True,
        "adapter": "explicit-kind projection; source bundles unchanged",
        "cases": {},
        "incompatibilities": [],
    }
    for name, bundle in cases.items():
        result["cases"][name] = {"bundle": bundle, "projections": {}}
        for kind in KINDS:
            try:
                result["cases"][name]["projections"][kind] = validate_projected(bundle, kind=kind)
            except ValueError as exc:
                result["cases"][name]["projections"][kind] = {"status": "NOT_APPLICABLE", "reason": str(exc)}
    result["incompatibilities"].append({
        "output_shape": "coordinate bundle {file_offset, static_va, runtime_va, rva, ...}",
        "schema_shape": "coordinate {kind, value, view, image_base}",
        "resolution": "select one named kind per record; do not weaken schema or infer a kind",
    })
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print(f"PASS: wrote {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
