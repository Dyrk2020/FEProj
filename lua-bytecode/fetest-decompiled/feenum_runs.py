#!/usr/bin/env python3
"""Compact dump of ALL op=43 words in FEEnumForLua: pc, A, key, val, rk15, byte2.
Groups by (A, key-range) to find the structure."""
from __future__ import annotations
import sys
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res

p = parse_res("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest/LuaGen/FEEnumForLua.res")["proto"]

def ror29(w): return ((w & 7) << 3) | (w >> 29)

c = p["consts"]
def nm(i):
    if 0 <= i < len(c):
        x = c[i]
        return x["value"] if x["tag"] in ("shortstr", "longstr") else ("#" + str(x["value"]))
    return "OOR"

# walk opcode stream; print runs of op43
out = []
cur = None
for pc, w in enumerate(p["code"]):
    r = w["raw"]
    op = ror29(r)
    if op == 43:
        key = ((r >> 3) & 0x1f) | (((r >> 8) & 1) << 5)
        val = (r >> 9) & 0x3f
        A = (r >> 21) & 7
        b2 = (r >> 16) & 0xff
        out.append((pc, A, key, val, b2))
    else:
        out.append((pc, -1, None, None, None))

# print runs
i = 0
while i < len(out):
    pc, A, key, val, b2 = out[i]
    if A == -1:
        print(f"{pc:5d} op={ror29(p['code'][pc]['raw']):2d} {p['code'][pc]['raw']:08x}")
        i += 1
        continue
    # find run end
    j = i
    while j < len(out) and out[j][1] != -1:
        j += 1
    print(f"{pc:5d}..{out[j-1][0]:5d}  op43 x{j-i}  first few: " +
          ", ".join(f"({out[k][2]}:{nm(out[k][2])}={out[k][3]}:{nm(out[k][3])} A{out[k][1]})" for k in range(i, min(j, i+8))))
    i = j
