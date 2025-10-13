#!/usr/bin/env python3
"""Decompiler for Tencent FEProj format=1 Lua chunks (Wild Rift 7.2 FETest .res).

Recovers readable Lua-style pseudocode from Proto trees produced by
lua_res_parse.py (work/ai-cfg-recovery-2026-08-04/lua_res_parse.py).

Instruction encoding (recovered from corpus evidence, see README.md):
  opcode = ROR(w,29) & 0x3f  = ((w & 7) << 3) | (w >> 29)
  Operand layouts are per-opcode scrambled (no uniform iABC/iABx). The layouts
  below were derived by cross-referencing constant tables (LOADK indices must be
  in range), register bounds (maxstacksize), and known source semantics
  (TestMain require-chain, QuickTest FE.print error, FEEnumForLua generated
  enum tables). Undecoded opcodes are emitted as instruction-level lines
  annotated [LOW-CONF].
"""
from __future__ import annotations
import sys
from pathlib import Path

sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

# Empirically-derived opcode semantics (see README). Names for undecoded
# opcodes are UNK# so they are never confused with stock Lua semantics.
OPNAMES = {0: "UNK0", 1: "SETTABLE", 2: "UNK2", 3: "UNK3", 4: "FORPREP",
           5: "UNK5", 6: "GETTABUP", 7: "UNK7", 8: "CALL", 9: "CALL",
           10: "UNK10", 11: "UNK11", 12: "CALL", 13: "UNK13", 14: "UNK14",
           15: "UNK15", 16: "SETTABLE", 17: "UNK17", 18: "UNK18", 19: "UNK19",
           20: "UNK20", 21: "SETTABLE", 22: "UNK22", 23: "RETURN", 24: "TEST",
           25: "UNK25", 26: "LOADK", 27: "UNK27", 28: "FORLOOP", 29: "UNK29",
           30: "NEWTABLE", 31: "UNK31", 32: "NEWTABLE", 33: "LOADK",
           34: "SETTABUP", 35: "GETUPVAL", 36: "GETTABUP", 37: "UNK37",
           38: "UNK38", 39: "JMP", 40: "UNK40", 41: "UNK41", 42: "CALL",
           43: "SETTABLE", 44: "UNK44", 45: "GETTABLE", 46: "UNK46",
           47: "GETTABUP", 48: "UNK48", 49: "UNK49", 50: "LOADK", 51: "UNK51",
           52: "NEWTABLE", 53: "UNK53", 54: "UNK54", 55: "UNK55",
           56: "CLOSURE", 57: "UNK57", 58: "UNK58", 59: "UNK59", 60: "UNK60",
           61: "UNK61", 62: "UNK62", 63: "UNK63"}

# opcode -> (semantic, confidence) for README purposes
SEMANTICS = {
    6:  "GETTABUP", 23: "RETURN", 43: "SETTABLE", 45: "GETTABLE", 50: "LOADK",
    26: "LOADK", 34: "SETTABUP", 8: "CALL", 12: "CALL", 42: "CALL",
    36: "GETTABUP", 47: "GETTABUP", 30: "NEWTABLE", 32: "NEWTABLE", 35: "GETUPVAL",
    33: "LOADK", 28: "FORLOOP/JMP", 39: "JMP-ish", 4: "FORPREP-ish",
    56: "CLOSURE", 16: "SETTABLE-ish", 52: "NEWTABLE-ish",
}

def ror29(w: int) -> int:
    return ((w & 7) << 3) | (w >> 29)

def field(w, lo, hi):
    return (w >> lo) & ((1 << (hi - lo + 1)) - 1)

def sfmt(x):
    return str(x)

class ConstView:
    def __init__(self, consts):
        self.c = consts
    def get(self, i):
        if 0 <= i < len(self.c):
            return self.c[i]
        return None
    def lit(self, i, quote=True):
        c = self.get(i)
        if c is None:
            return f"<K{i} OOR>"
        t = c["tag"]
        if t in ("shortstr", "longstr"):
            v = c["value"]
            return '"' + v.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n") + '"'
        if t == "int":
            return str(c["value"])
        if t == "float":
            return repr(c["value"])
        if t == "fix64":
            return f"fix64({c['value']})"
        if t == "bool":
            return "true" if c["value"] else "false"
        return "nil"

class RegFile:
    """Symbolic register state for one proto."""
    def __init__(self, ms):
        self.r = [None] * ms
        self.defs = [None] * ms   # (kind, detail) for readability
    def __setitem__(self, i, v):
        if 0 <= i < len(self.r):
            self.r[i] = v
    def __getitem__(self, i):
        if 0 <= i < len(self.r) and self.r[i] is not None:
            return self.r[i]
        return f"R{i}"
    def clear(self, lo, hi):
        for i in range(lo, min(hi + 1, len(self.r))):
            self.r[i] = None

class Decoder:
    """Decodes one instruction into a readable pseudo-Lua line + flags."""
    def __init__(self, proto, cv: ConstView, depth: int, fid: int):
        self.p = proto
        self.cv = cv
        self.depth = depth
        self.fid = fid

    def dec(self, pc, w):
        op = ror29(w)
        b0, b1, b2, b3 = w & 0xff, (w >> 8) & 0xff, (w >> 16) & 0xff, (w >> 24) & 0xff
        low = None
        name = OPNAMES.get(op, f"OP{op}")
        if op == 23:  # RETURN
            # A/B fields unresolved; empty protos return nothing
            return "return", "RETURN", 0.9
        if op == 6:   # GETTABUP R{A:21-23}, U{B:3-7}, K{(b1>>1)&0x1f}
            A, B, K = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            if self.valid_k(K):
                return f"R{A} = _ENV[{self.cv.lit(K)}]", "GETTABUP", 0.8
            return f"GETTABUP R{A}, U{B}, K{K} [{w:08x}]", "GETTABUP", 0.4
        if op == 36:  # GETTABUP alt form (same layout)
            A, B, K = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            if self.valid_k(K):
                return f"R{A} = _ENV[{self.cv.lit(K)}]", "GETTABUP", 0.8
            return f"GETTABUP R{A}, U{B}, K{K} [{w:08x}]", "GETTABUP", 0.4
        if op == 47:  # GETTABUP alt form 2 (TestMain collectgarbage): A{21-23}
            A, K = field(w, 21, 23), (b1 >> 1) & 0x1f
            if self.valid_k(K):
                return f"R{A} = _ENV[{self.cv.lit(K)}]", "GETTABUP", 0.8
            return f"GETTABUP R{A}, K{K} [{w:08x}]", "GETTABUP", 0.4
        if op == 45:  # GETTABLE R{A:3-7}, R{B:21-23}, K{(b1>>1)&0x1f}
            A, B, K = field(w, 3, 7), field(w, 21, 23), (b1 >> 1) & 0x1f
            if self.valid_k(K):
                return f"R{A} = R{B}[{self.cv.lit(K)}]", "GETTABLE", 0.8
            return f"GETTABLE R{A}, R{B}, K{K} [{w:08x}]", "GETTABLE", 0.4
        if op in (50, 26):  # LOADK R{A:(b1>>1)&3}, K{(b1>>3)&0x1f}
            A, K = (b1 >> 1) & 3, (b1 >> 3) & 0x1f
            if self.valid_k(K):
                return f"R{A} = {self.cv.lit(K)}", "LOADK", 0.85
            return f"LOADK R{A}, K{K} [{w:08x}]", "LOADK", 0.35
        if op == 33:  # LOADK alt form: A{9-14} (FEEnum), K in byte1 high/byte2
            A = (b1 >> 1) & 0x3f
            for kcand, note in (((b1 >> 3) & 0x1f), "b1>>3"), ((b1 >> 1) & 0x1f, "b1>>1"):
                if self.valid_k(kcand):
                    return f"R{A} = {self.cv.lit(kcand)}", "LOADK", 0.5
            return f"LOADK R{A}, K? [{w:08x}]", "LOADK", 0.3
        if op == 34:  # SETTABUP _ENV, K{(b0>>4)}, R{A:(b1>>4)&0xf}
            A, K = (b1 >> 4) & 0xf, (b0 >> 4)
            if self.valid_k(K):
                return f"_ENV[{self.cv.lit(K)}] = R{A}", "SETTABUP", 0.8
            return f"SETTABUP K{K}, R{A} [{w:08x}]", "SETTABUP", 0.4
        if op == 43:  # SETTABLE R{A:21-23}, K{3-8}, V{9-14}
            A, K, V = field(w, 21, 23), field(w, 3, 8), field(w, 9, 14)
            if self.valid_k(K) and self.valid_k(V):
                return f"R{A}[{self.cv.lit(K)}] = {self.cv.lit(V)}", "SETTABLE", 0.8
            return f"SETTABLE R{A}, K{K}, V{V} [{w:08x}]", "SETTABLE", 0.45
        if op in (8, 9, 12, 42):  # CALL
            if op == 8:
                A, B, C = (b1 & 1), (b0 >> 3) & 0x1f, (b1 >> 3) & 0x1f
            else:  # op9 / op12 / op42
                A, B, C = (b1 >> 2) & 3, (b0 >> 3) & 0x1f, (b1 >> 1) & 0x1f
            nargs = max(B - 1, 0)
            argregs = ", ".join(f"R{i}" for i in range(A + 1, A + 1 + nargs))
            return f"R{A} = call R{A}({argregs})", "CALL", 0.6
        if op in (1, 21, 22):  # SETTABLE-ish: R{A:21-23}[K{bits3-7}] = R{B:(b1>>2)&3}
            A, K, B = field(w, 21, 23), (b0 >> 3) & 0x1f, (b1 >> 2) & 3
            if self.valid_k(K):
                return f"R{A}[{self.cv.lit(K)}] = R{B}", "SETTABLE", 0.4
            return f"SETTABLE R{A}, K{K}, R{B} [{w:08x}]", "SETTABLE", 0.25
        if op == 16:  # SETTABLE (queue form): R{A:(b1>>2)&3}[K{bits3-7}] = R{B:21-23}
            A, K, B = (b1 >> 2) & 3, (b0 >> 3) & 0x1f, field(w, 21, 23)
            if self.valid_k(K):
                return f"R{A}[{self.cv.lit(K)}] = R{B}", "SETTABLE", 0.6
            return f"SETTABLE R{A}, K{K}, R{B} [{w:08x}]", "SETTABLE", 0.35
        if op == 4:  # NEWTABLE-ish (queue main) / FORPREP-ish (loop prologue)
            A = b1 & 1
            return f"R{A} = {{}}", "NEWTABLE", 0.4
        if op == 24:  # TEST-ish (condition before JMP)
            A, B = field(w, 21, 23), (b0 >> 3) & 0x1f
            return f"if not R{A} then -- TEST-ish", "TEST", 0.3
        if op == 30:  # NEWTABLE
            A = field(w, 21, 23)
            return f"R{A} = {{}}", "NEWTABLE", 0.6
        if op == 32:  # NEWTABLE alt
            A = field(w, 21, 23)
            return f"R{A} = {{}}", "NEWTABLE", 0.5
        if op == 35:  # GETUPVAL R{A:21-23}, U{B:3-7}
            A, B = field(w, 21, 23), field(w, 3, 7)
            un = self.p.get("upvalnames", [])
            name = un[B] if B < len(un) else f"U{B}"
            return f"R{A} = {name}", "GETUPVAL", 0.7
        if op == 28:  # FORLOOP/JMP-ish
            return f"forloop/jmp [{w:08x}]", "FORLOOP", 0.3
        if op == 39:
            return f"jmp-ish [{w:08x}]", "JMP", 0.25
        if op == 56:  # CLOSURE R{A}, proto{(b0>>5)}
            A, P = field(w, 21, 23), (b0 >> 5)
            if P < len(self.p.get("protos", [])):
                return f"R{A} = <function #{P}>", "CLOSURE", 0.6
            return f"CLOSURE R{A}, P{P} [{w:08x}]", "CLOSURE", 0.3
        if op == 16:  # SETTABLE-ish: K{(b0>>3)&0x1f}
            A, K, B = field(w, 21, 23), (b0 >> 3) & 0x1f, (b1 >> 2) & 3
            if self.valid_k(K):
                return f"R{A}[{self.cv.lit(K)}] = R{B}", "SETTABLE", 0.5
            return f"SETTABLE-ish R{A}, K{K}, R{B} [{w:08x}]", "SETTABLE", 0.3
        if op == 52:
            A = field(w, 21, 23)
            return f"R{A} = {{}}", "NEWTABLE", 0.45
        # Unknown opcodes: raw line
        return f"{name} [{w:08x}]", name, 0.15

    def valid_k(self, k):
        return 0 <= k < len(self.p.get("consts", []))


def render_proto(proto, cv, out, depth=0, fname="<main>", fid=0, ctx=None):
    ind = "    " * depth
    # signature
    params = ", ".join(f"p{i}" for i in range(proto["numparams"]))
    vararg = "..." if proto["is_vararg"] else ""
    sep = ", " if params and vararg else ""
    upns = proto.get("upvalnames", [])
    upstr = (" upvals=" + ",".join(upns)) if upns else ""
    out.append(f"{ind}-- proto#{fid} lines {proto['linedef']}..{proto['lastline']}"
               f" np={proto['numparams']} va={proto['is_vararg']} ms={proto['maxstacksize']}{upstr}")
    out.append(f"{ind}function {fname}({params}{sep}{vararg})")
    body_ind = ind + "    "
    # locvar register map (startpc -> name)
    locmap = {}
    for lv in proto["locvars"]:
        locmap[lv["startpc"]] = lv["name"]
    # emit instructions
    code = proto["code"]
    n = len(code)
    for pc, insn in enumerate(code):
        w = insn["raw"]
        d = Decoder(proto, cv, depth, fid)
        line, sem, conf = d.dec(pc, w)
        if locmap.get(pc):
            line = f"{line}  -- local {locmap[pc]} starts here"
        if conf < 0.5:
            line = f"{line}  -- [LOW-CONF {sem}]"
        out.append(f"{body_ind}{pc:4d}| {line}")
    out.append(f"{ind}end")
    out.append("")
    # nested protos
    for i, child in enumerate(proto.get("protos", [])):
        child_cv = ConstView(child.get("consts", []))
        render_proto(child, child_cv, out, depth + 1, f"<function_{i}>", fid * 100 + i + 1)


def decompile_res(path: Path) -> str:
    parsed = parse_res(path)
    out = []
    out.append(f"-- Decompiled from {parsed['path']} ({parsed['size']} bytes)")
    out.append(f"-- source: {parsed['source']}")
    out.append(f"-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f")
    out.append("")
    cv = ConstView(parsed["proto"].get("consts", []))
    render_proto(parsed["proto"], cv, out, 0, "<main>", 0)
    return "\n".join(out)


def main():
    ap = sys.argv[1:]
    if not ap:
        print("usage: decompile_lua_res.py <file.res> [out.lua]", file=sys.stderr)
        return 1
    src = Path(ap[0])
    text = decompile_res(src)
    if len(ap) > 1:
        Path(ap[1]).write_text(text, encoding="utf-8")
    else:
        sys.stdout.write(text)
    return 0

if __name__ == "__main__":
    sys.exit(main())
