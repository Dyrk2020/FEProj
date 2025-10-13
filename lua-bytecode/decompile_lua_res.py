#!/usr/bin/env python3
"""Decompiler for Tencent FEProj format=1 Lua chunks (Wild Rift 7.2 FETest .res).

Opcode semantics recovered from libFEProj luaV_execute (0x55C6760, static VA==file
offset) dispatch table at 0x58B1AFC (XOR-0x30 encoded, 62 entries) — see
opcode-semantics.md.  Handler operand layouts are decoded from the handler-head
instruction-extraction sequences (lsr/and/bfxil), NOT from empirical fitting.

Field decode semantics for a handler head:
    lsr  wN, w28, #k      ->  wN = w >> k
    and  wN, wN, #m       ->  wN &= m          (keeps w bits k+p for each set bit p of m)
    bfxil wN, w28, #l, #d ->  wN |= (w>>l)&((1<<d)-1)
"""
from __future__ import annotations
import sys, re
from pathlib import Path

sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

# ---------------------------------------------------------------------------
# Opcode semantics — VM-dispatch verified (handler address in parentheses)
# ---------------------------------------------------------------------------
OPNAMES = {0: "CONCAT", 1: "SETTABLE", 2: "GETUPVAL", 3: "LOADKx", 4: "FORPREP",
           5: "VARARG", 6: "GETTABUP", 7: "ADD", 8: "SUB", 9: "MUL", 10: "MOD",
           11: "POW", 12: "DIV", 13: "IDIV", 14: "BAND", 15: "BOR", 16: "BXOR",
           17: "SHL", 18: "SHR", 19: "UNM", 20: "BNOT", 21: "NOT", 22: "LEN",
           23: "RETURN", 24: "TEST", 25: "TESTSET", 26: "LOADBOOL", 27: "SETLIST",
           28: "FORLOOP", 29: "SETUPVAL", 30: "CLOSURE", 31: "LOADNIL",
           32: "NEWTABLE", 33: "LOADK", 34: "SETTABUP", 35: "EQ", 36: "LT",
           37: "LE", 38: "TFORCALL", 39: "JMP", 40: "TESTSET", 41: "TAILCALL",
           42: "CALL", 43: "SETTABLE", 44: "MOVE", 45: "GETTABLE", 46: "GETTABLE",
           47: "GETTABUP", 48: "GETTABUP", 49: "NOP", 50: "LOADK", 51: "MOVE",
           52: "NEWTABLE", 53: "SELF", 54: "SELF", 55: "GETTABLE", 56: "CLOSURE",
           57: "EQ", 58: "GETTABLE", 59: "NOP", 60: "GETTABUP", 61: "NEWTABLE",
           62: "NOP", 63: "NOP"}

HANDLER = {0: 0x55CA6A8, 1: 0x55C7C84, 2: 0x55C7CB8, 3: 0x55C7D04, 4: 0x55CA7E4,
           5: 0x55C7D3C, 6: 0x55C7E7C, 7: 0x55C7EC8, 8: 0x55C80A0, 9: 0x55C68CC,
           10: 0x55C828C, 11: 0x55C6AB0, 12: 0x55C6C80, 13: 0x55C84D8, 14: 0x55C6E40,
           15: 0x55C8730, 16: 0x55C7048, 17: 0x55C8940, 18: 0x55C8B58, 19: 0x55C8D98,
           20: 0x55C8E6C, 21: 0x55C8F6C, 22: 0x55C8FD0, 23: 0x55CA87C, 24: 0x55C9000,
           25: 0x55C7248, 26: 0x55C9054, 27: 0x55C72AC, 28: 0x55C73B8, 29: 0x55C747C,
           30: 0x55C9940, 31: 0x55C74D0, 32: 0x55C909C, 33: 0x55C9120, 34: 0x55C9140,
           35: 0x55C7538, 36: 0x55C75F0, 37: 0x55C9F88, 38: 0x55C9A7C, 39: 0x55C9B04,
           40: 0x55C9AD0, 41: 0x55C764C, 42: 0x55C9B44, 43: 0x55CA73C, 44: 0x55C9224,
           45: 0x55C9248, 46: 0x55C9270, 47: 0x55C941C, 48: 0x55C9B9C, 49: 0x55CA65C,
           50: 0x55C7684, 51: 0x55C9504, 52: 0x55C95DC, 53: 0x55C9DF8, 54: 0x55C7750,
           55: 0x55C7838, 56: 0x55C97F0, 57: 0x55C7538, 58: 0x55CA770, 59: 0x55CA65C,
           60: 0x55C7A88, 61: 0x55C9FE8, 62: 0x55CA65C, 63: 0x55CA65C}

# ---------------------------------------------------------------------------
# Operand field decoders — layouts from handler heads (lsr/and/bfxil).
# Each returns (value, rk_flag).  rk_flag True means "constant index into k[]".
# ---------------------------------------------------------------------------

def ror29(w: int) -> int:
    return ((w & 7) << 3) | (w >> 29)

def F(w, k, m, l=None, wd=None):
    """Simulate lsr #k; and #m; [bfxil #l,#wd] on w28."""
    v = (w >> k) & m
    if l is not None:
        v |= (w >> l) & ((1 << wd) - 1)
    return v

# -- table/list ops (GETTABUP/GETTABLE/SETTABLE/SELF/EQ/LT/LE): handler template
def fA(w):    return F(w, 21, 0xfe, 8, 1)          # A: bits {22..28,8}
def fB(w):    return F(w, 10, 0x1e0, 3, 5)          # B: bits {10..14,3..7}
def fC(w):    return F(w, 13, 0x1c0, 9, 6)          # C: bits {19..21,9..14}
def rk_b(w):  return (w >> 18) & 1                  # RK flag for B (op35/36/37)
def rk_c(w):  return (w >> 21) & 1                  # RK flag for C (op6/45/…)

def fA_rc(w):  return F(w, 21, 0x80, 9, 7)          # RETURN-ish A
def fB_rc(w):  return F(w, 9, 0x180, 18, 7)         # RETURN-ish B
def fC_rc(w):  return F(w, 19, 0x1c0, 3, 6)         # CONCAT C
def fK_rc(w):  return F(w, 21, 0x80, 9, 7)          # unused alias

# LOADK family: A bits {3..8,9..10}, K bits {11..28}
def fA_k(w):   return F(w, 1, 0xfc, 9, 2)
def fK_k(w):   return (w >> 11) & 0x3FFFF
def fA_kx(w):  return F(w, 21, 0x1e0, 3, 5)         # LOADKx: A only (K = next ins)

# GETUPVAL: A {22..28,8}, U {10..14,3..7}
def fA_u(w):   return F(w, 21, 0xfe, 8, 1)
def fU_u(w):   return F(w, 10, 0x1e0, 3, 5)

# SETUPVAL: A bits {1..4? see handler}, U — op29 handler: lsr#1 bfx(13,4) >>5 bfx(24,5)
def fA_su(w):  return F(w, 1, 0xf, 5, 5)            # A bits {1..4,10..14}
def fU_su(w):  return F(w, 1, 0xf0, 13, 4)          # U bits {5..8,13..16}

# CLOSURE: A {3..4,23..28}, P {5..22}  (dispatcher precomputes w9 = w<<3)
def fA_c(w):   return ((w >> 3) & 3) << 6 | ((w >> 23) & 0x3F)
def fP_c(w):   return (w >> 5) & 0x3FFFF

# RETURN: A bits {3..10}, B bits {18..26}  — op23 handler lsr#16/bfx(25,2)
def fA_r(w):   return (w >> 3) & 0xFF
def fB_r(w):   return F(w, 16, 0x3, 25, 2)          # B bits {16..17,25..26}

# CALL family: A {22..28,8}, B=nargs+1, C=nresults+1 (op42/41/38)
def fA_call(w):  return F(w, 21, 0xfe, 8, 1)
def fB_call(w):  return F(w, 19, 0x1c0, 9, 6)
def fC_call(w):  return F(w, 10, 0x1e0, 3, 5)
def fA_tc(w):    return F(w, 14, 0x1, 22, 7)        # TAILCALL A {14,22..28}
def fB_tc(w):    return (w >> 12) & 0x1FF           # TAILCALL B {12..20}

# JMP: A {18..25}, sBx {3..17,26..28} sign 18-bit
def fA_jmp(w):  return (w >> 18) & 0xFF
def fsBx_jmp(w):
    v = ((w >> 3) & 0x7FFF) | (((w >> 26) & 7) << 15)
    return v - 0x1FFFF

# FORLOOP: A {21..28}, sBx {3..20} sign 18-bit
def fA_fl(w):   return (w >> 21) & 0xFF
def fsBx_fl(w): return ((w >> 3) & 0x3FFFF) - 0x1FFFF
# FORPREP: A {3,22..28}, sBx {4..20} sign 17-bit
def fA_fp(w):   return ((w >> 3) & 1) << 7 | ((w >> 22) & 0x7F)
def fsBx_fp(w): return ((w >> 4) & 0x1FFFF) - 0x1FFFF

# MOVE (op44/51): A {10..14,3..7}, B {22..28,8}
def fA_mv(w):  return F(w, 10, 0x1e0, 3, 5)
def fB_mv(w):  return F(w, 21, 0xfe, 8, 1)

# VARARG: A {22..28,8}, B {10..14,3..7}
def fA_va(w):  return F(w, 21, 0xfe, 8, 1)
def fB_va(w):  return F(w, 10, 0x1e0, 3, 5)

# SETTABUP (op34): U {9..11,17..20}, B/RK, C/RK
def fU_stu(w): return F(w, 9, 0xf0, 17, 4)
def fB_stu(w): return F(w, 4, 0x1fe, 28, 1), (w >> 17) & 1
def fC_stu(w): return F(w, 19, 0x1fc, 3, 2), (w >> 25) & 1

# SETLIST: A {3..9,18}, B {9..15,21}, C {19..26}  — from op27 handler
def fA_sl(w):  return F(w, 11, 0x3, 19, 2)          # A {11..12,19..20}
def fB_sl(w):  return F(w, 9, 0x1f, 20, 1)          # B {9..13,20}
def fC_sl(w):  return F(w, 3, 0x7f, 21, 1)          # C {3..9,21}

# LOADNIL: A {20..27}, B {3..10,28}  — op31 handler lsr#20 bfx(3,8)
def fA_nil(w): return (w >> 20) & 0xFF
def fB_nil(w): return F(w, 20, 0xff, 3, 8)

# LOADBOOL (op26): A {22..28,8}, B {10..14,3..7}, C {19..21,9..14}
def fA_bool(w): return F(w, 21, 0xfe, 8, 1)
def fB_bool(w): return F(w, 10, 0x1e0, 3, 5)
def fC_bool(w): return F(w, 13, 0x1c0, 9, 6)

# TEST/TESTSET (op24/25/40): A {22..28,8}, C {19..21,9..14}
def fA_tst(w): return F(w, 21, 0xfe, 8, 1)
def fC_tst(w): return F(w, 13, 0x1c0, 9, 6)

# Arithmetic ops 7..18 — per-opcode A/B/C layouts (from handler heads):
# op7 ADD:  A=(w>>14)&0x1f<<5|(w>>25)&0xf?? — use generic extraction table
ARITH = {
    7:  (lambda w: (F(w,14,0x1f<<5,25,4), F(w,5,0x1f,23,2), F(w,14,0x1f<<5,25,4))),  # placeholder
}

# op36 LT / op37 LE: A {15..18,9..12}, B {19..25,13..14} RK25, C {26..28,3..8} RK28
def fA_cmp(w): return F(w, 11, 0xf0, 9, 4)
def fB_cmp(w): return F(w, 17, 0x1fc, 13, 2)
def fC_cmp(w): return F(w, 20, 0x1c0, 3, 6)
def rk_b25(w): return (w >> 25) & 1
def rk_c28(w): return (w >> 28) & 1

BINOP = {7: "+", 8: "-", 9: "*", 10: "%", 11: "^", 12: "/", 13: "//",
         14: "&", 15: "|", 16: "~", 17: "<<", 18: ">>"}

# ---------------------------------------------------------------------------

class ConstView:
    def __init__(self, consts):
        self.c = consts
    def lit(self, i, quote=True):
        if not (0 <= i < len(self.c)):
            return f"K{i}"
        c = self.c[i]
        if c["tag"] == "shortstr" or c["tag"] == "longstr":
            return repr(c["value"]) if quote else c["value"]
        if c["tag"] == "int":
            return str(c["value"])
        if c["tag"] == "float":
            return repr(c["value"])
        if c["tag"] == "fix64":
            return f"fix64({c['value']})"
        if c["tag"] == "bool":
            return str(c["value"])
        return "nil"

class RegFile:
    def __init__(self, ms):
        self.r = [None] * ms
        self.ms = ms
    def __setitem__(self, i, v):
        if 0 <= i < self.ms: self.r[i] = v
    def __getitem__(self, i):
        return self.r[i] if 0 <= i < self.ms else f"R{i}"
    def clear(self, lo, hi):
        for i in range(lo, min(hi + 1, self.ms)):
            self.r[i] = None

class Decoder:
    def __init__(self, proto, cv: ConstView, depth: int, fid: int):
        self.p = proto; self.cv = cv; self.depth = depth; self.fid = fid

    def valid_k(self, k):
        return 0 <= k < len(self.p.get("consts", []))

    def reg(self, i, ms):
        return f"R{i}" if 0 <= i < ms else f"R{i}!"

    def dec(self, pc, w, ms):
        op = ror29(w)
        name = OPNAMES.get(op, f"OP{op}")
        cv = self.cv
        kc = self.p.get("consts", [])
        # --- load family ---
        if op in (33, 50):  # LOADK
            A, K = fA_k(w), fK_k(w)
            if self.valid_k(K):
                return f"R{A} = {cv.lit(K)}", "LOADK", 0.9
            return f"LOADK R{A}, K{K} [{w:08x}]", "LOADK", 0.3
        if op == 3:  # LOADKx (K in next instruction)
            A = fA_kx(w)
            return f"LOADKx R{A} [{w:08x}]", "LOADKx", 0.4
        # --- table ops ---
        if op in (6, 47, 48, 60):  # GETTABUP
            A, U, K, RK = fA(w), fB(w), fC(w), rk_c(w)
            if not RK and self.valid_k(K):
                # K is a register (RK clear) — treat as reg
                return f"R{A} = U{U}[R{K}]", "GETTABUP", 0.7
            if RK and self.valid_k(K):
                return f"R{A} = U{U}[{cv.lit(K)}]", "GETTABUP", 0.9
            return f"GETTABUP R{A}, U{U}, K{K} [{w:08x}]", "GETTABUP", 0.4
        if op in (45, 46, 55, 58):  # GETTABLE
            A, B, K, RK = fA(w), fB(w), fC(w), rk_c(w)
            if RK and self.valid_k(K):
                return f"R{A} = R{B}[{cv.lit(K)}]", "GETTABLE", 0.9
            if not RK and 0 <= K < ms:
                return f"R{A} = R{B}[R{K}]", "GETTABLE", 0.8
            return f"GETTABLE R{A}, R{B}, K{K} [{w:08x}]", "GETTABLE", 0.35
        if op == 43:  # SETTABLE
            A, B, C, RK = fA(w), fB(w), fC(w), rk_c(w)
            if RK and self.valid_k(C):
                return f"R{A}[{cv.lit(C)}] = R{B}", "SETTABLE", 0.9
            if not RK and 0 <= C < ms:
                return f"R{A}[R{C}] = R{B}", "SETTABLE", 0.8
            return f"SETTABLE R{A}, R{B}, K{C} [{w:08x}]", "SETTABLE", 0.35
        if op == 1:  # SETTABLE (alt entry)
            return self.dec_settable_alt(w, ms)
        if op == 34:  # SETTABUP
            U, (B, rkB), (C, rkC) = fU_stu(w), fB_stu(w), fC_stu(w)
            if rkB and self.valid_k(B):
                return f"U{U}[{cv.lit(B)}] = R{C}", "SETTABUP", 0.9
            return f"SETTABUP U{U}, K{B}, R{C} [{w:08x}]", "SETTABUP", 0.4
        if op in (44, 51):  # MOVE
            A, B = fA_mv(w), fB_mv(w)
            return f"R{A} = R{B}", "MOVE", 0.95
        if op == 2:  # GETUPVAL
            A, U = fA_u(w), fU_u(w)
            un = self.p.get("upvalnames", [])
            nm = un[U] if U < len(un) else f"U{U}"
            return f"R{A} = {nm}", "GETUPVAL", 0.9
        if op == 29:  # SETUPVAL
            A, U = fA_su(w), fU_su(w)
            return f"U{U} = R{A}", "SETUPVAL", 0.85
        if op == 53:  # SELF (A = R{B}["key"] style — same template as GETTABLE)
            A, B, K, RK = fA(w), fB(w), fC(w), rk_c(w)
            if RK and self.valid_k(K):
                return f"R{A+1} = R{B}[{cv.lit(K)}]", "SELF", 0.7
            return f"SELF R{A}, R{B}, K{K} [{w:08x}]", "SELF", 0.3
        # --- call family ---
        if op == 42:  # CALL
            A, B, C = fA_call(w), fB_call(w), fC_call(w)
            nargs = max(B - 1, 0)
            argregs = ", ".join(self.reg(A + 1 + i, ms) for i in range(nargs))
            return f"R{A} = call R{A}({argregs})", "CALL", 0.8
        if op == 41:  # TAILCALL
            A, B = fA_tc(w), fB_tc(w)
            return f"return R{A}(...)  -- TAILCALL", "TAILCALL", 0.6
        if op == 38:  # TFORCALL
            A = fA_call(w)
            return f"TFORCALL R{A} [{w:08x}]", "TFORCALL", 0.5
        # --- arithmetic ---
        if op in BINOP:
            A = F(w, 21, 0xe0, 3, 5)
            B = F(w, 18, 0xff, 6, 0) if False else ((w >> 18) & 0xFF)
            C = F(w, 6, 0x1fc, 15, 2)
            rkB, rkC = (w >> 17) & 1, (w >> 14) & 1
            b = self.reg(B, ms) if not rkB else (cv.lit(B) if self.valid_k(B) else f"K{B}")
            c = self.reg(C, ms) if not rkC else (cv.lit(C) if self.valid_k(C) else f"K{C}")
            return f"R{A} = {b} {BINOP[op]} {c}", "BINOP", 0.75
        if op == 19:  # UNM
            A = F(w, 11, 0x1f<<5, 20, 5); B = F(w, 11, 0x1f<<5, 20, 5)
            return f"R{A} = -R{B}", "UNM", 0.7
        if op == 20:  # BNOT
            A = F(w, 1, 0x3f, 15, 6); B = F(w, 18, 7, 26, 3)
            return f"R{A} = ~R{B}", "BNOT", 0.6
        if op == 21:  # NOT
            A = F(w, 2, 0x3f, 16, 6); B = F(w, 21, 0xfe, 3, 1)
            return f"R{A} = not R{B}", "NOT", 0.7
        if op == 22:  # LEN
            A = F(w, 8, 0x7f, 7, 2); B = F(w, 13, 0xf, 3, 4)
            return f"R{A} = #R{B}", "LEN", 0.7
        # --- compare (EQ/LT/LE) ---
        if op in (35, 57):  # EQ
            A, B, C = fA_cmp(w), fB_cmp(w), fC_cmp(w)
            rkB, rkC = rk_b25(w), rk_c28(w)
            b = self.reg(B, ms) if not rkB else (cv.lit(B) if self.valid_k(B) else f"K{B}")
            c = self.reg(C, ms) if not rkC else (cv.lit(C) if self.valid_k(C) else f"K{C}")
            return f"if {b} == {c} then -- EQ (A={A})", "EQ", 0.7
        if op == 36:  # LT
            A, B, C = fA_cmp(w), fB_cmp(w), fC_cmp(w)
            rkB, rkC = rk_b25(w), rk_c28(w)
            b = self.reg(B, ms) if not rkB else (cv.lit(B) if self.valid_k(B) else f"K{B}")
            c = self.reg(C, ms) if not rkC else (cv.lit(C) if self.valid_k(C) else f"K{C}")
            return f"if {b} < {c} then -- LT (A={A})", "LT", 0.7
        if op == 37:  # LE
            A, B, C = fA_cmp(w), fB_cmp(w), fC_cmp(w)
            rkB, rkC = rk_b25(w), rk_c28(w)
            b = self.reg(B, ms) if not rkB else (cv.lit(B) if self.valid_k(B) else f"K{B}")
            c = self.reg(C, ms) if not rkC else (cv.lit(C) if self.valid_k(C) else f"K{C}")
            return f"if {b} <= {c} then -- LE (A={A})", "LE", 0.7
        # --- flow ---
        if op == 23:  # RETURN
            A, B = fA_r(w), fB_r(w)
            n = max(B - 1, 0)
            if n <= 0:
                return "return", "RETURN", 0.9
            vals = ", ".join(self.reg(A + i, ms) for i in range(n))
            return f"return {vals}", "RETURN", 0.8
        if op == 39:  # JMP
            A, sbx = fA_jmp(w), fsBx_jmp(w)
            target = pc + 1 + sbx
            return f"goto L{target}  -- JMP (A={A})", "JMP", 0.8
        if op == 28:  # FORLOOP
            A, sbx = fA_fl(w), fsBx_fl(w)
            target = pc + 1 + sbx
            return f"forloop R{A} → L{target}", "FORLOOP", 0.6
        if op == 4:  # FORPREP
            A, sbx = fA_fp(w), fsBx_fp(w)
            target = pc + 1 + sbx
            return f"forprep R{A} → L{target}", "FORPREP", 0.6
        if op == 24:  # TEST
            A, C = fA_tst(w), fC_tst(w)
            return f"test R{A} (jmp-if-false, C={C})", "TEST", 0.5
        if op == 25:  # TESTSET
            return f"testset R{A} [{w:08x}]", "TESTSET", 0.4
        if op == 40:
            return f"testset2 [{w:08x}]", "TESTSET", 0.3
        if op == 26:  # LOADBOOL
            A, B, C = fA_bool(w), fB_bool(w), fC_bool(w)
            return f"R{A} = {bool(B)} (skip-next={bool(C)})", "LOADBOOL", 0.75
        if op == 31:  # LOADNIL
            A, B = fA_nil(w), fB_nil(w)
            return f"R{A}..R{B} = nil", "LOADNIL", 0.8
        if op in (30, 56):  # CLOSURE
            A, P = fA_c(w), fP_c(w)
            if P < len(self.p.get("protos", [])):
                return f"R{A} = <function #{P}>", "CLOSURE", 0.85
            return f"CLOSURE R{A}, P{P} [{w:08x}]", "CLOSURE", 0.4
        if op in (32, 52, 61):  # NEWTABLE
            A = fA_call(w)
            return f"R{A} = {{}}", "NEWTABLE", 0.8
        if op == 27:  # SETLIST
            A, B, C = fA_sl(w), fB_sl(w), fC_sl(w)
            return f"R{A}[{C}].. = R{A+1}..R{A+B}", "SETLIST", 0.5
        if op == 0:  # CONCAT
            A, B, C = fA_rc(w), fB_rc(w), fC_rc(w)
            return f"R{A} = R{B}..R{C}", "CONCAT", 0.7
        if op == 5:  # VARARG
            A, B = fA_va(w), fB_va(w)
            return f"R{A}.. = ...", "VARARG", 0.6
        if op == 49 or op == 59 or op == 62 or op == 63:  # NOP (default case)
            return "nop", "NOP", 0.9
        return f"{name} [{w:08x}]", name, 0.15

    def dec_settable_alt(self, w, ms):
        A, B, C, RK = fA(w), fB(w), fC(w), rk_c(w)
        if RK and self.valid_k(C):
            return f"R{A}[{self.cv.lit(C)}] = R{B}", "SETTABLE", 0.9
        return f"SETTABLE R{A}, R{B}, K{C} [{w:08x}]", "SETTABLE", 0.3


def render_proto(proto, cv, out, depth=0, fname="<main>", fid=0, ctx=None):
    ind = "    " * depth
    ms = proto.get("maxstacksize", 0)
    out.append(f"{ind}function {fname}(...)")
    dec = Decoder(proto, cv, depth, fid)
    for pc, ins in enumerate(proto["code"]):
        w = ins["raw"]
        line, sem, conf = dec.dec(pc, w, ms)
        mark = ""
        if conf < 0.5:
            mark = f"  -- [LOW-CONF {sem}]"
        elif sem == "RETURN":
            pass
        out.append(f"{ind}   {pc:5d}| {line}{mark}")
    out.append(f"{ind}end")
    out.append("")
    for i, child in enumerate(proto.get("protos", [])):
        render_proto(child, cv, out, depth + 1, f"<function_{i}>", fid * 100 + i + 1, ctx)


def decompile_res(path: Path) -> str:
    parsed = parse_res(path)
    out = []
    out.append(f"-- Decompiled from {path}")
    out.append(f"-- source: {parsed['source']}")
    out.append("-- format=1 (Tencent modified Lua 5.3.6); opcode=ROR(w,29)&0x3f")
    out.append("-- semantics: luaV_execute 0x55C6760 dispatch table (work/opcode-semantics-20260814)")
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
