#!/usr/bin/env python3
"""Strict vanilla Lua 5.3 chunk reader/disassembler (format=0 only).

Tencent format=1 is deliberately rejected here; use lua_res_parse.py, which
understands its modified strings/protos and keeps instructions raw.
"""
from __future__ import annotations
import argparse,json,struct,sys
from pathlib import Path
LUA_SIGNATURE=b"\x1bLuaS"; LUAC_DATA=b"\x19\x93\r\n\x1a\n"; LUAC_INT=0x5678; LUAC_NUM=370.5
OPCODES=["MOVE","LOADK","LOADKX","LOADBOOL","LOADNIL","GETUPVAL","GETTABUP","GETTABLE","SETTABUP","SETUPVAL","SETTABLE","NEWTABLE","SELF","ADD","SUB","MUL","MOD","POW","DIV","IDIV","BAND","BOR","BXOR","SHL","SHR","MMBN","MMBU","MMBT","UNM","BNOT","NOT","LEN","CONCAT","JMP","EQ","LT","LE","TEST","TESTSET","CALL","TAILCALL","RETURN","FORLOOP","FORPREP","TFORCALL","TFORLOOP","SETLIST","CLOSURE","VARARG","EXTRAARG"]
OP_JMP,OP_LOADK,OP_LOADKX,OP_CLOSURE=33,1,2,47
TAG_NIL,TAG_BOOL,TAG_NUMFLT,TAG_NUMINT,TAG_SHRSTR,TAG_LNGSTR=0,1,3,19,4,20
class FormatError(ValueError): pass
class Reader:
 def __init__(self,d,max_count=1000000,max_depth=128): self.d=d; self.p=0; self.max_count=max_count; self.max_depth=max_depth
 def raw(self,n,f):
  if n<0 or self.p+n>len(self.d): raise FormatError(f"offset {self.p:#x}, field {f}: need {n} bytes, remaining {len(self.d)-self.p}")
  v=self.d[self.p:self.p+n]; self.p+=n; return v
 def u8(self,f): return self.raw(1,f)[0]
 def u32(self,f): return struct.unpack("<I",self.raw(4,f))[0]
 def i32(self,f): return struct.unpack("<i",self.raw(4,f))[0]
 def u64(self,f): return struct.unpack("<Q",self.raw(8,f))[0]
 def i64(self,f): return struct.unpack("<q",self.raw(8,f))[0]
 def size(self,sz,f):
  if sz==8:return self.u64(f)
  if sz==4:return self.u32(f)
  raise FormatError(f"offset {self.p:#x}, field {f}: unsupported size_t {sz}")
 def count(self,sz,f):
  n=self.size(sz,f)
  if n>self.max_count: raise FormatError(f"offset {self.p:#x}, field {f}: count {n} exceeds budget {self.max_count}")
  return n
 def string(self,sz,f):
  n=self.size(sz,f)
  if n==0:return b""
  if n==1:return b""
  return self.raw(n-1,f+".bytes")
class Const:
 def __init__(self,tag,value):self.tag,self.value=tag,value
 def __str__(self):
  if self.tag==TAG_NUMFLT:return repr(self.value)
  if self.tag==TAG_NUMINT:return str(self.value)
  if self.tag in (TAG_SHRSTR,TAG_LNGSTR):return json.dumps(self.value,ensure_ascii=False)
  if self.tag==TAG_NIL:return "nil"
  if self.tag==TAG_BOOL:return "true" if self.value else "false"
  return f"<tag{self.tag}>"
class Proto:
 def __init__(self): self.linedefined=0;self.lastlinedefined=0;self.numparams=0;self.is_vararg=0;self.maxstacksize=0;self.code=[];self.consts=[];self.upvalues=[];self.protos=[];self.lineinfo=[];self.locvars=[];self.upvalnames=[];self.source=b""
def load_chunk(data:bytes,*,max_count=1000000,max_depth=128):
 r=Reader(data,max_count,max_depth)
 if r.raw(5,"header.signature")!=LUA_SIGNATURE:raise FormatError("offset 0x0, field header.signature: bad signature")
 fmt=r.u8("header.format")
 if fmt==1:raise FormatError("offset 0x5, field header.format: modified format=1 is not vanilla; use lua_res_parse.py")
 if fmt!=0:raise FormatError(f"offset 0x5, field header.format: unsupported format {fmt}")
 if r.raw(6,"header.LUAC_DATA")!=LUAC_DATA:raise FormatError(f"offset {r.p-6:#x}, field header.LUAC_DATA: bad value")
 sizes=r.raw(5,"header.sizes"); si,ss,ins,sl,sn=sizes
 if si!=4 or ins!=4 or sl not in (4,8) or sn not in (4,8):raise FormatError(f"offset {r.p-5:#x}, field header.sizes: unsupported {sizes.hex()}")
 li=struct.unpack("<q" if sl==8 else "<i",r.raw(sl,"header.LUAC_INT"))[0]
 if li!=LUAC_INT:raise FormatError(f"offset {r.p-sl:#x}, field header.LUAC_INT: mismatch {li:#x}")
 num=struct.unpack("<d" if sn==8 else "<f",r.raw(sn,"header.LUAC_NUM"))[0]
 if num!=LUAC_NUM:raise FormatError(f"offset {r.p-sn:#x}, field header.LUAC_NUM: mismatch {num!r}")
 source=r.string(ss,"top.source"); p=_read_proto(r,ss,0);p.source=source
 if r.p!=len(data):raise FormatError(f"offset {r.p:#x}, field EOF: {len(data)-r.p} trailing bytes")
 return p,{"format":fmt,"sizeof_int":si,"sizeof_size_t":ss,"sizeof_Instruction":ins,"sizeof_lua_Integer":sl,"sizeof_lua_Number":sn}
def _read_proto(r,sz,depth):
 if depth>r.max_depth:raise FormatError(f"offset {r.p:#x}, field proto.depth: exceeds budget {r.max_depth}")
 p=Proto();p.linedefined=r.i32("proto.linedefined");p.lastlinedefined=r.i32("proto.lastline");p.numparams=r.u8("proto.numparams");p.is_vararg=r.u8("proto.is_vararg");p.maxstacksize=r.u8("proto.maxstacksize")
 for i in range(r.count(sz,"proto.code_count")):p.code.append(r.u32(f"proto.code[{i}]"))
 for i in range(r.count(sz,"proto.const_count")):
  t=r.u8(f"proto.const[{i}].tag")
  if t==TAG_NIL:v=None
  elif t==TAG_BOOL:v=bool(r.u8(f"proto.const[{i}].bool"))
  elif t==TAG_NUMFLT:v=struct.unpack("<d",r.raw(8,f"proto.const[{i}].float"))[0]
  elif t==TAG_NUMINT:v=r.i64(f"proto.const[{i}].int")
  elif t in (TAG_SHRSTR,TAG_LNGSTR):v=r.string(sz,f"proto.const[{i}].string").decode("utf-8","replace")
  else:raise FormatError(f"offset {r.p-1:#x}, field proto.const[{i}].tag: unknown tag {t}")
  p.consts.append(Const(t,v))
 for i in range(r.count(sz,"proto.upvalue_count")):p.upvalues.append((r.u8(f"proto.upvalue[{i}].instack"),r.u8(f"proto.upvalue[{i}].idx")))
 for i in range(r.count(sz,"proto.proto_count")):
  child=_read_proto(r,sz,depth+1);p.protos.append(child)
 for i in range(r.count(sz,"proto.lineinfo_count")):p.lineinfo.append(r.i32(f"proto.lineinfo[{i}]"))
 for i in range(r.count(sz,"proto.locvar_count")):
  name=r.string(sz,f"proto.locvar[{i}].name").decode("utf-8","replace");p.locvars.append((name,r.i32(f"proto.locvar[{i}].startpc"),r.i32(f"proto.locvar[{i}].endpc")))
 for i in range(r.count(sz,"proto.upvalname_count")):p.upvalnames.append(r.string(sz,f"proto.upvalname[{i}]").decode("utf-8","replace"))
 return p
def disasm_proto(p,pc_base=0):
 out=[]
 for pc,i in enumerate(p.code):
  op=i&0x7f;a=(i>>6)&0xff;c=(i>>14)&0x1ff;b=(i>>23)&0x1ff;bx=(i>>14)&0x3ffff;sbx=bx-131071;ax=i>>6;name=OPCODES[op] if op<len(OPCODES) else f"OP{op}";parts=[f"{pc_base+pc:04x}  {name:9s}"]
  if op==OP_JMP:parts.append(f"-> {pc_base+pc+1+sbx:04x}")
  elif op==OP_LOADK:parts.append(f"R{a} K{bx} {p.consts[bx]}") if bx<len(p.consts) else parts.append(f"R{a} K{bx} <out-of-range>")
  elif op==OP_LOADKX:parts.append(f"R{a} K{ax}")
  elif op==OP_CLOSURE:parts.append(f"R{a} proto#{bx}")
  else:parts.append(f"{a} {b} {c}")
  out.append(" ".join(parts))
 return out
def walk(p,depth=0):
 out=[(p,depth,disasm_proto(p))]
 for c in p.protos:out+=walk(c,depth+1)
 return out
def main():
 ap=argparse.ArgumentParser();ap.add_argument("res",type=Path);ap.add_argument("--listing",type=Path);ap.add_argument("--constants",type=Path);ap.add_argument("--json",type=Path);a=ap.parse_args()
 try:p,h=load_chunk(a.res.read_bytes())
 except (FormatError,ValueError) as e:print(f"ERROR: {e}",file=sys.stderr);return 1
 text="\n".join(disasm_proto(p));
 if a.listing:a.listing.write_text(text,encoding="utf-8")
 if a.constants:a.constants.write_text("\n".join(f"{i}: {x}" for i,x in enumerate(p.consts)),encoding="utf-8")
 if a.json:a.json.write_text(json.dumps({"header":h,"constants":[{"tag":x.tag,"value":x.value} for x in p.consts]},indent=2),encoding="utf-8")
 print(f"OK {a.res.name}: {len(a.res.read_bytes())} bytes, protos={len(walk(p))}, code_insns={sum(len(x.code) for x,_,_ in walk(p))}, consts={len(p.consts)}");
 if not a.listing:print(text[:2000])
 return 0
if __name__=="__main__":sys.exit(main())
