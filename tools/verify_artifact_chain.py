#!/usr/bin/env python3
"""Read-only verifier for the 2026-08 artifact chain.

Historical inputs are never reconstructed. Missing or unusable historical inputs are
reported as ``historical_unavailable``.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
from pathlib import Path
from typing import Any, Iterator

PRINTABLE_RUN = re.compile(rb"[ -~]{4,}")
SHA256 = re.compile(r"^[0-9a-fA-F]{64}$")
EXTERNAL_PATH = re.compile(
    r"(?:^|[\s\"'=:([,{])((?:<scratch-workspace>/|/tmp/|[C-Fc-f]:[\\/])[^\s\"'`,;)}\]]*)"
)
REQUIRED_STATIC = {
    "manifest": "work/static-analysis-2026-08-04/MANIFEST.json",
    "catalog": "work/static-analysis-2026-08-04/island-catalog.jsonl",
    "edges": "work/static-analysis-2026-08-04/edges.json",
    "strings": "work/static-analysis-2026-08-04/strings.jsonl",
    "registry": "work/static-analysis-2026-08-04/registry-dump.json",
    "lua_api": "work/static-analysis-2026-08-04/fe-lua-api.json",
    "runtime_layout": "work/static-analysis-2026-08-04/runtime-layout.json",
}


def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def status(path: Path) -> dict[str, Any]:
    if not path.is_file():
        return {"status": "historical_unavailable", "path": str(path),
                "reason": "historical input is absent or not a usable file; no command inferred"}
    return {"status": "available", "path": str(path), "size": path.stat().st_size,
            "sha256": digest(path)}


def json_load(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def jsonl_count(path: Path) -> int:
    return sum(1 for line in path.open(encoding="utf-8") if line.strip())


def _iter_strings(value: Any, location: str = "$") -> Iterator[tuple[str, str]]:
    if isinstance(value, dict):
        for key, child in value.items():
            yield from _iter_strings(child, f"{location}.{key}")
    elif isinstance(value, list):
        for index, child in enumerate(value):
            yield from _iter_strings(child, f"{location}[{index}]")
    elif isinstance(value, str):
        yield location, value


def _external_path(value: str) -> bool:
    return (value.startswith("<scratch-workspace>/") or value.startswith("/tmp/") or
            bool(re.match(r"^[C-Fc-f]:[\\/]", value)))


def _find_external(value: Any, source: str, location: str = "$") -> Iterator[dict[str, Any]]:
    for nested_location, text in _iter_strings(value, location):
        candidates = [text] if _external_path(text) else [m.group(1) for m in EXTERNAL_PATH.finditer(text)]
        for path_text in dict.fromkeys(candidates):
            path = Path(path_text)
            yield {"source": source, "location": nested_location, "path": path_text,
                   "status": "available" if path.is_file() else "historical_unavailable"}


def _resolve_recorded_path(root: Path, value: Any) -> Path | None:
    if not isinstance(value, str) or not value or value == "-":
        return None
    path = Path(value)
    return path if path.is_absolute() else root / path


def _hash_checks(root: Path, rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    checks = []
    for row in rows:
        artifact_id = row.get("artifact_id")
        for field, hash_field in (("input_path", "input_sha256"), ("output_path", "output_sha256")):
            path = _resolve_recorded_path(root, row.get(field))
            if path is None:
                continue
            recorded = row.get(hash_field)
            item: dict[str, Any] = {"artifact_id": artifact_id, "field": field,
                                    "path": str(path), "recorded_sha256": recorded}
            if not path.is_file():
                item.update(status="historical_unavailable",
                            reason="referenced path is absent or not a usable file")
            else:
                actual = digest(path)
                item["actual_sha256"] = actual
                if recorded is None:
                    item.update(status="unrecorded",
                                reason="file is available but no SHA-256 was recorded")
                elif not isinstance(recorded, str) or SHA256.fullmatch(recorded) is None:
                    item.update(status="invalid_recorded_hash",
                                reason="recorded value is not a 64-hex-digit SHA-256")
                else:
                    item["status"] = "match" if recorded == actual else "mismatch"
            checks.append(item)
    return checks


def verify(root: Path) -> dict[str, Any]:
    manifest_path = root / "artifacts/2026-08-artifact-manifest.jsonl"
    rows: list[dict[str, Any]] = []
    if manifest_path.is_file():
        for line in manifest_path.read_text(encoding="utf-8").splitlines():
            if line.lstrip().startswith("{"):
                try:
                    rows.append(json.loads(line))
                except json.JSONDecodeError:
                    pass
    anchors = {}
    for row in rows:
        name = row.get("artifact_id")
        if name:
            anchors[name] = {key: row.get(key) for key in
                             ("input_path", "input_sha256", "output_path", "output_sha256", "status")}

    files = {key: status(root / rel) for key, rel in REQUIRED_STATIC.items()}
    metrics: dict[str, Any] = {"definitions": {
        "catalog_rows": "non-empty JSONL rows in island-catalog.jsonl",
        "edge_rows": "edges.count when present, otherwise edges list length",
        "string_rows": "non-empty JSONL rows in strings.jsonl",
        "printable_ascii_runs": "runs matching [ -~]{4,} in raw strings.jsonl bytes",
        "registry_entries": "top-level list length or object entries/records/count",
        "lua_api_entries": "top-level list length or object entries/apis/count",
        "runtime_layout_entries": "top-level list length or object entries/layout/count",
    }}
    cat = root / REQUIRED_STATIC["catalog"]
    edges = root / REQUIRED_STATIC["edges"]
    strings = root / REQUIRED_STATIC["strings"]
    metrics["catalog_rows"] = jsonl_count(cat) if cat.is_file() else None
    metrics["edge_rows"] = None
    if edges.is_file():
        obj = json_load(edges)
        metrics["edge_rows"] = obj.get("count", len(obj.get("edges", []))) if isinstance(obj, dict) else len(obj)
    metrics["string_rows"] = jsonl_count(strings) if strings.is_file() else None
    metrics["printable_ascii_runs"] = len(PRINTABLE_RUN.findall(strings.read_bytes())) if strings.is_file() else None
    static_values: dict[str, Any] = {}
    for key in ("registry", "lua_api", "runtime_layout"):
        path = root / REQUIRED_STATIC[key]
        metrics[key + "_entries"] = None
        if path.is_file():
            obj = json_load(path)
            static_values[key] = obj
            if isinstance(obj, list):
                metrics[key + "_entries"] = len(obj)
            elif isinstance(obj, dict):
                for candidate in ("entries", "records", "apis", "layout", "count"):
                    if candidate in obj:
                        value = obj[candidate]
                        metrics[key + "_entries"] = value if isinstance(value, int) else len(value)
                        break

    external: list[dict[str, Any]] = []
    for row_number, row in enumerate(rows):
        external.extend(_find_external(row, "manifest", f"$[{row_number}]"))
    for key, obj in static_values.items():
        external.extend(_find_external(obj, f"required_static:{key}"))
    # Include JSONL static rows too; these are static inputs even though they are line-oriented.
    for key in ("catalog", "strings"):
        path = root / REQUIRED_STATIC[key]
        if path.is_file():
            for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
                try:
                    external.extend(_find_external(json.loads(line), f"required_static:{key}", f"$[{line_number}]"))
                except json.JSONDecodeError:
                    external.extend(_find_external(line, f"required_static:{key}", f"$[{line_number}]"))

    hash_checks = _hash_checks(root, rows)
    static_runtime = {"static_view": "raw | XOR-0x30 per historical manifest; coordinate semantics are not rewritten",
                      "runtime_view": "runtime-remapped observations are separate; no runtime input is synthesized",
                      "manifest_fields": {"package_build": "7.2.0.2460 / 7246064", "abi": "arm64-v8a",
                                          "frida_host_historical": "17.8.0", "frida_host_accepted": "17.15.5"}}
    return {"schema_version": "1.1.0", "verifier": "artifact-chain-readonly", "manifest": status(manifest_path),
            "anchors": anchors, "static_inputs": files, "metrics": metrics, "external_paths": external,
            "hash_checks": hash_checks, "hash_mismatches": [c for c in hash_checks if c["status"] == "mismatch"],
            "hash_unrecorded": [c for c in hash_checks if c["status"] == "unrecorded"],
            "hash_invalid": [c for c in hash_checks if c["status"] == "invalid_recorded_hash"],
            "input_output_hash_checks": "recorded SHA-256 is compared with the actual hash for every usable referenced file",
            "static_runtime_views": static_runtime,
            "historical_unavailable_policy": "stub/report only; no inferred command is emitted"}


def main() -> int:
    parser = argparse.ArgumentParser(description="Verify artifact provenance without rewriting historical inputs.")
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--output", type=Path)
    parser.add_argument("--check", action="store_true",
                        help="return non-zero when an available file hash mismatches a recorded SHA-256")
    args = parser.parse_args()
    report = verify(args.root.resolve())
    text = json.dumps(report, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding="utf-8")
    else:
        print(text, end="")
    if args.check and report["hash_mismatches"]:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
