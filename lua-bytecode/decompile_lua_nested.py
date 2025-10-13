#!/usr/bin/env python3
"""Decompiler for the vfs LuaHolder .res nested function bodies (WorkFlow/Scripts).

Format facts (cross-validated on the 25-file corpus, work/lua-nested-20260814):
  * main proto: [16B hdr][code (u16-swapped words, ROR29 op)][2B term]
                [u32 const count][consts][tail]           -- as LuaScriptsFull
  * tail = nested protos (+ main proto's remaining trailer sections).
  * nested proto header: [ld u8][ll u8][np u8][ms u8][va u8] + 4B field + 4B u32.
  * nested code words: PLAIN ROR29 (no u16 swap; verified on
    FlowActionReduceCDRate / ReduceEquipBuffCD: clean op sequence ending in
    RETURN `02 88 02 ea`).
  * code region ends with a RETURN word ((w&7)==2 && (w>>29)==7); the region is
    followed by post-code bytes then the const/locvar/upvalue-name strings
    (XOR-keyed, marker-prefixed; string consts carry tag 0x04).
  * the tail ends with upvalnames ['_ENV'] + [u16][u16 0x0000].

This decompiler performs a best-effort structural parse; boundaries marked
[LOW-CONF] where the format is not fully pinned.
"""
from __future__ import annotations
import sys
from pathlib import Path

sys.path.insert(0, "<research-workspace>/work/lua-scripts-full-20260814")
import decompile_vfs as DV
from decompile_vfs import KEY, OP_NAMES

def ror29(w): return ((w & 7) << 3) | (w >> 29)
def rol16(w): return ((w << 16) | (w >> 16)) & 0xffffffff
def field(w, lo, hi): return (w >> lo) & ((1 << (hi - lo + 1)) - 1)

class Decoder:
    """File-format operand layouts from opcode-semantics-20260814 (production
    decoder, decompile_lua_res_filefmt.py) applied to PLAIN-ROR29 words."""

    def __init__(self, consts, ms, upvalnames):
        self.c = consts
        self.ms = ms
        self.u = upvalnames

    def valid_k(self, k): return 0 <= k < len(self.c)

    def lit(self, i):
        if not self.valid_k(i): return f"K{i}"
        c = self.c[i]
        if c[0] == "str": return repr(c[1])
        if c[0] == "bool": return str(c[1]).lower()
        if c[0] in ("num", "num17"): return str(c[1])
        return "nil"

    def dec(self, w):
        op = ror29(w)
        b0, b1 = w & 0xff, (w >> 8) & 0xff
        name = OP_NAMES.get(op, f"OP{op}")
        if op in (6, 36, 47, 48, 60):  # GETTABUP
            A, U, K, RK = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f, (w >> 21) & 1
            if RK and self.valid_k(K):
                return f"R{A} = _ENV[{self.lit(K)}]"
            return f"GETTABUP R{A}, U{U}, K{K} [{w:08x}]"
        if op in (45, 46, 55, 58):  # GETTABLE
            A, B, K, RK = field(w, 3, 7), field(w, 21, 23), (b1 >> 1) & 0x1f, (w >> 21) & 1
            if RK and self.valid_k(K):
                return f"R{A} = R{B}[{self.lit(K)}]"
            return f"GETTABLE R{A}, R{B}, K{K} [{w:08x}]"
        if op in (1, 43):  # SETTABLE
            A, K, V = field(w, 21, 23), field(w, 3, 8), field(w, 9, 14)
            if self.valid_k(K):
                return f"R{A}[{self.lit(K)}] = R{V}"
            return f"SETTABLE R{A}, K{K}, V{V} [{w:08x}]"
        if op == 34:  # SETTABUP
            A, K = (b1 >> 4) & 0xf, (b0 >> 4)
            if self.valid_k(K):
                return f"_ENV[{self.lit(K)}] = R{A}"
            return f"SETTABUP K{K}, R{A} [{w:08x}]"
        if op in (8, 9, 12, 42):  # CALL family
            if op == 8:
                A, B, C = (b1 & 1), (b0 >> 3) & 0x1f, (b1 >> 3) & 0x1f
            else:
                A, B, C = (b1 >> 2) & 3, (b0 >> 3) & 0x1f, (b1 >> 1) & 0x1f
            nargs = max(B - 1, 0)
            argregs = ", ".join(f"R{i}" for i in range(A + 1, A + 1 + nargs))
            return f"R{A} = call R{A}({argregs})"
        if op in (26, 33, 50):  # LOADK family
            A, K = (b1 >> 1) & 3, (b1 >> 3) & 0x1f
            if self.valid_k(K):
                return f"R{A} = {self.lit(K)}"
            return f"LOADK R{A}, K{K} [{w:08x}]"
        if op in (44, 51):  # MOVE
            A, B = (b1 >> 1) & 0x1f, field(w, 21, 23)
            return f"R{A} = R{B}"
        if op in (30, 56):  # CLOSURE
            A, P = field(w, 21, 23), (b0 >> 5)
            return f"R{A} = <function #{P}>"
        if op in (32, 52, 61):  # NEWTABLE
            return f"R{field(w, 21, 23)} = {{}}"
        if op == 2:  # GETUPVAL
            A, B = field(w, 21, 23), field(w, 3, 7)
            nm = self.u[B] if B < len(self.u) else f"U{B}"
            return f"R{A} = {nm}"
        if op == 29:  # SETUPVAL
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"U{B} = R{A}"
        if op in (53, 54):  # SELF
            A, B, K = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            if self.valid_k(K):
                return f"R{A+1} = R{B}; R{A} = R{B}[{self.lit(K)}]"
            return f"SELF R{A}, R{B}, K{K} [{w:08x}]"
        if op == 23:
            return "return"
        if op == 39:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"goto L{{pc+1+{B}}}  -- JMP"
        if op == 24:
            A, B = field(w, 21, 23), (b0 >> 3) & 0x1f
            return f"if not R{A} then"
        if op in (25, 40):
            return f"testset [{w:08x}]"
        if op == 31:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A}..R{B} = nil"
        if op == 0:
            A, B, C = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            return f"R{A} = R{B}..R{C}"
        if op == 5:
            return f"R{field(w, 21, 23)}.. = ..."
        if op == 22:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A} = #R{B}"
        if op in (19, 21, 20):
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A} = {'-R' if op == 19 else 'not R' if op == 21 else '~R'}{B}"
        if op in (35, 57):
            A, B, K = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            return f"if R{B} == {self.lit(K) if self.valid_k(K) else f'K{K}'} then -- EQ"
        if op in (7, 10, 11, 13, 14, 15, 16, 17, 18):
            return f"{name} [{w:08x}]"
        if op == 41:
            return f"return R{field(w, 21, 23)}(...)"
        if op in (4, 28, 27, 38, 3, 37, 49, 59, 62, 63):
            return f"{name} [{w:08x}]" if op not in (49, 59, 62, 63) else "nop"
        return f"{name} [{w:08x}]"


def dec_str(data, p):
    m = data[p]
    if m == 0:
        return b"", p + 1
    if m == 0xff:
        n = int.from_bytes(data[p+1:p+5], 'little') - 1
        ds = p + 5
    else:
        n = m - 1
        ds = p + 1
    if ds + n > len(data):
        return None, None
    return bytes(b ^ KEY[i % 32] for i, b in enumerate(data[ds:ds+n])), ds + n


def find_strings(tail):
    """All XOR strings with their offsets and whether a 0x04 tag precedes."""
    out = []
    i = 0
    n = len(tail)
    while i < n:
        if tail[i] in (4, 0x14):
            s, p = dec_str(tail, i + 1)
            if s is not None and all(32 <= c < 127 or c in (9, 10, 13) for c in s) and len(s) >= 1:
                out.append((i, i + 1, len(s), s, True))  # tagged const
        s, p = dec_str(tail, i)
        if s is not None and all(32 <= c < 127 or c in (9, 10, 13) for c in s) and len(s) >= 1:
            out.append((i, i + 1, len(s), s, False))
        i += 1
    return out


def find_code_regions(tail):
    """Locate nested code regions: every maximal run of plain-ROR29 words ending
    with a RETURN word, where the words are 4-byte aligned from a shared start
    and the region is followed by string data (marker)."""
    regions = []
    i = 0
    n = len(tail)
    while i < n:
        # try every offset as a code start; grow until RETURN
        start = i
        p = start
        words = []
        while p + 4 <= n:
            w = int.from_bytes(tail[p:p+4], 'little')
            words.append(w)
            p += 4
            if ror29(w) == 23:
                break
        if words and ror29(words[-1]) == 23 and len(words) >= 1:
            regions.append((start, p, words))
            i = p
        else:
            i += 1
    return regions


def parse_nested(tail):
    """Structural parse: header + code + strings. Returns a dict."""
    hdr5 = tail[0:5]
    ld, ll, np, ms, va = hdr5
    field4 = tail[5:9]
    u32 = int.from_bytes(tail[9:13], 'little')
    regions = find_code_regions(tail)
    strings = find_strings(tail)
    return {
        "hdr5": hdr5.hex(' '), "ld": ld, "ll": ll, "np": np, "ms": ms, "va": va,
        "field4": field4.hex(' '), "u32": u32, "code_regions": regions,
        "strings": strings,
    }


def decompile_tail(tail, indent=""):
    out = []
    info = parse_nested(tail)
    out.append(f"{indent}-- nested hdr5: {info['hdr5']}  (ld={info['ld']} ll={info['ll']} "
               f"np={info['np']} ms={info['ms']} va={info['va']})")
    out.append(f"{indent}-- field4: {info['field4']}  u32@+9: {info['u32']}")
    # best-effort: decode each candidate code region
    for idx, (start, end, words) in enumerate(info["code_regions"][:4]):
        out.append(f"{indent}-- code region #{idx}: +0x{start:04x}..0x{end:04x} ({len(words)} words)")
        out.append(f"{indent}function <nested_{idx}>(...)")
        for k, w in enumerate(words):
            op = ror29(w)
            conf = "  -- [LOW-CONF]" if op in (0, 49, 59, 62, 63) or w == 0 else ""
            out.append(f"{indent}   {k:5d}| [{w:08x}] op{op:02d} {OP_NAMES.get(op,'?')}{conf}")
        out.append(f"{indent}end")
    out.append(f"{indent}-- strings in tail:")
    for off, moff, slen, s, tagged in info["strings"][:40]:
        tag = "tag04" if tagged else "marker"
        out.append(f"{indent}--   +0x{off:04x} [{tag}] {s!r}")
    return "\n".join(out)
