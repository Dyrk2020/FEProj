#!/usr/bin/env python3
"""Strict parser for Tencent's format=1 Lua chunks.

Format=1 is intentionally not decoded as vanilla Lua: its strings, proto
layout, and instructions are different. Instruction words are retained as
raw values only.
"""
from __future__ import annotations
import argparse, json, struct, sys
from pathlib import Path

LUA_KEY = bytes.fromhex("dd7d184244f3acd64e3aa7282d56b5b098e7a753bb76946ee5bc8e2e4c22147f")
LUAC_DATA = b"\x19\x93\r\n\x1a\n"
LUAC_INT, LUAC_NUM = 0x5678, 370.5
TAG_SHORT_STR, TAG_LONG_STR, TAG_INT, TAG_FLOAT, TAG_FIX64, TAG_BOOL, TAG_NIL = 4, 0x14, 0x13, 3, 0x23, 1, 0
TAG_NAMES = {4:"shortstr", 0x14:"longstr", 0x13:"int", 3:"float", 0x23:"fix64", 1:"bool", 0:"nil"}

class FormatError(ValueError): pass
class Reader:
    def __init__(self, data: bytes, *, max_count=1_000_000, max_depth=128):
        self.d, self.p, self.max_count, self.max_depth = data, 0, max_count, max_depth
    def need(self, n, field):
        if n < 0 or self.p + n > len(self.d):
            raise FormatError(f"offset {self.p:#x}, field {field}: need {n} bytes, remaining {len(self.d)-self.p}")
    def raw(self, n, field): self.need(n, field); v=self.d[self.p:self.p+n]; self.p += n; return v
    def u8(self, field): return self.raw(1,field)[0]
    def u32(self, field): return struct.unpack("<I",self.raw(4,field))[0]
    def i32(self, field): return struct.unpack("<i",self.raw(4,field))[0]
    def i64(self, field): return struct.unpack("<q",self.raw(8,field))[0]
    def f64(self, field): return struct.unpack("<d",self.raw(8,field))[0]
    def count(self, field):
        n=self.u32(field)
        if n > self.max_count: raise FormatError(f"offset {self.p-4:#x}, field {field}: count {n} exceeds budget {self.max_count}")
        return n

def read_string(r: Reader, field="string") -> tuple[bytes,int]:
    marker_off=r.p; m=r.u8(field+".marker")
    if m == 0: return b"", r.p
    if m == 0xff:
        m=r.u32(field+".long_length")
    if m == 0: return b"", r.p
    n=m-1
    enc=r.raw(n,field+".bytes")
    return bytes(b ^ LUA_KEY[i % len(LUA_KEY)] for i,b in enumerate(enc)), r.p

def parse_proto(r: Reader, depth=0):
    if depth > r.max_depth: raise FormatError(f"offset {r.p:#x}, field proto.depth: exceeds budget {r.max_depth}")
    o={"depth":depth,"linedef":r.i32("proto.linedef"),"lastline":r.i32("proto.lastline"),
       "numparams":r.u8("proto.numparams"),"is_vararg":r.u8("proto.is_vararg"),"maxstacksize":r.u8("proto.maxstacksize")}
    n=r.count("proto.code_count"); o["code"]=[]
    for i in range(n): o["code"].append({"raw":r.u32(f"proto.code[{i}]")})
    n=r.count("proto.const_count"); o["consts"]=[]
    for i in range(n):
        tag=r.u8(f"proto.const[{i}].tag")
        if tag in (TAG_SHORT_STR,TAG_LONG_STR):
            v,_=read_string(r,f"proto.const[{i}].string"); o["consts"].append({"tag":TAG_NAMES[tag],"value":v.decode("utf-8","replace"),"raw":v})
        elif tag==TAG_INT: o["consts"].append({"tag":"int","value":r.i64(f"proto.const[{i}].int")})
        elif tag==TAG_FLOAT: o["consts"].append({"tag":"float","value":r.f64(f"proto.const[{i}].float")})
        elif tag==TAG_FIX64: o["consts"].append({"tag":"fix64","value":r.i64(f"proto.const[{i}].fix64")})
        elif tag==TAG_BOOL: o["consts"].append({"tag":"bool","value":bool(r.u8(f"proto.const[{i}].bool"))})
        elif tag==TAG_NIL: o["consts"].append({"tag":"nil","value":None})
        else: raise FormatError(f"offset {r.p-1:#x}, field proto.const[{i}].tag: unknown tag {tag:#x}")
    n=r.count("proto.upvalue_count"); o["upvals"]=[]
    for i in range(n): o["upvals"].append((r.u8(f"proto.upval[{i}].instack"),r.u8(f"proto.upval[{i}].idx")))
    n=r.count("proto.proto_count"); o["protos"]=[]
    for i in range(n):
        src,_=read_string(r,f"proto.proto[{i}].source")
        p=parse_proto(r,depth+1); p["src"]=src.decode("utf-8","replace"); p["src_bytes"]=src; o["protos"].append(p)
    n=r.count("proto.lineinfo_count"); o["lineinfo"]= [r.i32(f"proto.lineinfo[{i}]") for i in range(n)]
    n=r.count("proto.locvar_count"); o["locvars"]=[]
    for i in range(n):
        nm,_=read_string(r,f"proto.locvar[{i}].name"); o["locvars"].append({"name":nm.decode("utf-8","replace"),"name_bytes":nm,"startpc":r.i32(f"proto.locvar[{i}].startpc"),"endpc":r.i32(f"proto.locvar[{i}].endpc")})
    n=r.count("proto.upvalname_count"); o["upvalnames"]=[]
    for i in range(n):
        nm,_=read_string(r,f"proto.upvalname[{i}]"); o["upvalnames"].append(nm.decode("utf-8","replace"))
    o["_end"]=r.p; return o

def parse_res(path: str|Path, *, max_count=1_000_000, max_depth=128):
    data=Path(path).read_bytes(); r=Reader(data,max_count=max_count,max_depth=max_depth)
    if r.raw(5,"header.signature") != b"\x1bLuaS": raise FormatError("offset 0x0, field header.signature: bad signature")
    fmt=r.u8("header.format")
    if fmt != 1: raise FormatError(f"offset 0x5, field header.format: expected modified format 1, got {fmt}")
    if r.raw(6,"header.LUAC_DATA") != LUAC_DATA: raise FormatError(f"offset {r.p-6:#x}, field header.LUAC_DATA: bad value")
    sizes=r.raw(5,"header.sizes")
    if sizes != bytes((4,4,4,8,8)): raise FormatError(f"offset {r.p-5:#x}, field header.sizes: unsupported {sizes.hex()}")
    if r.i64("header.LUAC_INT") != LUAC_INT: raise FormatError(f"offset {r.p-8:#x}, field header.LUAC_INT: mismatch")
    if r.f64("header.LUAC_NUM") != LUAC_NUM: raise FormatError(f"offset {r.p-8:#x}, field header.LUAC_NUM: mismatch")
    # Modified undump has a one-byte top-level line/source shift before the
    # source LoadString; nested protos use the ordinary LoadString directly.
    r.u8("top.source.line_shift")
    src,_=read_string(r,"top.source")
    proto=parse_proto(r)
    proto["src"],proto["src_bytes"]=src.decode("utf-8","replace"),src
    if r.p != len(data): raise FormatError(f"offset {r.p:#x}, field EOF: {len(data)-r.p} trailing bytes")
    return {"path":str(path),"size":len(data),"consumed":r.p,"remaining":0,"format":1,"source":proto["src"],"source_bytes":src,"proto":proto}

def walk(p):
    yield p
    for c in p.get("protos",[]): yield from walk(c)
def main():
    ap=argparse.ArgumentParser(); ap.add_argument("res",type=Path); ap.add_argument("--json",type=Path); ap.add_argument("--text",type=Path); a=ap.parse_args()
    try: parsed=parse_res(a.res)
    except FormatError as e: print(f"ERROR: {e}",file=sys.stderr); return 1
    if a.json: a.json.write_text(json.dumps(parsed,indent=2,ensure_ascii=False,default=lambda x:x.hex() if isinstance(x,bytes) else str(x)),encoding="utf-8")
    if a.text: a.text.write_text(f"# {parsed['path']} ({parsed['size']} B)\nsource: {parsed['source']}\n",encoding="utf-8")
    print(f"OK {a.res.name}: {parsed['size']} B, consumed {parsed['consumed']:#x}, protos={sum(1 for _ in walk(parsed['proto']))}"); return 0
if __name__ == "__main__": sys.exit(main())
