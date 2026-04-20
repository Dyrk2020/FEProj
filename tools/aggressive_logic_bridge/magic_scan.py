from __future__ import annotations

import argparse
import hashlib
import json
import mmap
import struct
from dataclasses import dataclass
from pathlib import Path
from typing import Iterator

ROOT = Path(__file__).resolve().parents[2]
CORPUS = ROOT / "work/native-container-audit/decompressed-arm64"
OUTPUT = ROOT / "work/aggressive-logic-bridge-2026-07-13/track-c"
MAGIC_PATTERNS = (
    ("FMN!", bytes.fromhex("46 4d 4e 21"), "0x214e4d46"),
    ("metadata-size", bytes.fromhex("24 23 7b 03"), "0x037b2324"),
    ("IL2CPP-raw-magic", bytes.fromhex("af 1b b1 fa"), "0xfab11baf"),
    ("Lua-signature", bytes.fromhex("1b 4c 75 61"), "0x61754c1b"),
)
LIBRARIES = ("libil2cpp.so", "libFEProj.so", "libunity.so")
LOCKED_FEPROJ_SHA256 = "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a"
LOCKED_FEPROJ_SIZE = 120283368
EXACT_EXPORTS = (
    "il2cpp_init",
    "il2cpp_set_data_dir",
    "il2cpp_set_temp_dir",
    "il2cpp_set_commandline_arguments",
    "il2cpp_set_commandline_arguments_utf16",
    "JNI_OnLoad",
    "lua_load",
    "luaL_loadbuffer",
    "luaL_loadbufferx",
    "luaL_newstate",
    "lua_pcall",
)


@dataclass(frozen=True)
class Segment:
    offset: int
    size: int
    va: int
    executable: bool


def _u32(view: mmap.mmap | bytes, offset: int) -> int:
    return struct.unpack_from("<I", view, offset)[0]


def _sign_extend(value: int, bits: int) -> int:
    return value - (1 << bits) if value & (1 << (bits - 1)) else value


def elf_segments(view: mmap.mmap | bytes) -> list[Segment]:
    if view[:4] != b"\x7fELF" or view[4] != 2 or view[5] != 1:
        raise ValueError("expected ELF64 little-endian input")
    phoff = struct.unpack_from("<Q", view, 32)[0]
    phentsize, phnum = struct.unpack_from("<HH", view, 54)
    segments = []
    for index in range(phnum):
        entry = phoff + index * phentsize
        p_type, p_flags, p_offset, p_vaddr, _, p_filesz, _, _ = struct.unpack_from(
            "<IIQQQQQQ", view, entry
        )
        if p_type == 1 and p_filesz:
            segments.append(Segment(p_offset, p_filesz, p_vaddr, bool(p_flags & 1)))
    return segments


def file_offset_to_va(offset: int, segments: list[Segment]) -> int | None:
    for segment in segments:
        if segment.offset <= offset < segment.offset + segment.size:
            return segment.va + offset - segment.offset
    return None


def _context_16(view: mmap.mmap | bytes, offset: int) -> str:
    start = max(0, offset - 8)
    end = min(len(view), start + 16)
    start = max(0, end - 16)
    return bytes(view[start:end]).hex()


def _is_ldr_literal(word: int) -> bool:
    return word & 0xFF000000 in (0x18000000, 0x58000000, 0x98000000)


def _literal_target(word: int, instruction_va: int) -> int:
    return instruction_va + _sign_extend((word >> 5) & 0x7FFFF, 19) * 4


def _is_adr_or_adrp(word: int) -> bool:
    return word & 0x9F000000 in (0x10000000, 0x90000000)


def _adr_target(word: int, instruction_va: int) -> int:
    immediate = _sign_extend(((word >> 5) & 0x7FFFF) << 2 | (word >> 29) & 3, 21)
    if word & 0x80000000:
        return (instruction_va & ~0xFFF) + (immediate << 12)
    return instruction_va + immediate


def _is_unsigned_ldr(word: int) -> bool:
    return ((word & 0x3B000000) == 0x39000000 and not (word & 0x04000000)
            and bool(word & 0x00400000) and (word & 31) != 31)


def _ldr_target(word: int, base: int) -> int:
    scale = (word >> 30) & 3
    return base + (((word >> 10) & 0xFFF) << scale)


def _is_cmp_using(word: int, register: int) -> bool:
    immediate_cmp = (word & 0x7F00001F) == 0x7100001F
    register_cmp = (word & 0x7F20001F) == 0x6B00001F
    return (immediate_cmp or register_cmp) and ((word >> 5) & 31) == register

def _is_control_flow(word: int) -> bool:
    return ((word & 0x7C000000) == 0x14000000 or (word & 0x7F000000) in (0x34000000, 0x36000000)
            or (word & 0xFFFFFC1F) in (0xD61F0000, 0xD63F0000, 0xD65F0000))


def _move_wide(word: int) -> tuple[str, int, int, int, int] | None:
    opcode = word & 0x7F800000
    names = {0x12800000: "MOVN", 0x52800000: "MOVZ", 0x72800000: "MOVK"}
    if opcode not in names:
        return None
    return names[opcode], word & 31, ((word >> 21) & 3) * 16, (word >> 5) & 0xFFFF, 64 if word & 0x80000000 else 32



def _is_nop(word: int) -> bool:
    return word == 0xD503201F


def instruction_xrefs(view: mmap.mmap | bytes, segments: list[Segment], hit_vas: set[int]) -> dict[int, tuple[str, int]]:
    found: dict[int, tuple[str, int]] = {}
    for segment in segments:
        if not segment.executable:
            continue
        end = segment.offset + segment.size - 3
        for offset in range(segment.offset, end, 4):
            word = _u32(view, offset)
            instruction_va = segment.va + offset - segment.offset
            if _is_ldr_literal(word):
                target = _literal_target(word, instruction_va)
                if target in hit_vas:
                    found.setdefault(target, ("LDR literal", instruction_va))
                continue
            if not _is_adr_or_adrp(word):
                continue
            base_register = word & 31
            if base_register == 31:
                continue
            base = _adr_target(word, instruction_va)
            for following in range(offset + 4, min(offset + 36, end), 4):
                load = _u32(view, following)
                if _is_nop(load):
                    continue
                if _is_control_flow(load) or not _is_unsigned_ldr(load) or ((load >> 5) & 31) != base_register:
                    break
                target = _ldr_target(load, base)
                if target not in hit_vas:
                    break
                value_register = load & 31
                for comparison in range(following + 4, min(following + 24, end), 4):
                    candidate = _u32(view, comparison)
                    if _is_nop(candidate):
                        continue
                    if _is_cmp_using(candidate, value_register):
                        prefix = "ADRP" if word & 0x80000000 else "ADR"
                        found.setdefault(target, (f"{prefix}+LDR/CMP", instruction_va))
                    break
                break
    return found


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1 << 20), b""):
            digest.update(chunk)
    return digest.hexdigest()



def immediate_constructs(view: mmap.mmap | bytes, segments: list[Segment]) -> list[tuple[str, bytes, str, int, int]]:
    by_value = {int(value, 16): (name, needle, value) for name, needle, value in MAGIC_PATTERNS}
    found: list[tuple[str, bytes, str, int, int]] = []
    for segment in segments:
        if not segment.executable:
            continue
        states: dict[int, tuple[int, int]] = {}
        end = segment.offset + segment.size - 3
        for offset in range(segment.offset, end, 4):
            word = _u32(view, offset)
            if _is_control_flow(word):
                states.clear()
                continue
            move = _move_wide(word)
            if not move:
                states.clear()
                continue
            kind, register, shift, immediate, width = move
            mask = (1 << width) - 1
            if kind == "MOVZ":
                value, start = (immediate << shift) & mask, offset
            elif kind == "MOVN":
                value, start = (~(immediate << shift)) & mask, offset
            elif register in states:
                previous, start = states[register]
                value = ((previous & mask) & ~(0xFFFF << shift)) | (immediate << shift)
                value &= mask
            else:
                continue
            states[register] = (value, start)
            if value in by_value and start != offset:
                name, needle, label = by_value[value]
                found.append((name, needle, label, start, offset + 4 - start))
    return found
def scan_file(path: Path) -> list[dict[str, object]]:
    with path.open("rb") as source, mmap.mmap(source.fileno(), 0, access=mmap.ACCESS_READ) as view:
        segments = elf_segments(view)
        hits: list[tuple[str, bytes, str, int, int | None]] = []
        for name, needle, value in MAGIC_PATTERNS:
            position = view.find(needle)
            while position != -1:
                hits.append((name, needle, value, position, file_offset_to_va(position, segments)))
                position = view.find(needle, position + 1)
        hits.sort(key=lambda hit: hit[3])
        xrefs = instruction_xrefs(view, segments, {hit[4] for hit in hits if hit[4] is not None})
        source_sha256 = _sha256(path)
        records = []
        for name, needle, value, offset, va in hits:
            xref = xrefs.get(va) if va is not None else None
            records.append(
                {
                    "record_type": "magic-dword-hit",
                    "discovery": "scanned-current-corpus",
                    "file": path.name,
                    "source_sha256": source_sha256,
                    "pattern": name,
                    "bytes_hex": needle.hex(),
                    "little_endian_u32": value,
                    "offset": f"0x{offset:x}",
                    "va": f"0x{va:x}" if va is not None else None,
                    "context_16_hex": _context_16(view, offset),
                    "instruction_xref": xref[0] if xref else "none",
                    "instruction_xref_va": f"0x{xref[1]:x}" if xref else None,
                }
            )
        for name, needle, value, offset, span in immediate_constructs(view, segments):
            va = file_offset_to_va(offset, segments)
            records.append(
                {
                    "record_type": "magic-immediate-construct",
                    "discovery": "scanned-current-corpus",
                    "file": path.name,
                    "source_sha256": source_sha256,
                    "pattern": name,
                    "bytes_hex": bytes(view[offset : offset + span]).hex(),
                    "little_endian_u32": value,
                    "offset": f"0x{offset:x}",
                    "va": f"0x{va:x}" if va is not None else None,
                    "context_16_hex": _context_16(view, offset),
                    "instruction_xref": "MOVZ/MOVK immediate",
                    "instruction_xref_va": f"0x{va:x}" if va is not None else None,
                }
            )
        records.sort(key=lambda record: (str(record["offset"]), str(record["record_type"])))
        return records


def _section_headers(view: mmap.mmap | bytes) -> Iterator[tuple[int, int, int, int, int, int]]:
    shoff = struct.unpack_from("<Q", view, 40)[0]
    shentsize, shnum = struct.unpack_from("<HH", view, 58)
    for index in range(shnum):
        entry = shoff + index * shentsize
        _, sh_type, _, _, sh_offset, sh_size, sh_link, _, _, sh_entsize = struct.unpack_from(
            "<IIQQQQIIQQ", view, entry
        )
        yield sh_type, sh_offset, sh_size, sh_link, sh_entsize, index


def _cstring(view: mmap.mmap | bytes, start: int, limit: int) -> str:
    end = view.find(b"\0", start, limit)
    if end == -1:
        raise ValueError("unterminated dynsym string")
    return bytes(view[start:end]).decode("utf-8", errors="replace")


def dynsym_exports(path: Path) -> list[dict[str, object]]:
    with path.open("rb") as source, mmap.mmap(source.fileno(), 0, access=mmap.ACCESS_READ) as view:
        sections = list(_section_headers(view))
        exports = []
        for sh_type, sh_offset, sh_size, sh_link, sh_entsize, _ in sections:
            if sh_type != 11 or not sh_entsize:
                continue
            _, strings_offset, strings_size, _, _, _ = sections[sh_link]
            for entry in range(sh_offset, sh_offset + sh_size, sh_entsize):
                name_offset, info, _, section_index, value, size = struct.unpack_from("<IBBHQQ", view, entry)
                if section_index == 0 or not name_offset:
                    continue
                name = _cstring(view, strings_offset + name_offset, strings_offset + strings_size)
                if name in EXACT_EXPORTS or (name.startswith("il2cpp_") and "metadata" in name):
                    exports.append(
                        {
                            "library": path.name,
                            "symbol": name,
                            "binding": ("LOCAL", "GLOBAL", "WEAK")[info >> 4] if info >> 4 < 3 else str(info >> 4),
                            "type": ("NOTYPE", "OBJECT", "FUNC", "SECTION", "FILE", "COMMON", "TLS")[info & 15]
                            if info & 15 < 7
                            else str(info & 15),
                            "st_value": f"0x{value:x}",
                            "st_size": size,
                        }
                    )
        return sorted(exports, key=lambda item: (str(item["symbol"]), str(item["library"])))


def export_abi_map(paths: list[Path]) -> dict[str, object]:
    exports = [symbol for path in paths for symbol in dynsym_exports(path)]
    by_name: dict[str, list[dict[str, object]]] = {}
    for export in exports:
        by_name.setdefault(str(export["symbol"]), []).append(export)
    fixed = [
        {"selector": name, "present": name in by_name, "matches": by_name.get(name, [])}
        for name in EXACT_EXPORTS
    ]
    metadata = [
        {"selector": name, "present": True, "matches": matches}
        for name, matches in sorted(by_name.items())
        if name.startswith("il2cpp_") and "metadata" in name
    ]
    return {
        "record_type": "dynsym-export-abi-map",
        "method": "ELF64 .dynsym only; no symbol invocation",
        "libraries": [path.name for path in paths],
        "exact_symbol_selectors": fixed,
        "metadata_symbol_selectors": metadata,
    }

def input_provenance(paths: list[Path], records: list[dict[str, object]]) -> list[dict[str, object]]:
    return [{"file": path.name, "size": path.stat().st_size, "sha256": _sha256(path), "patterns": [name for name, _, _ in MAGIC_PATTERNS], "raw_magic_dword_hits": sum(record["record_type"] == "magic-dword-hit" and record["file"] == path.name for record in records), "immediate_construct_hits": sum(record["record_type"] == "magic-immediate-construct" and record["file"] == path.name for record in records)} for path in paths]


def known_loader_record(path: Path) -> dict[str, object]:
    offset = 0x55C3C18
    if path.name != "libFEProj.so" or path.stat().st_size != LOCKED_FEPROJ_SIZE or _sha256(path) != LOCKED_FEPROJ_SHA256:
        raise ValueError("locked libFEProj identity mismatch; refusing known-loader record")
    with path.open("rb") as source, mmap.mmap(source.fileno(), 0, access=mmap.ACCESS_READ) as view:
        va = file_offset_to_va(offset, elf_segments(view))
        if va != offset or bytes(view[offset : offset + 4]) != bytes.fromhex("1f 05 00 71"):
            raise ValueError("locked libFEProj loader offset/VA mismatch")
        return {
            "record_type": "known-loader-format-byte",
            "discovery": "previously-known-not-rediscovered",
            "file": path.name,
            "source_sha256": LOCKED_FEPROJ_SHA256,
            "source_size": LOCKED_FEPROJ_SIZE,
            "pattern": "Lua 5.3 format byte check",
            "bytes_hex": bytes(view[offset : offset + 4]).hex(),
            "little_endian_u32": "0x7100051f",
            "offset": f"0x{offset:x}",
            "va": f"0x{va:x}",
            "context_16_hex": _context_16(view, offset),
            "instruction_xref": "CMP immediate",
            "instruction_xref_va": f"0x{va:x}",
            "value": "0x01",
            "source": "work/game-logic-breakthrough-2026-07-12/fetest-dispatch-review.md",
        }


def write_outputs(corpus: Path = CORPUS, output: Path = OUTPUT) -> tuple[Path, Path]:
    paths = [corpus / name for name in LIBRARIES]
    output.mkdir(parents=True, exist_ok=True)
    magic_dest = output / "magic-dword-map.jsonl"
    records = [record for path in paths for record in scan_file(path)]
    provenance = input_provenance(paths, records)
    manifest = {"record_type": "scan-manifest", "instruction_xref_policy": "LDR literal or conservative ADR/ADRP→NOP*→LDR→NOP*→CMP direct chain; other instructions and control flow stop classification", "inputs": provenance}
    records.extend((manifest, known_loader_record(corpus / "libFEProj.so")))
    magic_dest.write_text("".join(json.dumps(record, sort_keys=True) + "\n" for record in records), encoding="utf-8")
    (output / "magic-scan-manifest.json").write_text(json.dumps({"record_type": "magic-scan-manifest", "instruction_xref_policy": manifest["instruction_xref_policy"], "inputs": provenance}, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    abi_dest = output / "export-abi-map.json"
    abi = export_abi_map(paths)
    abi["input_provenance"] = provenance
    abi_dest.write_text(json.dumps(abi, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    return magic_dest, abi_dest


def main() -> int:
    parser = argparse.ArgumentParser(description="Scan approved native corpus for documented magic dwords and dynsym ABI.")
    parser.add_argument("--corpus", type=Path, default=CORPUS)
    parser.add_argument("--output", type=Path, default=OUTPUT)
    arguments = parser.parse_args()
    magic_dest, abi_dest = write_outputs(arguments.corpus, arguments.output)
    print(json.dumps({"magic_dword_map": str(magic_dest), "export_abi_map": str(abi_dest)}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
