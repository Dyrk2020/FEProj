import importlib.util
import struct
from pathlib import Path
import pytest

ROOT = Path(__file__).parents[3]
def load(name, path):
    spec = importlib.util.spec_from_file_location(name, ROOT / path)
    mod = importlib.util.module_from_spec(spec); spec.loader.exec_module(mod); return mod
mod = load("modified", "work/ai-cfg-recovery-2026-08-04/lua_res_parse.py")
van = load("vanilla", "tools/feproj_static/lua53.py")

def mstr(s):
    b = bytes(x ^ mod.LUA_KEY[i % 32] for i,x in enumerate(s))
    return (b"\xff" + struct.pack("<I", len(b) + 1) if len(b) + 1 >= 0xff else bytes([len(b) + 1])) + b


def mstr_marker_1(s):
    b = bytes(x ^ mod.LUA_KEY[i % 32] for i,x in enumerate(s))
    return b"\xff" + struct.pack("<I", len(b) + 1) + b

def modified(src=b"main", code=(0x64,), tail=b""):
    h=b"\x1bLuaS\x01"+mod.LUAC_DATA+bytes((4,4,4,8,8))+struct.pack("<q",mod.LUAC_INT)+struct.pack("<d",mod.LUAC_NUM)
    # proto: lines, flags, code, constants, upvals, children, lineinfo, locvars, upval names
    p=struct.pack("<iiBBB",1,2,0,0,2)+struct.pack("<I",len(code))+b"".join(struct.pack("<I",x) for x in code)
    p+=struct.pack("<I",0)*2 # const count, upvalue count
    p+=struct.pack("<I",0) # child count
    p+=struct.pack("<I",0)*3 # lineinfo, locvars, upvalnames
    return h+b"\x00"+mstr(src)+p+tail

def test_modified_keeps_raw_and_requires_eof(tmp_path):
    f=tmp_path/"x.res"; f.write_bytes(modified(b"a\x00raw"))
    got=mod.parse_res(f); assert got["source_bytes"]==b"a\x00raw"; assert got["proto"]["code"][0]["raw"]==0x64
    f.write_bytes(modified()+b"X")
    with pytest.raises(mod.FormatError, match="field EOF"): mod.parse_res(f)

def test_modified_truncated_and_marker_errors(tmp_path):
    f=tmp_path/"x.res"; d=modified(); f.write_bytes(d[:-1])
    with pytest.raises(mod.FormatError, match="offset .*field"): mod.parse_res(f)
    f.write_bytes(d[:0x22]);
    with pytest.raises(mod.FormatError, match="top.source.marker|top.source.line_shift"): mod.parse_res(f)

def test_modified_long_string_and_budget(tmp_path):
    f=tmp_path/"x.res"; d=modified(b"x"*300); f.write_bytes(d)
    assert mod.parse_res(f)["source_bytes"] == b"x" * 300
    with pytest.raises(mod.FormatError, match="budget"): mod.parse_res(f, max_count=0)

def vanilla_header(fmt=0, num=370.5):
    return b"\x1bLuaS"+bytes([fmt])+van.LUAC_DATA+bytes((4,8,4,8,8))+struct.pack("<q",van.LUAC_INT)+struct.pack("<d",num)

def test_basic_samples_if_available():
    samples = ROOT / "artifacts/device-backups/wild-rift-google-play-7.2.0.2460-7246064-20260711/external-data-basic/files/Res/FETest"
    files = sorted(samples.glob("*.res"))
    if not files:
        pytest.skip("Basic 22 corpus is unavailable")
    for path in files:
        got = mod.parse_res(path)
        assert got["consumed"] == got["size"]


def test_vanilla_rejects_modified_and_exact_num():
    with pytest.raises(van.FormatError, match="modified format=1"): van.load_chunk(vanilla_header(1))
    with pytest.raises(van.FormatError, match="LUAC_NUM"): van.load_chunk(vanilla_header(0,370.50000000000006))

def test_vanilla_trailing_and_string_bounds():
    # header + empty source, then an intentionally incomplete proto
    d=vanilla_header()+struct.pack("<Q",0)+b"\x00"
    with pytest.raises(van.FormatError, match="field proto"): van.load_chunk(d)
