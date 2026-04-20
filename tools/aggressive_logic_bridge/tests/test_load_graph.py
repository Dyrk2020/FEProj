from __future__ import annotations

import hashlib
import importlib.util
import json
import struct
import sys
from pathlib import Path

import pytest


def load_mod():
    path = Path(__file__).resolve().parents[1] / "load_graph.py"
    spec = importlib.util.spec_from_file_location("load_graph", path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


def elf64_with_needed(*needed: str) -> bytes:
    strings = b"\0" + b"\0".join(name.encode("ascii") for name in needed) + b"\0"
    string_offsets = []
    cursor = 1
    for name in needed:
        string_offsets.append(cursor)
        cursor += len(name) + 1

    dynamic_offset = 0x200
    strings_offset = 0x300
    blob = bytearray(0x400)
    blob[:16] = b"\x7fELF\x02\x01\x01" + (b"\0" * 9)
    struct.pack_into(
        "<HHIQQQIHHHHHH",
        blob,
        16,
        3,
        183,
        1,
        0,
        64,
        0,
        0,
        64,
        56,
        2,
        0,
        0,
        0,
    )
    struct.pack_into("<IIQQQQQQ", blob, 64, 1, 4, 0x100, 0x400000, 0, 0x300, 0x300, 0x1000)
    struct.pack_into("<IIQQQQQQ", blob, 120, 2, 4, dynamic_offset, 0x400100, 0, 0x100, 0x100, 8)
    for index, value in enumerate(string_offsets):
        struct.pack_into("<qQ", blob, dynamic_offset + index * 16, 1, value)
    cursor = dynamic_offset + len(needed) * 16
    struct.pack_into("<qQ", blob, cursor, 5, 0x400200)
    struct.pack_into("<qQ", blob, cursor + 16, 10, len(strings))
    struct.pack_into("<qQ", blob, cursor + 32, 0, 0)
    blob[strings_offset : strings_offset + len(strings)] = strings
    return bytes(blob)


def write_locked_fixture(tmp_path: Path, needs: dict[str, tuple[str, ...]]) -> Path:
    anchors = []
    for name, dependencies in needs.items():
        path = tmp_path / name
        path.write_bytes(elf64_with_needed(*dependencies))
        digest = hashlib.sha256(path.read_bytes()).hexdigest()
        anchors.append(
            {
                "name": name,
                "path": str(path),
                "size": path.stat().st_size,
                "sha256": digest,
                "expected": digest,
                "ok": True,
            }
        )
    manifest = tmp_path / "input-manifest.json"
    manifest.write_text(json.dumps({"anchors": anchors, "all_ok": True}), encoding="utf-8")
    return manifest


def test_parses_dynamic_needed_and_orders_locked_closure(tmp_path: Path):
    graph = load_mod()
    manifest = write_locked_fixture(
        tmp_path,
        {
            "libil2cpp.so": ("libunity.so", "libc++_shared.so"),
            "libunity.so": ("libLNet.so",),
            "libLNet.so": (),
            "libtdr.so": ("libdl.so",),
            "libFEProj.so": ("libtdr.so",),
        },
    )

    result = graph.build_load_graph(manifest)

    assert graph.parse_dt_needed(tmp_path / "libil2cpp.so") == ["libunity.so", "libc++_shared.so"]
    assert [library["name"] for library in result["ordered_libraries"]] == [
        "libLNet.so",
        "libunity.so",
        "libil2cpp.so",
    ]
    assert result["dt_needed_edges"] == [
        {"source": "libtdr.so", "needed": "libdl.so", "resolution": "unresolved"},
        {"source": "libFEProj.so", "needed": "libtdr.so", "resolution": "locked"},
        {"source": "libil2cpp.so", "needed": "libunity.so", "resolution": "locked"},
        {"source": "libil2cpp.so", "needed": "libc++_shared.so", "resolution": "unresolved"},
        {"source": "libunity.so", "needed": "libLNet.so", "resolution": "locked"},
    ]
    assert result["unresolved_dependencies"] == [
        {"source": "libtdr.so", "needed": "libdl.so"},
        {"source": "libil2cpp.so", "needed": "libc++_shared.so"},
    ]


def test_rejects_manifest_dso_with_hash_mismatch(tmp_path: Path):
    graph = load_mod()
    manifest = write_locked_fixture(
        tmp_path,
        {
            "libil2cpp.so": (),
            "libunity.so": (),
            "libLNet.so": (),
            "libtdr.so": (),
            "libFEProj.so": (),
        },
    )
    payload = json.loads(manifest.read_text(encoding="utf-8"))
    payload["anchors"][0]["expected"] = "0" * 64
    manifest.write_text(json.dumps(payload), encoding="utf-8")

    with pytest.raises(ValueError, match="sha256 mismatch for libil2cpp.so"):
        graph.build_load_graph(manifest)


def test_writes_deterministic_json_from_locked_fixture(tmp_path: Path):
    graph = load_mod()
    manifest = write_locked_fixture(
        tmp_path,
        {
            "libil2cpp.so": ("libunity.so",),
            "libunity.so": (),
            "libLNet.so": (),
            "libtdr.so": (),
            "libFEProj.so": (),
        },
    )
    output = tmp_path / "load-graph.json"

    graph.main(["--manifest", str(manifest), "--output", str(output)])
    first = output.read_bytes()
    graph.main(["--manifest", str(manifest), "--output", str(output)])

    assert output.read_bytes() == first
    assert json.loads(first)["target_library"] == "libil2cpp.so"


def test_builds_feproj_minimum_locked_closure(tmp_path: Path):
    graph = load_mod()
    manifest = write_locked_fixture(
        tmp_path,
        {
            "libil2cpp.so": ("libunity.so",),
            "libunity.so": ("libLNet.so",),
            "libLNet.so": (),
            "libtdr.so": (),
            "libFEProj.so": ("libdl.so", "liblog.so", "libc.so"),
        },
    )

    result = graph.build_load_graph(manifest, target_library="libFEProj.so")

    assert result["record_type"] == "libFEProj-dt-needed-load-graph"
    assert result["target_library"] == "libFEProj.so"
    assert [library["name"] for library in result["ordered_libraries"]] == ["libFEProj.so"]
    assert [edge for edge in result["dt_needed_edges"] if edge["source"] == "libFEProj.so"] == [
        {"source": "libFEProj.so", "needed": "libdl.so", "resolution": "unresolved"},
        {"source": "libFEProj.so", "needed": "liblog.so", "resolution": "unresolved"},
        {"source": "libFEProj.so", "needed": "libc.so", "resolution": "unresolved"},
    ]
    assert [source["name"] for source in result["source_hashes"]] == ["libFEProj.so"]
