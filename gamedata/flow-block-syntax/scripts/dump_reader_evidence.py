#!/usr/bin/env python3
"""Materialize sub_191F28C evidence: capstone disassembly of the
stringcacheinfo reader (LogicStringCacheMgr load path) from the rttext ELF
view, with PLT call-target resolution.

Replaces the audit-noted gap: the original decompile lived only inside an IDA
session (libFEProj.i64, session d0ddea50) that is no longer reachable; per the
2026-08-23 policy all derived evidence must live in the slice directory.

Coordinate note: libFEProj-rttext.so is ET_DYN with .text sh_addr ==
sh_offset (0x1155190), i.e. runtime VA == file offset.
"""
import json
import os
import sys

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

HERE = os.path.dirname(os.path.abspath(__file__))
SLICE = os.path.dirname(HERE)
ELF_PATH = os.path.normpath(os.path.join(
    SLICE, "..", "feproj-readable-20260814",
    "elf-views", "libFEProj-rttext.so"))
FUNC = 0x191F28C
END = 0x191F5A0          # audited extent: getline main loop, split helper
                         # calls and map insertion before next prologue
OUT_ASM = os.path.join(SLICE, "evidence", "sub_191F28C.asm")
OUT_META = os.path.join(SLICE, "evidence", "sub_191F28C.json")


def plt_map(elf):
    """Map .plt stub VAs -> dynamic symbol names via .rela.plt order.
    Recipe per work/case-template-decomp-20260822/README:
    first reloc -> plt_base+0x20, then +16 bytes each."""
    out = {}
    rela = elf.get_section_by_name(".rela.plt")
    dynsym = elf.get_section_by_name(".dynsym")
    plt = elf.get_section_by_name(".plt")
    if rela is None or plt is None or dynsym is None:
        return out
    base = plt["sh_addr"] + 0x20
    for i, r in enumerate(rela.iter_relocations()):
        name = dynsym.get_symbol(r["r_info_sym"]).name
        out[base + 16 * i] = name
    return out


def main():
    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    with open(ELF_PATH, "rb") as fh:
        elf = ELFFile(fh)
        text = elf.get_section_by_name(".text")
        off = FUNC - text["sh_addr"] + text["sh_offset"]
        fh.seek(off)
        code = fh.read(END - FUNC)
        syms = plt_map(elf)

    lines = []
    meta = {"function": hex(FUNC), "end": hex(END),
            "calls": [], "page_refs": []}
    reg_page = {}
    for insn in md.disasm(code, FUNC):
        addr = hex(insn.address)
        txt = f"{insn.mnemonic} {insn.op_str}"
        ann = ""
        if insn.mnemonic == "adrp":
            parts = [p.strip() for p in insn.op_str.split(",")]
            if len(parts) == 2 and parts[1].startswith("#"):
                reg_page[parts[0]] = int(parts[1][1:], 16)
        elif insn.mnemonic == "add":
            parts = [p.strip() for p in insn.op_str.split(",")]
            if len(parts) == 3 and parts[1] in reg_page \
                    and parts[2].startswith("#"):
                tgt = reg_page[parts[1]] + int(parts[2][1:], 16)
                meta["page_refs"].append([addr, hex(tgt)])
        elif insn.mnemonic == "bl":
            tgt = int(insn.op_str.replace("#", ""), 16)
            nm = syms.get(tgt)
            ann = f"; -> {nm}" if nm else f"; -> sub_{tgt:x}"
            meta["calls"].append([addr, hex(tgt), nm])
        lines.append(f"{addr}: {txt:46s} {ann}".rstrip())

    header = (
        "# sub_191F28C -- LogicStringCacheMgr stringcacheinfo.txt loader\n"
        "# source: libFEProj-rttext.so (runtime VA == file offset)\n"
        "# range 0x%x..0x%x, capstone dump with .rela.plt call resolution.\n"
        "# Reading guide (FLOWBLOCKS.md §c): getline loop -> strip CR ->\n"
        "# split on ',' -> atoi(fields[0]) -> rejoin remaining columns ->\n"
        "# std::map<int,string> insert.  No validation of inline blocks.\n"
        % (FUNC, END))
    with open(OUT_ASM, "w") as fh:
        fh.write(header + "\n".join(lines) + "\n")
    with open(OUT_META, "w") as fh:
        json.dump(meta, fh, indent=1)
    print(json.dumps({"asm_lines": len(lines),
                      "resolved_calls": sum(1 for c in meta["calls"] if c[2]),
                      "total_calls": len(meta["calls"]),
                      "out": OUT_ASM}, indent=1))
    return 0


if __name__ == "__main__":
    sys.exit(main())
