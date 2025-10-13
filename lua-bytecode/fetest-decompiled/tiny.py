#!/usr/bin/env python3
"""Solve the RETURN (op=23) operand layout from 1-instruction protos.

Empty functions compile to RETURN A B where A = numparams (nactvar), B = 1.
We list every proto with <=2 instructions and its numparams + return word.
"""
from __future__ import annotations
import sys
from pathlib import Path
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

ROOT = Path("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest")

def ror29(w): return ((w & 7) << 3) | (w >> 29)

rows = []
for f in sorted(ROOT.rglob("*.res")):
    parsed = parse_res(f)
    for p in walk(parsed["proto"]):
        code = p["code"]
        if len(code) <= 2:
            words = [w["raw"] for w in code]
            ops = [ror29(w) for w in words]
            rows.append((str(f.relative_to(ROOT)), p.get("depth", 0), p["numparams"],
                         p["is_vararg"], p["maxstacksize"], p["linedef"], p["lastline"],
                         p["upvalnames"], words, ops))

print(f"{'file':40s} d np va ms ld ll words(hex) ops")
for fn, d, np, va, ms, ld, ll, upn, words, ops in rows:
    ws = " ".join(f"{w:08x}" for w in words)
    print(f"{fn:40s} {d} {np} {va} {ms} {ld:4d} {ll:4d} {ws} {ops}")
