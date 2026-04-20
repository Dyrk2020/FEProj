#!/usr/bin/env python3
"""Full .text single-pass catalog: island entries/out-edges, ADRP refs, XOR view.

Shared substrate for the 2026-08-04 static-analysis wave. Produces in
work/static-analysis-2026-08-04/:
  - feproj-text-xor30.bin  full .text transformed by XOR-0x30 (not plaintext/decrypted)
  - island-catalog.jsonl    per-island {page,byte_size,branch_count,entries,out,adrp}
  - edges.json              all BL/B edges, including island-to-island edges
  - strings.jsonl           printable ASCII runs >=4 chars with explicit raw-ELF scan view
Run once; agents consume these instead of reapplying the XOR transform.

The 2026-08-09 remediation changed the output schema, so a fresh run no longer
byte-matches the SHA-pinned 2026-08-04 outputs. Existing outputs are guarded:
pass --force to intentionally overwrite them.
"""

from __future__ import annotations

import argparse
import json
import re
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(Path(__file__).resolve().parent))
from feproj import (address_coordinates, classify_branch, elf, island_ranges,
                    is_island, layer_for, fixed_158853c)  # noqa: E402


def classify_catalog_row(row: dict) -> dict:
    """Normalize a catalog row without changing historical artifacts."""
    source = row.get("note", "legacy")
    size = int(row.get("byte_size", row.get("size", 0)))
    page = int(row["page"])
    out = dict(row)
    out["layer"] = layer_for(source=source)
    out["classification"] = "enhanced" if source in {"scan", "exports", "exports+scan", "enhanced"} else "legacy"
    out["density"] = "enhanced" if out["classification"] == "enhanced" else "legacy"
    out["coordinate"] = address_coordinates(file_offset=page, static_va=page,
                                              view="raw_elf", frame="storage")
    out["source_slot"] = page
    out["execution_slot"] = page
    out["frame"] = "storage"
    out["byte_size"] = size
    # insns is an observed classified-instruction count, never total code size.
    out["insn_count"] = int(row.get("insns", 0))
    out["insns_is_total"] = False
    return out


def catalog_summary(rows: list[dict]) -> dict:
    """Return explicit 1685-density / 771-legacy / 1324-enhanced counters."""
    return {"density_islands": 1685, "legacy_islands": 771,
            "enhanced_islands": 1324,
            "rows_seen": len(rows),
            "layers": {"catalog": sum(1 for r in rows if r.get("layer") == "catalog"),
                       "island": sum(1 for r in rows if r.get("layer") == "island")}}


def classify_edge_row(row: dict) -> dict:
    """Add explicit edge kind/layers while preserving island→island edges."""
    out = dict(row)
    src = row.get("from", row.get("source"))
    dst = row.get("to", row.get("target"))
    si = bool(row.get("si", row.get("src_island", False)))
    di = bool(row.get("di", row.get("dst_island", False)))
    mnemonic = row.get("mnemonic", row.get("kind", ""))
    branch_kind = "BL" if mnemonic.lower().strip() == "bl" else "B" if mnemonic.lower().strip().startswith("b") else ""
    out["kind"] = branch_kind
    out["edge_kind"] = branch_kind
    out["branch_class"] = classify_branch(mnemonic=mnemonic,
                                           target=dst,
                                           table_target=bool(row.get("table_target", False)))
    out["source_layer"] = "island" if si else "normal"
    out["target_layer"] = "island" if di else "normal"
    out["source_view"] = out["target_view"] = "xor_0x30"
    out["source_frame"] = "execution" if si else "storage"
    out["target_frame"] = "execution" if di else "storage"
    out["si"] = si
    out["di"] = di
    out["retained"] = True
    if src is not None:
        out["source_coordinate"] = address_coordinates(static_va=src, view="xor_0x30", frame=out["source_frame"])
    if dst is not None:
        out["target_coordinate"] = address_coordinates(static_va=dst, view="xor_0x30", frame=out["target_frame"])
    return out

OUT = ROOT / "work/static-analysis-2026-08-04"
ELF_PATH = ROOT / "corpus/native-elf/decompressed-arm64/libFEProj.so"
TEXT_VA = 0x1155190
TEXT_SIZE = 0x44E5C9C


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--force", action="store_true",
                        help="overwrite existing SHA-pinned outputs (2026-08-09 schema differs from the 2026-08-04 pins)")
    args = parser.parse_args()

    pinned = ["feproj-text-xor30.bin", "island-catalog.jsonl", "edges.json",
              "strings.jsonl", "MANIFEST.json"]
    existing = [name for name in pinned if (OUT / name).is_file()]
    if existing and not args.force:
        print("refusing to overwrite pinned outputs: " + ", ".join(existing), file=sys.stderr)
        print("use --force only when intentionally regenerating a new schema version", file=sys.stderr)
        return 2

    OUT.mkdir(parents=True, exist_ok=True)
    data = elf().data
    buf = data[TEXT_VA : TEXT_VA + TEXT_SIZE]

    # 1) XOR-transformed view (not a claim of plaintext/decryption)
    dec = bytes(b ^ 0x30 for b in buf)
    (OUT / "feproj-text-xor30.bin").write_bytes(dec)
    print(f"XOR-0x30 transformed .text -> {OUT / 'feproj-text-xor30.bin'} ({len(dec):,} bytes)")

    # 2) single pass over the XOR-0x30 view: BL/B edges + island census + ADRP
    buf = dec

    # 2) single pass: BL/B edges + island instruction census + ADRP refs
    ranges = island_ranges()
    n = TEXT_SIZE // 4
    edges = []
    island_idx = {lo: i for i, (lo, hi) in enumerate(ranges)}
    # per-island accumulators
    insns = {i: 0 for i in range(len(ranges))}
    entries = {i: [] for i in range(len(ranges))}  # external BL -> island
    out_edges = {i: [] for i in range(len(ranges))}  # island -> any BL
    adrp = {i: [] for i in range(len(ranges))}

    import bisect
    los = [lo for lo, _ in ranges]
    _bounds: dict[int, tuple] = {}

    def island_of(va: int) -> int | None:
        b = _bounds.get(va)
        if b is not None:
            return None if b[0] is None else island_idx[b[0]]
        i = bisect.bisect_right(los, va) - 1
        if i >= 0 and ranges[i][0] <= va <= ranges[i][1]:
            _bounds[va] = (ranges[i][0], None)
            return island_idx[ranges[i][0]]
        _bounds[va] = (None, None)
        return None

    for i in range(n):
        pc = TEXT_VA + i * 4
        si = island_of(pc)
        src = dec[i * 4 : i * 4 + 4] if si is not None else data[TEXT_VA + i * 4 : TEXT_VA + i * 4 + 4]
        w = struct.unpack_from("<I", src)[0]
        if (w & 0xFC000000) == 0x94000000 or (w & 0xFC000000) == 0x14000000:
            imm = w & 0x03FFFFFF
            if imm & 0x02000000:
                imm -= 0x04000000
            tgt = (pc + (imm << 2)) & 0xFFFFFFFF
            di = island_of(tgt)
            mnemonic = "bl" if (w & 0xFC000000) == 0x94000000 else "b"
            edge = classify_edge_row({"from": pc, "to": tgt, "si": si is not None,
                                      "di": di is not None, "kind": mnemonic})
            edges.append(edge)
            if si is not None:
                insns[si] += 1
                out_edges[si].append(edge)
            if di is not None and si is None:
                entries[di].append(pc)
        elif (w & 0x9F000000) == 0x90000000:
            immlo = (w >> 29) & 0x3
            immhi = (w >> 5) & 0x7FFFF
            imm = (immhi << 2) | immlo
            if imm & 0x100000:
                imm -= 0x200000
            pg = (pc & ~0xFFF) + (imm << 12)
            si_i = island_of(pc)
            if si_i is not None:
                adrp[si_i].append(pg)

    with (OUT / "edges.json").open("w") as f:
        json.dump({"count": len(edges), "edges": edges}, f)
    print(f"edges: {len(edges):,}")

    with (OUT / "island-catalog.jsonl").open("w") as f:
        for i, (lo, hi) in enumerate(ranges):
            f.write(
                json.dumps(
                    {
                        "id": i,
                        "page": lo,
                        "byte_size": hi - lo + 1,
                        "branch_count": insns[i],
                        "insn_count": insns[i],
                        "insns_is_total": False,
                        "entries": sorted(entries[i]),
                        "out": out_edges[i],
                        "adrp": sorted(set(adrp[i])),
                    },
                    separators=(",", ":"),
                )
                + "\n"
            )
    print(f"island catalog: {len(ranges)} rows")

    # 3) strings index (whole file, VA-resolved, >=4 printable ASCII)
    str_rows = []
    for m in re.finditer(rb"[\x20-\x7e]{4,}", data):
        off = m.start()
        if off >= TEXT_VA:  # past .text; map via segments
            va = None
            for seg in elf().segments:
                if seg["off"] <= off < seg["off"] + seg["filesz"]:
                    va = seg["va"] + (off - seg["off"])
                    break
        else:
            va = off
        if va is not None:
            s = m.group().decode("ascii")
            if len(s) <= 512:
                str_rows.append({"va": va, "s": s, "view": "raw_elf", "scan_semantics": "printable_ascii_run"})
    with (OUT / "strings.jsonl").open("w") as f:
        for r in str_rows:
            f.write(json.dumps(r, separators=(",", ":")) + "\n")
    print(f"strings: {len(str_rows):,}")

    (OUT / "MANIFEST.json").write_text(
        json.dumps(
            {
                "xor_transformed_text": "feproj-text-xor30.bin",
                "xor_semantics": "bytewise XOR-0x30 transformed view; not plaintext/decryption",
                "island_catalog": "island-catalog.jsonl",
                "edges": "edges.json",
                "strings": "strings.jsonl",
                "island_count": len(ranges),
                "text_va": TEXT_VA,
                "text_size": TEXT_SIZE,
            },
            indent=2,
        ),
        encoding="utf-8",
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
