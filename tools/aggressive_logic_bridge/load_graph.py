from __future__ import annotations

import argparse
import hashlib
import json
import struct
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

ROOT = Path(__file__).resolve().parents[2]
DEFAULT_MANIFEST = ROOT / "work/aggressive-logic-bridge-2026-07-13/input-manifest.json"
DEFAULT_OUTPUT = ROOT / "work/aggressive-logic-bridge-2026-07-13/track-a/load-graph.json"
LOCKED_DSO_NAMES = (
    "libtdr.so",
    "libLNet.so",
    "libFEProj.so",
    "libil2cpp.so",
    "libunity.so",
)
PT_LOAD = 1
PT_DYNAMIC = 2
DT_NULL = 0
DT_NEEDED = 1
DT_STRTAB = 5
DT_STRSZ = 10


@dataclass(frozen=True)
class LockedDso:
    name: str
    path: Path
    size: int
    sha256: str


@dataclass(frozen=True)
class LoadSegment:
    offset: int
    vaddr: int
    filesz: int


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _check_range(data: bytes, offset: int, length: int, label: str) -> None:
    if offset < 0 or length < 0 or offset + length > len(data):
        raise ValueError(f"{label} extends beyond ELF input")


def _file_offset_for_va(segments: Iterable[LoadSegment], address: int) -> int:
    for segment in segments:
        if segment.vaddr <= address < segment.vaddr + segment.filesz:
            return segment.offset + address - segment.vaddr
    raise ValueError("DT_STRTAB is not backed by a PT_LOAD file range")


def parse_dt_needed(path: Path) -> list[str]:
    """Return DT_NEEDED names from an ELF64 little-endian dynamic segment."""
    data = path.read_bytes()
    if len(data) < 64 or data[:4] != b"\x7fELF" or data[4] != 2 or data[5] != 1:
        raise ValueError("expected ELF64 little-endian input")

    phoff = struct.unpack_from("<Q", data, 32)[0]
    phentsize, phnum = struct.unpack_from("<HH", data, 54)
    if phentsize < 56:
        raise ValueError("ELF program header entries are too small")
    _check_range(data, phoff, phentsize * phnum, "ELF program header table")

    loads: list[LoadSegment] = []
    dynamic_ranges: list[tuple[int, int]] = []
    for index in range(phnum):
        entry = phoff + index * phentsize
        p_type, _, p_offset, p_vaddr, _, p_filesz, _, _ = struct.unpack_from("<IIQQQQQQ", data, entry)
        _check_range(data, p_offset, p_filesz, "ELF program segment")
        if p_type == PT_LOAD and p_filesz:
            loads.append(LoadSegment(p_offset, p_vaddr, p_filesz))
        elif p_type == PT_DYNAMIC and p_filesz:
            dynamic_ranges.append((p_offset, p_filesz))

    if not dynamic_ranges:
        raise ValueError("ELF input has no PT_DYNAMIC segment")

    needed_offsets: list[int] = []
    string_table_va: int | None = None
    string_table_size: int | None = None
    for dynamic_offset, dynamic_size in dynamic_ranges:
        if dynamic_size % 16:
            raise ValueError("PT_DYNAMIC size is not a whole number of entries")
        for entry in range(dynamic_offset, dynamic_offset + dynamic_size, 16):
            tag, value = struct.unpack_from("<qQ", data, entry)
            if tag == DT_NULL:
                break
            if tag == DT_NEEDED:
                needed_offsets.append(value)
            elif tag == DT_STRTAB:
                string_table_va = value
            elif tag == DT_STRSZ:
                string_table_size = value

    if needed_offsets and (string_table_va is None or string_table_size is None):
        raise ValueError("DT_NEEDED entries require DT_STRTAB and DT_STRSZ")
    if not needed_offsets:
        return []

    assert string_table_va is not None
    assert string_table_size is not None
    string_table_offset = _file_offset_for_va(loads, string_table_va)
    _check_range(data, string_table_offset, string_table_size, "DT_STRTAB")
    string_table_end = string_table_offset + string_table_size

    names: list[str] = []
    for value in needed_offsets:
        if value >= string_table_size:
            raise ValueError("DT_NEEDED string offset is outside DT_STRTAB")
        start = string_table_offset + value
        end = data.find(b"\0", start, string_table_end)
        if end == -1:
            raise ValueError("DT_NEEDED string is not NUL-terminated")
        try:
            names.append(data[start:end].decode("utf-8"))
        except UnicodeDecodeError as error:
            raise ValueError("DT_NEEDED string is not UTF-8") from error
    return names


def _locked_dsos(manifest_path: Path) -> dict[str, LockedDso]:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    by_name = {anchor.get("name"): anchor for anchor in manifest.get("anchors", [])}
    missing = [name for name in LOCKED_DSO_NAMES if name not in by_name]
    if missing:
        raise ValueError(f"manifest is missing locked DSOs: {', '.join(missing)}")

    locked: dict[str, LockedDso] = {}
    for name in LOCKED_DSO_NAMES:
        anchor = by_name[name]
        path = Path(anchor["path"])
        expected = anchor.get("expected")
        declared = anchor.get("sha256")
        if not isinstance(expected, str) or not isinstance(declared, str):
            raise ValueError(f"manifest lacks sha256 for {name}")
        if not path.is_file():
            raise ValueError(f"locked DSO is missing: {name}")
        actual = _sha256(path)
        if actual != expected or actual != declared:
            raise ValueError(f"sha256 mismatch for {name}")
        size = path.stat().st_size
        if anchor.get("size") != size:
            raise ValueError(f"size mismatch for {name}")
        locked[name] = LockedDso(name=name, path=path, size=size, sha256=actual)
    return locked


def build_load_graph(manifest_path: Path = DEFAULT_MANIFEST, *, target_library: str = "libil2cpp.so") -> dict[str, object]:
    """Validate locked inputs and derive a dependency-first target closure."""
    if target_library not in LOCKED_DSO_NAMES:
        raise ValueError(f"target library is not locked: {target_library}")
    locked = _locked_dsos(manifest_path)
    dependencies_by_name = {name: parse_dt_needed(locked[name].path) for name in LOCKED_DSO_NAMES}
    edges = [
        {
            "source": source,
            "needed": dependency,
            "resolution": "locked" if dependency in locked else "unresolved",
        }
        for source in LOCKED_DSO_NAMES
        for dependency in dependencies_by_name[source]
    ]
    ordered: list[LockedDso] = []
    visiting: set[str] = set()
    visited: set[str] = set()

    def visit(name: str) -> None:
        if name in visited:
            return
        if name in visiting:
            raise ValueError(f"DT_NEEDED cycle includes {name}")
        visiting.add(name)
        dependencies = dependencies_by_name[name]
        for dependency in dependencies:
            if dependency in locked:
                visit(dependency)
        visiting.remove(name)
        visited.add(name)
        ordered.append(locked[name])

    visit(target_library)
    if target_library == "libil2cpp.so":
        source_entries = [locked[name] for name in LOCKED_DSO_NAMES]
    else:
        selected_names = {source.name for source in ordered}
        edges = [edge for edge in edges if edge["source"] in selected_names]
        source_entries = ordered
    unresolved = [
        {"source": edge["source"], "needed": edge["needed"]}
        for edge in edges
        if edge["resolution"] == "unresolved"
    ]
    return {
        "record_type": f"{target_library.removesuffix('.so')}-dt-needed-load-graph",
        "target_library": target_library,
        "source_hashes": [
            {
                "name": source.name,
                "source_path": str(source.path),
                "size": source.size,
                "sha256": source.sha256,
            }
            for source in source_entries
        ],
        "dt_needed_edges": edges,
        "ordered_libraries": [
            {
                "name": source.name,
                "source_path": str(source.path),
                "sha256": source.sha256,
            }
            for source in ordered
        ],
        "unresolved_dependencies": unresolved,
    }


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description="Build the locked IL2CPP DT_NEEDED load graph")
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--target-library", choices=LOCKED_DSO_NAMES, default="libil2cpp.so")
    args = parser.parse_args(argv)
    graph = build_load_graph(args.manifest, target_library=args.target_library)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(graph, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
