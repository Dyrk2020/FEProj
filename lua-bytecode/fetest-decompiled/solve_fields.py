#!/usr/bin/env python3
"""Constraint solver for per-opcode operand bit positions.

For each opcode, gather all (word, proto) pairs. For candidate field positions
(contiguous bit ranges of widths 3..9), score = fraction of words where the field
value is < the relevant bound (maxstacksize for registers, nconsts for consts,
nupvalues, nprotos). Report the best positions.
"""
from __future__ import annotations
import sys
from collections import defaultdict
from pathlib import Path
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

ROOT = Path("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest")

def ror29(w): return ((w & 7) << 3) | (w >> 29)

# (opcode, name) -> list of (word, ms, nk, nup, npr)
samples = defaultdict(list)
for f in sorted(ROOT.rglob("*.res")):
    parsed = parse_res(f)
    for p in walk(parsed["proto"]):
        ms = p["maxstacksize"]
        nk = len(p["consts"])
        nup = len(p["upvals"])
        npr = len(p["protos"])
        for w in p["code"]:
            r = w["raw"]
            op = ror29(r)
            samples[op].append((r, ms, nk, nup, npr))

def field(w, lo, hi):
    return (w >> lo) & ((1 << (hi - lo + 1)) - 1)

def best(ops, bound_idx, widths=(3, 4, 5, 6, 7, 8, 9)):
    out = []
    for lo in range(32):
        for width in widths:
            hi = lo + width - 1
            if hi > 31:
                continue
            ok = 0
            tot = 0
            for w, ms, nk, nup, npr in samples[ops]:
                b = (ms, nk, nup, npr)[bound_idx]
                if b <= 1:
                    continue
                tot += 1
                v = field(w, lo, hi)
                if v < b:
                    ok += 1
            if tot >= 5:
                out.append((ok / tot, ok, tot, lo, width))
    return sorted(out, reverse=True)[:8]

NAMES = ["reg(ms)", "const(nk)", "upval(nup)", "proto(npr)"]
for op in sorted(samples):
    n = len(samples[op])
    if n < 10:
        continue
    print(f"\n== op {op} ({n} words)")
    for bi in range(4):
        top = best(op, bi)
        if top and top[0][0] >= 0.9:
            s = "; ".join(f"{t[0]:.2f} lo={t[3]} w={t[4]}" for t in top[:3])
            print(f"   {NAMES[bi]}: {s}")
