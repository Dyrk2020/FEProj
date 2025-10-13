#!/usr/bin/env python3
"""Decompiler for Tencent FEProj format=1 Lua chunks (Wild Rift 7.2 FETest .res).

Semantics: libFEProj luaV_execute dispatch (opcode-semantics.md) provides the
SEMANTIC CLASS per opcode number (verified against 62 handler addresses);
operand LAYOUTS come from the empirically-verified FILE format (the corpus .res
files were compiled by a compiler generation whose table/list/load opcodes
agree with the VM; op8/9/12/30/35/36 differ — see opcode-semantics.md §4).

Improvements over work/lua-decompile-20260814/decompile_lua_res.py:
  * RK (register-vs-constant) keys for GETTABLE/GETTABUP/SETTABLE/SETTABUP —
    fixes "K out of range" LOW-CONF on safecall/pprint/queue/ActionMgr.
  * VM-derived semantic names for UNK opcodes (MOVE/CLOSURE/GETTABLE/SELF/...).
"""
from __future__ import annotations
import sys
from pathlib import Path

sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

OPNAMES = {0: "CONCAT", 1: "SETTABLE", 2: "GETUPVAL", 3: "LOADKx", 4: "FORPREP",
           5: "VARARG", 6: "GETTABUP", 7: "ADD", 8: "CALL", 9: "CALL", 10: "MOD",
           11: "POW", 12: "CALL", 13: "IDIV", 14: "BAND", 15: "BOR", 16: "BXOR",
           17: "SHL", 18: "SHR", 19: "UNM", 20: "BNOT", 21: "NOT", 22: "LEN",
           23: "RETURN", 24: "TEST", 25: "TESTSET", 26: "LOADBOOL", 27: "SETLIST",
           28: "FORLOOP", 29: "SETUPVAL", 30: "CLOSURE", 31: "LOADNIL",
           32: "NEWTABLE", 33: "LOADK", 34: "SETTABUP", 35: "EQ", 36: "GETTABUP",
           37: "LE", 38: "TFORCALL", 39: "JMP", 40: "TESTSET", 41: "TAILCALL",
           42: "CALL", 43: "SETTABLE", 44: "MOVE", 45: "GETTABLE", 46: "GETTABLE",
           47: "GETTABUP", 48: "GETTABUP", 49: "NOP", 50: "LOADK", 51: "MOVE",
           52: "NEWTABLE", 53: "SELF", 54: "SELF", 55: "GETTABLE", 56: "CLOSURE",
           57: "EQ", 58: "GETTABLE", 59: "NOP", 60: "GETTABUP", 61: "NEWTABLE",
           62: "NOP", 63: "NOP"}

def ror29(w): return ((w & 7) << 3) | (w >> 29)
def field(w, lo, hi): return (w >> lo) & ((1 << (hi - lo + 1)) - 1)

class ConstView:
    def __init__(self, consts): self.c = consts
    def lit(self, i, quote=True):
        if not (0 <= i < len(self.c)): return f"K{i}"
        c = self.c[i]
        t = c["tag"]
        if t in ("shortstr", "longstr"): return repr(c["value"]) if quote else c["value"]
        if t == "int": return str(c["value"])
        if t == "float": return repr(c["value"])
        if t == "fix64": return f"fix64({c['value']})"
        if t == "bool": return str(c["value"]).lower()
        return "nil"

class RegFile:
    def __init__(self, ms): self.r = [None]*ms; self.ms = ms
    def __setitem__(self, i, v):
        if 0 <= i < self.ms: self.r[i] = v
    def __getitem__(self, i):
        return self.r[i] if 0 <= i < self.ms else None
    def clear(self, lo, hi):
        for i in range(lo, min(hi+1, self.ms)): self.r[i] = None

class Decoder:
    def __init__(self, proto, cv, depth, fid):
        self.p = proto; self.cv = cv; self.depth = depth; self.fid = fid

    def valid_k(self, k): return 0 <= k < len(self.p.get("consts", []))
    def ms(self): return self.p.get("maxstacksize", 0)

    def dec(self, pc, w):
        op = ror29(w)
        b0, b1 = w & 0xff, (w >> 8) & 0xff
        name = OPNAMES.get(op, f"OP{op}")
        cv, ms = self.cv, self.ms()
        un = self.p.get("upvalnames", [])
        pro = self.p.get("protos", [])

        # ---- GETTABUP (file layout A=bits21-23, U=bits3-7, K=bits9-13; RK=bit21)
        if op in (6, 36, 47, 48, 60):
            A, U, K, RK = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f, (w >> 21) & 1
            if RK and self.valid_k(K):
                return f"R{A} = _ENV[{cv.lit(K)}]", "GETTABUP", 0.9
            if not RK and 0 <= K < ms:
                return f"R{A} = _ENV[R{K}]", "GETTABUP", 0.8
            return f"GETTABUP R{A}, U{U}, K{K} [{w:08x}]", "GETTABUP", 0.4
        # ---- GETTABLE (A=bits3-7, B=bits21-23, K=bits9-13; RK=bit21)
        if op in (45, 46, 55, 58):
            A, B, K, RK = field(w, 3, 7), field(w, 21, 23), (b1 >> 1) & 0x1f, (w >> 21) & 1
            if RK and self.valid_k(K):
                return f"R{A} = R{B}[{cv.lit(K)}]", "GETTABLE", 0.9
            if not RK and 0 <= K < ms:
                return f"R{A} = R{B}[R{K}]", "GETTABLE", 0.85
            return f"GETTABLE R{A}, R{B}, K{K} [{w:08x}]", "GETTABLE", 0.4
        # ---- SETTABLE (A=bits21-23, key=bits3-8, val=bits9-14)
        if op in (1, 43):
            A, K, V = field(w, 21, 23), field(w, 3, 8), field(w, 9, 14)
            if self.valid_k(K) and self.valid_k(V):
                return f"R{A}[{cv.lit(K)}] = {cv.lit(V)}", "SETTABLE", 0.85
            if self.valid_k(K):
                return f"R{A}[{cv.lit(K)}] = R{V}", "SETTABLE", 0.8
            return f"SETTABLE R{A}, K{K}, V{V} [{w:08x}]", "SETTABLE", 0.4
        # ---- SETTABUP _ENV (K=bits4-7, A=bits12-15)
        if op == 34:
            A, K = (b1 >> 4) & 0xf, (b0 >> 4)
            if self.valid_k(K):
                return f"_ENV[{cv.lit(K)}] = R{A}", "SETTABUP", 0.9
            return f"SETTABUP K{K}, R{A} [{w:08x}]", "SETTABUP", 0.4
        # ---- CALL family (op8: A=b1&1,B=(b0>>3)&0x1f,C=(b1>>3)&0x1f; op9/12/42)
        if op in (8, 9, 12, 42):
            if op == 8:
                A, B, C = (b1 & 1), (b0 >> 3) & 0x1f, (b1 >> 3) & 0x1f
            else:
                A, B, C = (b1 >> 2) & 3, (b0 >> 3) & 0x1f, (b1 >> 1) & 0x1f
            nargs = max(B - 1, 0)
            argregs = ", ".join(f"R{i}" for i in range(A + 1, A + 1 + nargs))
            return f"R{A} = call R{A}({argregs})", "CALL", 0.7
        # ---- LOADK (A=bits9-10, K=bits11-15); op26 is a LOADK variant in file format
        if op in (26, 33, 50):
            A, K = (b1 >> 1) & 3, (b1 >> 3) & 0x1f
            if self.valid_k(K):
                return f"R{A} = {cv.lit(K)}", "LOADK", 0.9
            return f"LOADK R{A}, K{K} [{w:08x}]", "LOADK", 0.35
        # ---- MOVE
        if op in (44, 51):
            A, B = (b1 >> 1) & 0x1f, field(w, 21, 23)
            if A < ms and B < ms:
                return f"R{A} = R{B}", "MOVE", 0.9
            return f"MOVE R{A}, R{B} [{w:08x}]", "MOVE", 0.4
        # ---- CLOSURE
        if op in (30, 56):
            A, P = field(w, 21, 23), (b0 >> 5)
            if P < len(pro):
                return f"R{A} = <function #{P}>", "CLOSURE", 0.85
            return f"CLOSURE R{A}, P{P} [{w:08x}]", "CLOSURE", 0.4
        # ---- NEWTABLE
        if op in (32, 52, 61):
            A = field(w, 21, 23)
            return f"R{A} = {{}}", "NEWTABLE", 0.8
        # ---- GETUPVAL
        if op == 2:
            A, B = field(w, 21, 23), field(w, 3, 7)
            nm = un[B] if B < len(un) else f"U{B}"
            return f"R{A} = {nm}", "GETUPVAL", 0.85
        # ---- SETUPVAL
        if op == 29:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"U{B} = R{A}", "SETUPVAL", 0.8
        # ---- SELF
        if op in (53, 54):
            A, B, K = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            if self.valid_k(K):
                return f"R{A+1} = R{B}; R{A} = R{B}[{cv.lit(K)}]", "SELF", 0.7
            return f"SELF R{A}, R{B}, K{K} [{w:08x}]", "SELF", 0.35
        # ---- RETURN
        if op == 23:
            return "return", "RETURN", 0.9
        # ---- JMP
        if op == 39:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"goto L{pc + 1 + B}  -- JMP", "JMP", 0.7
        if op == 28:
            return f"forloop [{w:08x}]", "FORLOOP", 0.4
        if op == 4:
            return f"forprep [{w:08x}]", "FORPREP", 0.4
        # ---- TEST / TESTSET
        if op == 24:
            A, B = field(w, 21, 23), (b0 >> 3) & 0x1f
            return f"if not R{A} then", "TEST", 0.6
        if op in (25, 40):
            return f"testset [{w:08x}]", "TESTSET", 0.35
        # ---- LOADBOOL
        if op == 26:
            A, B, C = field(w, 21, 23), field(w, 3, 7), field(w, 9, 11)
            return f"R{A} = {bool(B)}", "LOADBOOL", 0.75
        # ---- LOADNIL
        if op == 31:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A}..R{B} = nil", "LOADNIL", 0.7
        # ---- CONCAT
        if op == 0:
            A, B, C = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            return f"R{A} = R{B}..R{C}", "CONCAT", 0.6
        # ---- VARARG
        if op == 5:
            A = field(w, 21, 23)
            return f"R{A}.. = ...", "VARARG", 0.6
        # ---- LEN / unary
        if op == 22:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A} = #R{B}", "LEN", 0.7
        if op == 19:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A} = -R{B}", "UNM", 0.6
        if op == 21:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A} = not R{B}", "NOT", 0.6
        if op == 20:
            A, B = field(w, 21, 23), field(w, 3, 7)
            return f"R{A} = ~R{B}", "BNOT", 0.5
        # ---- EQ/LT/LE
        if op in (35, 57):
            A, B, K = field(w, 21, 23), field(w, 3, 7), (b1 >> 1) & 0x1f
            return f"if R{B} == {cv.lit(K) if self.valid_k(K) else f'K{K}'} then -- EQ", "EQ", 0.55
        if op == 37:
            return f"le-ish [{w:08x}]", "LE", 0.3
        # ---- arithmetic (VM class; file layout unverified → LOW-CONF)
        if op in (7, 10, 11, 13, 14, 15, 16, 17, 18):
            return f"{name} [{w:08x}]", name, 0.3
        # ---- TAILCALL / TFORCALL / SETLIST / LOADKx
        if op == 41:
            return f"return R{field(w, 21, 23)}(...)", "TAILCALL", 0.6
        if op == 38:
            return f"tforcall [{w:08x}]", "TFORCALL", 0.3
        if op == 27:
            return f"setlist [{w:08x}]", "SETLIST", 0.35
        if op == 3:
            return f"loadkx [{w:08x}]", "LOADKx", 0.3
        # ---- NOP
        if op in (49, 59, 62, 63):
            return "nop", "NOP", 0.9
        return f"{name} [{w:08x}]", name, 0.15


def render_proto(proto, cv, out, depth=0, fname="<main>", fid=0):
    ind = "    " * depth
    out.append(f"{ind}function {fname}(...)")
    dec = Decoder(proto, cv, depth, fid)
    # locvar annotation: name -> startpc
    locs = []
    for lv in proto.get("locvars", []):
        if lv["name"]:
            locs.append((lv["startpc"], lv["name"]))
    locs.sort()
    li = 0
    for pc, ins in enumerate(proto["code"]):
        w = ins["raw"]
        line, sem, conf = dec.dec(pc, w)
        annot = ""
        while li < len(locs) and locs[li][0] == pc:
            annot += f"  -- local {locs[li][1]} starts here"
            li += 1
        if conf < 0.5:
            mark = f"  -- [LOW-CONF {sem}]{annot}"
        else:
            mark = annot
        out.append(f"{ind}   {pc:5d}| {line}{mark}")
    out.append(f"{ind}end")
    out.append("")
    for i, child in enumerate(proto.get("protos", [])):
        render_proto(child, cv, out, depth + 1, f"<function_{i}>", fid * 100 + i + 1)


def decompile_res(path: Path) -> str:
    parsed = parse_res(path)
    out = []
    out.append(f"-- Decompiled from {path}")
    out.append(f"-- source: {parsed['source']}")
    out.append("-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f")
    out.append("-- semantics: libFEProj luaV_execute dispatch (work/opcode-semantics-20260814/opcode-semantics.md)")
    out.append("")
    cv = ConstView(parsed["proto"].get("consts", []))
    render_proto(parsed["proto"], cv, out, 0, "<main>", 0)
    return "\n".join(out)


def main():
    ap = sys.argv[1:]
    quiet = "-q" in ap
    ap = [a for a in ap if a != "-q"]
    for src in ap:
        text = decompile_res(Path(src))
        if not quiet:
            print(text)
    return 0

if __name__ == "__main__":
    sys.exit(main())
