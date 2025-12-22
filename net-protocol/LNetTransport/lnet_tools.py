#!/usr/bin/env python3
"""LNet transport-layer reverse engineering toolkit.

Reads libLNet.so (VA == file offset below 0x6a5ba94), decodes XOR-0x50
per-function obfuscated .text on demand, disassembles with capstone.
"""
from __future__ import annotations
import struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

RAW_PATH = "<research-workspace>/corpus/native-elf/decompressed-arm64/libLNet.so"
RAW = open(RAW_PATH, "rb").read()

KEY = 0x50

_md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
_md.detail = False


def decode(va: int, n: int, key: int = KEY) -> bytes:
    """Read n bytes at VA, XOR-0x50 (obfuscated .text regions only)."""
    data = RAW[va:va + n]
    if len(data) < n:
        raise ValueError(f"read past EOF at {va:#x}")
    if key:
        return bytes(b ^ key for b in data)
    return data


def dis(va: int, n: int, key: int = KEY, text=True):
    """Disassemble n bytes at VA (default XOR-0x50 view). Returns list of (addr, mnem, opstr)."""
    data = decode(va, n, key)
    out = []
    for i in _md.disasm(data, va):
        out.append((i.address, i.mnemonic, i.op_str))
    return out


def dis_show(va: int, n: int, key: int = KEY, fmt="{:08x}: {:<8} {}", width=0):
    for a, m, o in dis(va, n, key):
        print(fmt.format(a, m, o))


def find_bytes(pat: bytes, start=0, end=None) -> list[int]:
    """Find all occurrences of byte pattern."""
    end = len(RAW) if end is None else end
    out, i = [], start
    while True:
        i = RAW.find(pat, i, end)
        if i < 0:
            break
        out.append(i)
        i += 1
    return out


def find_str(s: str, start=0, end=None) -> list[int]:
    return find_bytes(s.encode(), start, end)


def cstr(va: int) -> str:
    """Read a C string at VA."""
    end = RAW.find(b"\x00", va)
    if end < 0 or end - va > 0x1000:
        return ""
    return RAW[va:end].decode("latin-1", "replace")


def xrefs_ldr(target_va: int, text_range=(0x661b0, 0x1d6d30)):
    """Find adrp+ldr/str references to target VA (or any addr in target's page) in .text."""
    lo, hi = text_range
    hits = []
    for va in range(lo, hi - 4, 4):
        ins = struct.unpack_from("<I", RAW, va)[0]
        if (ins & 0x9F000000) == 0x90000000:  # adrp
            # adrp imm
            immlo = (ins >> 29) & 0x3
            immhi = (ins >> 5) & 0x7FFFF
            imm = ((immhi << 2) | immlo) << 12
            if imm & (1 << 32):
                imm -= (1 << 33)
            base = (va & ~0xFFF) + imm
            # look at following insn for ldr/str
            if va + 4 >= hi:
                continue
            ins2 = struct.unpack_from("<I", RAW, va + 4)[0]
            if (ins2 & 0xFFC00000) == 0xF9400000:  # ldr (imm, unsigned)
                rt = ins2 & 0x1F
                imm12 = (ins2 >> 10) & 0xFFF
                page_off = (ins2 >> 5) & 0xFFF
                tgt = base + page_off * 8  # ldr x reg
                if tgt == target_va or (base == (target_va & ~0xFFF) and base + page_off * 8 == target_va):
                    hits.append((va, tgt, rt))
    return hits


def all_bl(va, n, key=KEY):
    """All direct bl targets in [va, va+n) with their addresses."""
    out = []
    for a, m, o in dis(va, n, key):
        if m == "bl":
            tgt = int(o.replace("#", ""), 16)
            out.append((a, tgt))
    return out


# ---- PLT/GOT table ----
import elftools
from elftools.elf.elffile import ELFFile

def build_plt():
    """Map PLT stub VA -> (imported symbol name, GOT slot VA).

    Uses .rela.plt (JUMP_SLOT order == stub order) plus a byte scan of .plt
    for the `adrp x16, page; ldr x17, [x16, #off]` stub pattern.
    """
    with open(RAW_PATH, "rb") as f:
        elf = ELFFile(f)
        dynsym = elf.get_section_by_name(".dynsym")
        rela = elf.get_section_by_name(".rela.plt")
        plt = elf.get_section_by_name(".plt")
        plt_data = plt.data()
        plt_va = plt["sh_addr"]
        name_by_got = {}
        for e in rela.iter_relocations():
            sym = dynsym.get_symbol(e["r_info_sym"])
            name_by_got[e["r_offset"]] = sym.name
        plt_map, got_map = {}, {}
        for i in range(0, len(plt_data) - 8, 4):
            w0, w1 = struct.unpack_from("<II", plt_data, i)
            if (w0 & 0x9F000000) == 0x90000000 and (w1 & 0xFFC00000) == 0xF9400000:
                immlo = (w0 >> 29) & 0x3
                immhi = (w0 >> 5) & 0x7FFFF
                imm = ((immhi << 2) | immlo) << 12
                if imm & (1 << 32):
                    imm -= (1 << 33)
                base = ((plt_va + i) & ~0xFFF) + imm
                imm12 = (w1 >> 10) & 0xFFF
                got = base + imm12 * 8
                if got in name_by_got:
                    name = name_by_got[got]
                    plt_map[plt_va + i] = (name, got)
                    got_map[got] = name
        return plt_map, got_map

PLT, GOT = build_plt()

def bl_target_name(tgt: int) -> str:
    """Resolve bl target to (symbol, via_plt) if it's a PLT stub."""
    if tgt in PLT:
        return PLT[tgt][0]
    return None


def xrefs_import(name: str, text_range=(0x661b0, 0x1d6d30)):
    """Find all bl <PLT stub of import> call sites in .text (non-obfuscated raw view).
    Since the RAW .text is XOR-0x50-encrypted for LNet core functions, do a
    two-pass: raw scan for plaintext callers + XOR-0x50 scan for obfuscated callers.
    Returns list of (caller_va, decoded_bl_va) — for obfuscated regions the
    caller VA equals the decoded address too (same VA space)."""
    stub_vas = [v for v, (n, g) in PLT.items() if n == name]
    if not stub_vas:
        return []
    out = []
    for va in range(text_range[0], text_range[1] - 4, 4):
        ins = struct.unpack_from("<I", RAW, va)[0]
        if (ins & 0xFC000000) == 0x94000000:  # bl
            imm = ins & 0x03FFFFFF
            if imm & 0x2000000:
                imm -= 0x4000000
            tgt = (va + imm * 4) & 0xFFFFFFFF
            if tgt in stub_vas:
                out.append((va, tgt))
    return out


def xrefs_import_xor(name: str, text_range=(0x661b0, 0x1d6d30)):
    """Same but scanning XOR-0x50-decoded text (for obfuscated regions)."""
    stub_vas = [v for v, (n, g) in PLT.items() if n == name]
    if not stub_vas:
        return []
    out = []
    for va in range(text_range[0], text_range[1] - 4, 4):
        ins = struct.unpack_from("<I", RAW, va)[0] ^ (KEY * 0x01010101)
        if (ins & 0xFC000000) == 0x94000000:
            imm = ins & 0x03FFFFFF
            if imm & 0x2000000:
                imm -= 0x4000000
            tgt = (va + imm * 4) & 0xFFFFFFFF
            if tgt in stub_vas:
                out.append((va, tgt))
    return out
