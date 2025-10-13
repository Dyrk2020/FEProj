#!/usr/bin/env python3
"""Statistical pass over all 22 .res protos: opcode histograms, proto-last
instructions, and repeated-word analysis. Helps pin structural opcodes."""
from __future__ import annotations
import sys
from collections import Counter, defaultdict
from pathlib import Path
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

ROOT = Path("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest")

def ror29(w): return ((w & 7) << 3) | (w >> 29)

files = sorted(ROOT.rglob("*.res"))
hist = Counter()
lastop = Counter()
byproto = []  # (file, depth, opcount, lastword, lastop, firstops)
wordfreq = Counter()
for f in files:
    parsed = parse_res(f)
    for p in walk(parsed["proto"]):
        ops = [ror29(w["raw"]) for w in p["code"]]
        hist.update(ops)
        if ops:
            lastop[ops[-1]] += 1
        byproto.append((str(f.relative_to(ROOT)), p.get("depth", 0), len(ops),
                        p["code"][-1]["raw"] if ops else None, ops[-1] if ops else None,
                        ops[:12]))
        wordfreq.update(w["raw"] for w in p["code"])

print("== opcode histogram (all 22 files)")
for op, n in sorted(hist.items()):
    print(f"  op {op:2d}: {n}")
print("\n== last-opcode of each proto (RETURN candidate)")
for op, n in sorted(lastop.items()):
    print(f"  op {op:2d}: {n}")
print("\n== per-proto summary")
for fn, d, n, lw, lo, first in byproto:
    print(f"  {fn:45s} d={d} n={n:4d} last={lw:08x}(op{lo}) first={first}")
print("\n== most common words")
for w, n in wordfreq.most_common(25):
    print(f"  {w:08x} op={ror29(w):2d} x{n}")
