#!/usr/bin/env python3
"""Analyze FEEnumForLua op=43 run: extract candidate key/value fields, verify
against const table. Also identify the table register (A) for SETTABLE."""
from __future__ import annotations
import sys
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res

p = parse_res("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/LuaGen/FEEnumForLua.res")["proto"]

def ror29(w): return ((w & 7) << 3) | (w >> 29)

# opcode histogram of op43 words' bytes
from collections import Counter
b0, b1, b2, b3 = Counter(), Counter(), Counter(), Counter()
fields = []
for pc, w in enumerate(p["code"]):
    r = w["raw"]
    op = ror29(r)
    if op == 43:
        b0[r & 0xff] += 1; b1[(r >> 8) & 0xff] += 1; b2[(r >> 16) & 0xff] += 1; b3[(r >> 24) & 0xff] += 1
        fields.append((pc, r, ((r >> 3) & 0x1f) | (((r >> 8) & 1) << 5), (r >> 9) & 0x3f, (r >> 15) & 1))
print("byte0 distinct:", sorted(b0.items()))
print("byte1 distinct:", sorted(b1.items()))
print("byte2 distinct:", sorted(b2.items()))
print("byte3 distinct:", sorted(b3.items()))

# Print the op43 sequence around each [61,59,49] boundary, with candidate fields
# and const names for the candidate key indices
consts = p["consts"]
def cname(i):
    if 0 <= i < len(consts):
        c = consts[i]
        return f"{i}:{c['tag']}:{c['value']!r}"
    return f"{i}:OOR"

# print opcode stream with byte breakdown for first 120 instructions
for pc, w in enumerate(p["code"][:120]):
    r = w["raw"]
    op = ror29(r)
    extra = ""
    if op == 43:
        key = ((r >> 3) & 0x1f) | (((r >> 8) & 1) << 5)
        val = (r >> 9) & 0x3f
        rk = (r >> 15) & 1
        extra = f" key={key}({cname(key)}) val={val}({cname(val)}) rk15={rk}"
    print(f"{pc:4d} {r:08x} op={op:2d}{extra}")
