#!/usr/bin/env python3
"""Dump decoded instruction streams of the 22 FETest .res files for layout analysis.

Instructions are raw u32 words; opcode = ROR(w,29)&0x3f per historical analysis.
Prints per-proto: word hex, opcode, full bit grid, and the proto's consts/locvars.
"""
from __future__ import annotations
import sys
from pathlib import Path
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

def ror29(w: int) -> int:
    return ((w & 7) << 3) | (w >> 29)

def bits(w: int) -> str:
    return "".join(str((w >> i) & 1) for i in range(31, -1, -1))

def fmt_const(c):
    if c["tag"] == "shortstr" or c["tag"] == "longstr":
        return f'"{c["value"]}"'
    if c["tag"] == "int":
        return str(c["value"])
    if c["tag"] == "float":
        return repr(c["value"])
    if c["tag"] == "fix64":
        return f"fix64({c['value']})"
    if c["tag"] == "bool":
        return "true" if c["value"] else "false"
    return "nil"

def dump(path: str, limit: int = None, maxdepth: int = 99):
    parsed = parse_res(path)
    print(f"# {parsed['path']} size={parsed['size']} source={parsed['source']!r}")
    for p in walk(parsed["proto"]):
        if p.get("depth", 0) > maxdepth:
            continue
        d = p["depth"]
        print(f"\n== proto depth={d} src={p.get('src','')!r} ld={p['linedef']} ll={p['lastline']} "
              f"np={p['numparams']} va={p['is_vararg']} ms={p['maxstacksize']} "
              f"ncode={len(p['code'])} nk={len(p['consts'])} nup={len(p['upvals'])} "
              f"npr={len(p['protos'])} nline={len(p['lineinfo'])} nloc={len(p['locvars'])}")
        if p["upvalnames"]:
            print("  upvalnames:", p["upvalnames"])
        print("  consts:")
        for i, c in enumerate(p["consts"]):
            print(f"    [{i:3d}] {c['tag']:8s} {fmt_const(c)}")
        print("  locvars:")
        for lv in p["locvars"]:
            print(f"    {lv['name']!r} startpc={lv['startpc']} endpc={lv['endpc']}")
        insns = [(i, w["raw"]) for i, w in enumerate(p["code"])]
        if limit:
            insns = insns[:limit]
        print("  code (pc: word  opcode bits31..0):")
        for pc, w in insns:
            print(f"    {pc:4d} {w:08x} op={ror29(w):2d} {bits(w)}")

if __name__ == "__main__":
    dump(sys.argv[1], limit=int(sys.argv[2]) if len(sys.argv) > 2 else None,
         maxdepth=int(sys.argv[3]) if len(sys.argv) > 3 else 99)
