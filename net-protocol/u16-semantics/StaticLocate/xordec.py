#!/usr/bin/env python3
"""XOR-0x30 island-aware ARM64 disassembler for libFEProj.so."""
import json
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

ELF = '<research-workspace>/corpus/native-elf/decompressed-arm64/libFEProj.so'
ISLANDS_JSON = '<research-workspace>/work/u16-semantics-20260812/StaticLocate/xor-islands-full.json'

with open(ELF, 'rb') as f:
    RAW = f.read()

with open(ISLANDS_JSON) as f:
    _d = json.load(f)
ISLANDS = [(int(i['va_lo'], 16), int(i['va_hi'], 16)) for i in _d['islands']]

def in_island(va: int) -> bool:
    lo, hi = 0, len(ISLANDS) - 1
    while lo <= hi:
        mid = (lo + hi) // 2
        l, h = ISLANDS[mid]
        if va < l:
            hi = mid - 1
        elif va >= h:
            lo = mid + 1
        else:
            return True
    return False

def file_off(va: int) -> int:
    if va < 0x6a5c000:
        return va
    if 0x6a6c000 <= va < 0x6a6c000 + 0x7fe0d0:
        return 0x6a5c000 + (va - 0x6a6c000)
    raise ValueError(f'VA 0x{va:x} not in file-mapped range')

def get_bytes(va: int, n: int) -> bytes:
    off = file_off(va)
    raw = RAW[off:off + n]
    if len(raw) < n:
        raw = raw + b'\x00' * (n - len(raw))
    if in_island(va):
        return bytes(b ^ 0x30 for b in raw)
    return raw

def disasm(va: int, n: int, detail=False):
    """Disassemble n bytes starting at va (must be an island boundary or code start)."""
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    md.detail = detail
    code = get_bytes(va, n)
    out = []
    for ins in md.disasm(code, va):
        out.append((ins.address, ins.mnemonic, ins.op_str))
    return out

def disasm_until(va: int, stop_va: int, max_insn=4000):
    return disasm(va, stop_va - va)
