#!/usr/bin/env python3
"""Dump words of specific opcodes across all files with proto context
(ms, nk, pc, neighbors) to crack remaining layouts."""
from __future__ import annotations
import sys
from collections import defaultdict
from pathlib import Path
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

ROOT = Path("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest")

def ror29(w): return ((w & 7) << 3) | (w >> 29)

WANT = {int(x) for x in sys.argv[1:]}
rows = []
for f in sorted(ROOT.rglob("*.res")):
    parsed = parse_res(f)
    for p in walk(parsed["proto"]):
        code = p["code"]
        for pc, w in enumerate(code):
            r = w["raw"]
            op = ror29(r)
            if op in WANT:
                nxt = [ror29(x["raw"]) for x in code[pc+1:pc+3]]
                rows.append((str(f.relative_to(ROOT)), p.get("depth", 0), pc, r,
                             p["maxstacksize"], len(p["consts"]), nxt))

for fn, d, pc, r, ms, nk, nxt in rows:
    print(f"{fn:42s} d{d} pc{pc:4d} {r:08x} op={ror29(r):2d} ms={ms} nk={nk} nxt={nxt} bytes={r:08x}")
