#!/usr/bin/env python3
"""Dump all protos with <= 6 instructions, with consts, to crack small patterns:
`return <expr>` => [<expr-insn>, RETURN], `function() end` => [RETURN], etc."""
from __future__ import annotations
import sys
from pathlib import Path
sys.path.insert(0, "<research-workspace>/work/ai-cfg-recovery-2026-08-04")
from lua_res_parse import parse_res, walk

ROOT = Path("<research-workspace>/corpus/basic-data/external-device-20260814/files/Res/FETest")

def ror29(w): return ((w & 7) << 3) | (w >> 29)

def cstr(c):
    t = c["tag"]
    if t in ("shortstr", "longstr"): return f'"{c["value"]}"'
    if t == "int": return str(c["value"])
    if t == "float": return repr(c["value"])
    if t == "fix64": return f"fix{c['value']}"
    if t == "bool": return "T" if c["value"] else "F"
    return "nil"

for f in sorted(ROOT.rglob("*.res")):
    parsed = parse_res(f)
    for p in walk(parsed["proto"]):
        code = p["code"]
        if not (1 <= len(code) <= 6):
            continue
        words = [w["raw"] for w in code]
        ops = [ror29(w) for w in words]
        print(f"--- {f.relative_to(ROOT)} d={p.get('depth',0)} np={p['numparams']} va={p['is_vararg']} "
              f"ms={p['maxstacksize']} lines={p['linedef']}..{p['lastline']} upn={p['upvalnames']}")
        print(f"    consts: {', '.join(f'[{i}]{cstr(c)}' for i, c in enumerate(p['consts']))}")
        lvs = ", ".join("%r@%d-%d" % (lv["name"], lv["startpc"], lv["endpc"]) for lv in p["locvars"])
        print(f"    locvars: {lvs}")
        for pc, w in enumerate(words):
            print(f"      {pc:3d} {w:08x} op={ops[pc]:2d}  bytes {w:08x}")
