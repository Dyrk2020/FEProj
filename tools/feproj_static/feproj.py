#!/usr/bin/env python3
"""Shared static toolkit for Wild Rift 7.2 FEProj analysis.

Facts (verified 2026-08-04):
  - libFEProj.so SHA-256 locked 5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a
  - 1685 .text chunks are AArch64 code XOR'd byte-wise with 0x30 (see
    work/ai-cfg-recovery-2026-08-04/): all decode 1024/1024 after XOR 0x30.
  - .text = [0x1155190, 0x563ae2c); PT_LOAD[0] p_vaddr=0 p_offset=0 (VA==offset)
    for VA < 0x6a5ba94; later segments need proper mapping (e.g. 0x724d101).
"""

from __future__ import annotations

import json
import re
import struct
import subprocess
from pathlib import Path
from typing import Any

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM


# Batch 3A address contract.  Keep storage, source and execution coordinates
# separate: an island may be stored at one static slot while its decoded bytes
# execute from a relocated runtime slot.
VIEWS = ("raw_elf", "xor_0x30", "aes_decoded", "runtime_remapped", "head_cipher")
COORDINATE_KINDS = ("file_offset", "static_va", "runtime_va", "rva")


def address_coordinates(*, file_offset: int | None = None,
                        static_va: int | None = None,
                        runtime_va: int | None = None,
                        rva: int | None = None,
                        image_base: int | None = None,
                        view: str = "raw_elf",
                        frame: str = "storage") -> dict[str, Any]:
    """Return an explicit, schema-compatible coordinate bundle.

    ``frame`` is deliberately metadata (storage/source/execution), not a
    coordinate kind.  None is retained so callers cannot silently substitute
    one address space for another.
    """
    if view not in VIEWS:
        raise ValueError(f"unknown view: {view}")
    values = {"file_offset": file_offset, "static_va": static_va,
              "runtime_va": runtime_va, "rva": rva}
    present = [(k, v) for k, v in values.items() if v is not None]
    if not present:
        raise ValueError("at least one coordinate is required")
    if any(not isinstance(v, int) or v < 0 for _, v in present):
        raise ValueError("coordinates must be non-negative integers")
    if image_base is not None and (not isinstance(image_base, int) or image_base < 0):
        raise ValueError("image_base must be a non-negative integer")
    return {**values, "image_base": image_base, "view": view, "frame": frame}


def address_record(*, artifact_id: str, package_build: str, abi: str,
                   binary_sha256: str, source_path: str,
                   coordinate: dict[str, Any], source_slot: int | None,
                   execution_slot: int | None, caller: int | None,
                   callee: int | None, prologue_boundary: bool,
                   evidence_level: str = "DERIVED", **extra: Any) -> dict[str, Any]:
    """Build a complete Batch-0 address record without lossy aliases."""
    row = {"schema_version": "1.0.0", "evidence_level": evidence_level,
           "record_type": "address_record", "artifact_id": artifact_id,
           "package_build": package_build, "abi": abi,
           "binary_sha256": binary_sha256, "source_path": source_path,
           "coordinate": coordinate, "source_slot": source_slot,
           "execution_slot": execution_slot, "caller": caller,
           "callee": callee, "prologue_boundary": prologue_boundary}
    row.update(extra)
    return row


def classify_branch(*, mnemonic: str, target: int | None = None,
                    table_target: bool = False) -> str:
    """Classify ARM64 control-flow edges, retaining jump-table edges."""
    m = mnemonic.lower().strip()
    if m == "bl":
        return "direct"
    if m in {"b", "b.al", "b.eq", "b.ne", "b.cs", "b.hs", "b.cc", "b.lo",
             "b.mi", "b.pl", "b.vs", "b.vc", "b.hi", "b.ls", "b.ge", "b.lt",
             "b.gt", "b.le"}:
        return "jump-table" if table_target else "direct"
    if m in {"br", "blr", "ret"}:
        return "jump-table" if table_target else "indirect"
    return "indirect" if table_target else "other"


def layer_for(*, source: str, is_symbol: bool = False,
              runtime: bool = False) -> str:
    """Stable graph layers: catalog, island, symbol and runtime function."""
    if runtime:
        return "runtime_function"
    if is_symbol:
        return "symbol"
    if source in {"scan", "exports", "exports+scan", "legacy", "enhanced"}:
        return "island"
    return "catalog"


def fixed_158853c_relation() -> dict[str, Any]:
    """The audited storage/source/execution/caller tuple (Batch 3A anchor)."""
    return {"storage_va": 0x158853C, "source_va": 0x157853C,
            "execution_va": 0x15A853C, "caller_va": 0x3EC41E8,
            "runtime_slot_va": 0x158853C}


def fixed_158853c() -> dict[str, Any]:
    return fixed_158853c_relation()

ROOT = Path(__file__).resolve().parents[2]
ELF_PATH = ROOT / "corpus/native-elf/decompressed-arm64/libFEProj.so"
KEY = 0x30
TEXT_VA = 0x1155190
TEXT_SIZE = 0x44E5C9C


class Elf:
    def __init__(self, path: Path = ELF_PATH):
        self.path = path
        self.data = path.read_bytes()
        self.segments = self._load_segments()

    def _load_segments(self) -> list[dict]:
        out = subprocess.run(
            ["readelf", "-lW", str(self.path)], capture_output=True, text=True, check=True
        ).stdout
        segs = []
        for line in out.splitlines():
            m = re.match(
                r"\s*LOAD\s+0x([0-9a-f]+)\s+0x([0-9a-f]+)\s+0x([0-9a-f]+)\s+"
                r"0x([0-9a-f]+)\s+0x([0-9a-f]+)\s+([RWE ]+)\s+0x([0-9a-f]+)",
                line,
            )
            if m:
                segs.append(
                    {
                        "off": int(m.group(1), 16),
                        "va": int(m.group(2), 16),
                        "paddr": int(m.group(3), 16),
                        "filesz": int(m.group(4), 16),
                        "memsz": int(m.group(5), 16),
                        "flags": m.group(6),
                        "align": int(m.group(7), 16),
                    }
                )
        return segs

    def va_to_off(self, va: int) -> int | None:
        for s in self.segments:
            if s["va"] <= va < s["va"] + s["filesz"]:
                return s["off"] + (va - s["va"])
        return None

    def read_va(self, va: int, n: int) -> bytes:
        off = self.va_to_off(va)
        if off is None:
            raise ValueError(f"VA {va:#x} not in any file-backed segment")
        return self.data[off : off + n]

    def decrypt(self, va: int, n: int) -> bytes:
        return bytes(b ^ KEY for b in self.read_va(va, n))


_ELF = None


def elf() -> Elf:
    global _ELF
    if _ELF is None:
        _ELF = Elf()
    return _ELF


def islands() -> list[dict]:
    """Island chunk list from the XOR-crack slice (va, size, decoded)."""
    p = ROOT / "work/ai-cfg-recovery-2026-08-04/xor-islands.json"
    data = json.loads(p.read_text())
    return data["xor30_full_pages"]


def island_ranges() -> list[tuple[int, int]]:
    """Island VA ranges (chunks may be non-4K-aligned; merge adjacent)."""
    chunks = sorted(r["page"] for r in islands())
    ranges: list[list[int]] = []
    for p in chunks:
        if ranges and p == ranges[-1][1] + 1:
            ranges[-1][1] = p + 0x1000 - 1
        else:
            ranges.append([p, p + 0x1000 - 1])
    return [(lo, hi) for lo, hi in ranges]


_ISLAND_RANGES: list[tuple[int, int]] | None = None


def is_island(va: int) -> bool:
    global _ISLAND_RANGES
    if _ISLAND_RANGES is None:
        _ISLAND_RANGES = island_ranges()
    for lo, hi in _ISLAND_RANGES:
        if lo <= va <= hi:
            return True
        if va < lo:
            break
    return False


def disasm(buf: bytes, va: int) -> list:
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    return [(i.address, bytes(i.bytes).hex(), i.mnemonic, i.op_str) for i in md.disasm(buf, va)]


def strings_at(va: int, max_len: int = 128) -> str | None:
    """Printable ASCII at VA (until NUL)."""
    b = elf().read_va(va, 256)
    s = b.split(b"\x00")[0]
    if len(s) >= 4 and all(0x20 <= c < 0x7F for c in s):
        return s.decode("ascii")
    return None


def scan_text_edges() -> list[dict]:
    """Single pass over .text: classify BL/B/ADR/ADRP; resolve island membership.

    Returns per-instruction rows for island-relevant edges only:
      {"kind": bl|b, "from": pc, "to": tgt, "src_island": bool, "dst_island": bool}
      {"kind": adrp, "from": pc, "page": pg, "src_island": bool}
      {"kind": adr, "from": pc, "to": tgt, "src_island": bool}
    """
    data = elf().data
    text_off = TEXT_VA  # VA==offset for .text
    buf = data[text_off : text_off + TEXT_SIZE]
    iranges = island_ranges()
    n = TEXT_SIZE // 4
    rows = []
    for i in range(n):
        w = struct.unpack_from("<I", buf, i * 4)[0]
        pc = TEXT_VA + i * 4
        src_island = is_island(pc)
        if (w & 0xFC000000) == 0x94000000 or (w & 0xFC000000) == 0x14000000:
            imm = w & 0x03FFFFFF
            if imm & 0x02000000:
                imm -= 0x04000000
            tgt = (pc + (imm << 2)) & 0xFFFFFFFF
            dst_island = is_island(tgt)
            if src_island or dst_island:
                rows.append(
                    {
                        "kind": "bl" if (w & 0xFC000000) == 0x94000000 else "b",
                        "from": pc,
                        "to": tgt,
                        "si": src_island,
                        "di": dst_island,
                    }
                )
        elif (w & 0x9F000000) == 0x90000000:  # ADRP
            immlo = (w >> 29) & 0x3
            immhi = (w >> 5) & 0x7FFFF
            imm = (immhi << 2) | immlo
            if imm & 0x100000:
                imm -= 0x200000
            pg = (pc & ~0xFFF) + (imm << 12)
            if src_island:
                rows.append({"kind": "adrp", "from": pc, "to": pg, "si": True, "di": False})
    return rows


if __name__ == "__main__":
    e = elf()
    print("segments:", len(e.segments))
    for s in e.segments:
        print(f"  LOAD va={s['va']:#x} off={s['off']:#x} filesz={s['filesz']:#x} flags={s['flags']}")
    print("0x724d101 ->", e.va_to_off(0x724D101))
    print("islands:", len(islands()))
