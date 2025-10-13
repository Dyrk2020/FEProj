#!/usr/bin/env python3
"""Batch-decompile all FETest .res files into work/lua-decompile-20260814/
mirroring their relative paths. Prints per-file stats."""
from __future__ import annotations
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, "<research-workspace>/work/lua-decompile-20260814")
from decompile_lua_res import decompile_res
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

ROOT = Path("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest")
OUT = Path("<research-workspace>/work/lua-decompile-20260814")

def ror29(w): return ((w & 7) << 3) | (w >> 29)

results = []
for f in sorted(ROOT.rglob("*.res")):
    rel = f.relative_to(ROOT)
    out_path = OUT / (str(rel) + ".lua")
    out_path.parent.mkdir(parents=True, exist_ok=True)
    text = decompile_res(f)
    out_path.write_text(text, encoding="utf-8")
    # stats: instruction lines, low-conf lines
    lines = [l for l in text.splitlines() if "| " in l]
    lowconf = [l for l in lines if "[LOW-CONF" in l]
    parsed = parse_res(f)
    nproto = sum(1 for _ in walk(parsed["proto"]))
    ninsn = sum(len(p["code"]) for p in walk(parsed["proto"]))
    results.append((str(rel), len(lines), len(lowconf), nproto, ninsn, len(text)))
    print(f"{str(rel):42s} lines={len(lines):5d} lowconf={len(lowconf):5d} "
          f"protos={nproto:3d} insns={ninsn:5d} bytes={len(text):7d}")

print("\nTOTAL low-conf ratio:", sum(r[2] for r in results), "/", sum(r[1] for r in results))
