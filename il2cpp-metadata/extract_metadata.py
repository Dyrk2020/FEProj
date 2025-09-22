#!/usr/bin/env python3
"""global-metadata.dat (FMN! v31, Riot-modified) -> readable type/method/string extraction.

Corpus lock: SHA-256 5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d
(58,401,572 B), baseline corpus/basic-data/external-device-20260814/.

Verified offsets (re-derived 2026-08-14; cross-checked against
work/ai-cfg-recovery-2026-08-04/{extract_type_fields.py,metadata-bulk.md,slices/07-il2cpp.json}
and runtime disassembly of libil2cpp.so):

  header:      magic "FMN!" @0 + version u32 @4 + 31x {off:i32,size:i32} @8..0x100
               pairs 0-3 CTR-XOR encrypted at rest (decryptor libil2cpp.so 0x4004540);
               decrypted: p0={0xF45970,0x21F0}=events, p1={0x196844,0x100}=stringInfo,
               p2={0x6F9D8,0x20621C}=stringLiteral data, p3={0xD3F754,0x6F8D8}=decoy.
  stringLiteral table:    0x100, 57,115 x {len:u32, dataIndex:u32} (stride 8)
  stringLiteral pool:     0x6F9D8 + dataIndex, lazy per-string XOR (ks @ .so rodata
               0x1E42BA8): start=((dataIndex*len + idx) & 0xF)<<4;
               out[i] = raw[i] ^ ks[(start+i)&0xFF]   (idx = literal table index;
               empirically idx NOT idx>>1 as reported in metadata-bulk.md §3)
  name table:  0x20621C (byte-offset addressed, ENCRYPTED at rest; runtime getter
               libil2cpp.so 0x3b95a08): state=((0xD3F754*(0x20621C+idx))&0xFFFFFFFF)%0x11D53;
               out[i] = d[pos+i] ^ ks[(((state&0xF)<<4)+i)&0xFF], ks = 256B @ .so 0xCDAF980
  properties:  pair4 @0xF47B60, 44,173 x 20B {nameIndex, get, set, attrs, token}
  methods:     pair5 @0x101F664, 197,983 x 72B records = TWO 36B slots each;
               slot s at off + (s//2)*72 + (s%2)*36:
               {nameIndex, declaringType, returnType, 0x08000000 marker,
                parameterStart, genericContainerIndex, token, flags,
                (parameterCount<<16)|iflags}
               sum(methodCount u16@64) == 395,966 == 2*197,983  (double-spaced)
  parameters:  pair10 @0x24D8DD8, 380,621 x 12B {nameIndex, token, typeIndex}
  fields:      pair11 @0x2933F74, 483,741 x 12B {nameIndex, typeIndex, token}
  typeDefs:    pair19 @0x31AC9CC, 48,642 x 88B (layout in TYPE_DEF_FIELDS below)
  events:      pair0 @0xF45970, 362 x 24B {nameIndex, ...}
  images:      pair20 @0x35C1A7C, 88 x 40B {nameIndex@0, ...}
  assemblies:  pair21 @0x35C283C, 88 x 64B {nameIndex@0, ...}

Type-name resolution (best effort):
  - byval map: typeDef.byvalTypeIndex is INJECTIVE over 48,642 typeDefs (range
    24,609..100,617) -> typeIndex t -> typeDef i with byval(i)==t (reverse map).
    Resolves: base classes (typeDef.parentIndex is a typeIndex; parent==own byval
    means "no base"), method returnType/parameter typeIndex values that fall in the
    byval set (verified: System.Int32 byval=48677 == return of GetHashCode etc.).
  - field typeIndex uses a SECOND runtime-built index space (disjoint from byval;
    38,193 distinct values; e.g. int field = 48682 while Int32 byval = 48677) —
    NOT resolved here [NOT_ESTABLISHED]; emitted as raw TypeIndex.

Outputs (same dir): types.json, methods.json, strings.json, battle.json, stats.json
"""
from __future__ import annotations

import json
import re
import struct
import sys
from collections import Counter
from pathlib import Path

ROOT = Path("<research-workspace>")
META = ROOT / "corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat"
SO = ROOT / "corpus/native-elf/decompressed-arm64/libil2cpp.so"
OUT = Path(__file__).resolve().parent

# ---------------------------------------------------------------- constants
LIT_TAB, LIT_TAB_SIZE = 0x100, 0x6F8D8          # stringLiteral table
LIT_POOL = 0x6F9D8                                # stringLiteral data base
LIT_KS = 0x1E42BA8                                # .so rodata 256B

STR_BASE, STR_MULT, STR_MOD = 0x20621C, 0xD3F754, 0x11D53
NAME_KS = 0xCDAF980                               # .so rodata 256B

PROPS = (0xF47B60, 20, 44173)
METHODS = (0x101F664, 72)
PARAMS = (0x24D8DD8, 12, 380621)
FIELDS = (0x2933F74, 12, 483741)
EVENTS = (0xF45970, 24, 362)
TYPEDEFS = (0x31AC9CC, 88, 48642)
IMAGES = (0x35C1A7C, 40, 88)
ASSEMBLIES = (0x35C283C, 64, 88)

# typeDef 88B layout (FINAL, unified 2026-08-09 plan 3.4 / errata E16)
TD_NAME, TD_NS, TD_BYVAL, TD_BYREF, TD_DECLARING, TD_PARENT, TD_ELEMENT = 0, 4, 8, 12, 16, 20, 24
TD_FIELD_START, TD_METHOD_START, TD_EVENT_START, TD_PROP_START = 32, 36, 40, 44
TD_MCOUNT, TD_PCOUNT, TD_FCOUNT, TD_ECOUNT = 64, 66, 68, 70
TD_FLAGS, TD_TOKEN = 80, 84

BATTLE_PREFIX = ("Battle", "SyncMsg", "CSRoom", "Lua", "FE", "GamePlay")

# method attribute flag decoder (subset; ECMA-335 MethodAttributes)
def flags_str(fl: int) -> str:
    out = []
    acc = fl & 0x7
    out.append({0: "compilercontrolled", 1: "private", 2: "famandassem",
                3: "assembly", 4: "family", 5: "famorassem", 6: "public"}.get(acc, f"acc{acc}"))
    if fl & 0x10: out.append("static")
    if fl & 0x20: out.append("final")
    if fl & 0x40: out.append("virtual")
    if fl & 0x80: out.append("hidebysig")
    if fl & 0x100: out.append("newslot")
    if fl & 0x400: out.append("abstract")
    if fl & 0x800: out.append("specialname")
    if fl & 0x1000: out.append("rtspecialname")
    return " ".join(out)


def load():
    d = META.read_bytes()
    assert d[:4] == b"FMN!", "bad magic"
    assert len(d) == 58401572
    so = SO.read_bytes()
    lit_ks = so[LIT_KS:LIT_KS + 256]
    name_ks = so[NAME_KS:NAME_KS + 256]
    assert len(lit_ks) == 256 and len(name_ks) == 256
    return d, lit_ks, name_ks


D, LIT_KS, NAME_KS = load()

# ---------------------------------------------------------------- name table
_name_cache: dict[int, str | None] = {}


def name_at(idx: int) -> str | None:
    if idx is None or idx < 0:
        return None
    if idx in _name_cache:
        return _name_cache[idx]
    pos = STR_BASE + idx
    if pos < STR_BASE or pos + 1 >= len(D):
        _name_cache[idx] = None
        return None
    state = ((STR_MULT * (STR_BASE + idx)) & 0xFFFFFFFF) % STR_MOD
    nib = (state & 0xF) << 4
    out = bytearray()
    ks = NAME_KS
    for i in range(512):
        p = D[pos + i] ^ ks[(nib + i) & 0xFF]
        if p == 0:
            break
        out.append(p)
    if not out or not all(0x20 <= c < 0x7F for c in out):
        _name_cache[idx] = None
        return None
    s = out.decode("ascii")
    _name_cache[idx] = s
    return s


def name_or(idx: int) -> str:
    s = name_at(idx)
    return s if s is not None else f"<name@{idx}>"


# ---------------------------------------------------------------- string literals
def literal(idx: int) -> bytes:
    ln, di = struct.unpack_from("<II", D, LIT_TAB + idx * 8)
    if ln == 0:
        return b""
    raw = D[LIT_POOL + di:LIT_POOL + di + ln]
    start = ((di * ln + idx) & 0xF) << 4
    ks = LIT_KS
    return bytes(b ^ ks[(start + i) & 0xFF] for i, b in enumerate(raw))


def decode_literals() -> list[dict]:
    n = LIT_TAB_SIZE // 8
    out = []
    for i in range(n):
        b = literal(i)
        try:
            s = b.decode("utf-8", "replace")
        except Exception:
            s = repr(b)
        out.append({"idx": i, "len": len(b), "s": s})
    return out


# ---------------------------------------------------------------- sections
def method_slot(s: int) -> tuple:
    off = METHODS[0] + (s // 2) * 72 + (s % 2) * 36
    return struct.unpack_from("<9i", D, off)


def parse_all() -> dict:
    # typeDefs
    tds = []
    for i in range(TYPEDEFS[2]):
        e = D[TYPEDEFS[0] + i * 88:TYPEDEFS[0] + (i + 1) * 88]
        tds.append({
            "idx": i,
            "nameIndex": struct.unpack_from("<i", e, TD_NAME)[0],
            "nsIndex": struct.unpack_from("<i", e, TD_NS)[0],
            "byval": struct.unpack_from("<i", e, TD_BYVAL)[0],
            "byref": struct.unpack_from("<i", e, TD_BYREF)[0],
            "declaring": struct.unpack_from("<i", e, TD_DECLARING)[0],
            "parent": struct.unpack_from("<i", e, TD_PARENT)[0],
            "element": struct.unpack_from("<i", e, TD_ELEMENT)[0],
            "fieldStart": struct.unpack_from("<i", e, TD_FIELD_START)[0],
            "methodStart": struct.unpack_from("<i", e, TD_METHOD_START)[0],
            "eventStart": struct.unpack_from("<i", e, TD_EVENT_START)[0],
            "propStart": struct.unpack_from("<i", e, TD_PROP_START)[0],
            "mcount": struct.unpack_from("<H", e, TD_MCOUNT)[0],
            "pcount": struct.unpack_from("<H", e, TD_PCOUNT)[0],
            "fcount": struct.unpack_from("<H", e, TD_FCOUNT)[0],
            "ecount": struct.unpack_from("<H", e, TD_ECOUNT)[0],
            "flags": struct.unpack_from("<I", e, TD_FLAGS)[0],
            "token": struct.unpack_from("<I", e, TD_TOKEN)[0],
        })

    # byval reverse map
    byval_rev = {t["byval"]: i for i, t in enumerate(tds)}
    assert len(byval_rev) == len(tds), "byval not injective"

    # fields
    field_names = []
    for j in range(FIELDS[2]):
        e = D[FIELDS[0] + j * 12:FIELDS[0] + (j + 1) * 12]
        field_names.append((struct.unpack_from("<i", e, 0)[0],
                            struct.unpack_from("<i", e, 4)[0]))
    # params
    params = []
    for j in range(PARAMS[2]):
        e = D[PARAMS[0] + j * 12:PARAMS[0] + (j + 1) * 12]
        params.append((struct.unpack_from("<i", e, 0)[0],
                       struct.unpack_from("<i", e, 8)[0]))
    # properties
    props = []
    for j in range(PROPS[2]):
        e = D[PROPS[0] + j * 20:PROPS[0] + (j + 1) * 20]
        props.append(struct.unpack_from("<i", e, 0)[0])
    # events
    evs = []
    for j in range(EVENTS[2]):
        e = D[EVENTS[0] + j * 24:EVENTS[0] + (j + 1) * 24]
        evs.append(struct.unpack_from("<i", e, 0)[0])

    # methods per type (slot index = methodStart + k; count = mcount)
    # param contiguity check happens in main()
    types = []
    type_names = [None] * len(tds)
    for t in tds:
        nm = name_at(t["nameIndex"]) or f"<type{t['idx']}>"
        ns = name_at(t["nsIndex"]) or ""
        type_names[t["idx"]] = (nm, ns)

    return {
        "tds": tds, "byval_rev": byval_rev, "field_names": field_names,
        "params": params, "props": props, "evs": evs, "type_names": type_names,
    }


DATA = parse_all()


def type_name_of(idx: int, default="?") -> str:
    """byval-space resolution; primitives/classes resolve, extras stay raw."""
    if idx < 0:
        return default
    ti = DATA["byval_rev"].get(idx)
    if ti is None:
        return f"T{idx}"
    nm, ns = DATA["type_names"][ti]
    return f"{ns}.{nm}" if ns else nm


def build_types() -> list[dict]:
    out = []
    tds = DATA["tds"]
    fn = DATA["field_names"]
    for t in tds:
        nm, ns = DATA["type_names"][t["idx"]]
        fs, fc = t["fieldStart"], t["fcount"]
        fields = []
        if fs >= 0 and fc:
            for j in range(fs, min(fs + fc, len(fn))):
                ni, ti = fn[j]
                fields.append({"name": name_or(ni), "typeIdx": ti,
                               "type": type_name_of(ti) if ti in DATA["byval_rev"] else f"F{ti}"})
        parent = None
        if t["parent"] >= 0 and t["parent"] != t["byval"]:
            pi = DATA["byval_rev"].get(t["parent"])
            if pi is not None and pi != t["idx"]:
                parent = ".".join(x for x in DATA["type_names"][pi] if x)
        out.append({
            "name": nm, "ns": ns, "type_index": t["idx"],
            "byval": t["byval"], "parent": parent,
            "declaring": ".".join(x for x in DATA["type_names"][t["declaring"]]) if 0 <= t["declaring"] < len(DATA["type_names"]) else None,
            "flags": t["flags"], "token": hex(t["token"]),
            "field_count": fc, "method_count": t["mcount"],
            "prop_count": t["pcount"], "event_count": t["ecount"],
            "fields": fields,
        })
    return out


def build_methods() -> list[dict]:
    out = []
    tds = DATA["tds"]
    params = DATA["params"]
    for t in tds:
        if not t["mcount"]:
            continue
        nm, ns = DATA["type_names"][t["idx"]]
        ms, mc = t["methodStart"], t["mcount"]
        for k in range(mc):
            s = ms + k
            m = method_slot(s)
            mname = name_or(m[0])
            pstart, pcount = m[4], (m[8] >> 16) & 0xFFFF
            plist = []
            if pstart >= 0 and pcount:
                for j in range(pstart, min(pstart + pcount, len(params))):
                    pni, pti = params[j]
                    plist.append({"name": name_or(pni), "typeIdx": pti,
                                  "type": type_name_of(pti)})
            out.append({
                "type": nm, "ns": ns, "type_index": t["idx"],
                "slot": s, "name": mname,
                "returnTypeIdx": m[2], "returnType": type_name_of(m[2]),
                "paramCount": pcount, "params": plist,
                "token": hex(m[6]), "flags": m[7], "flagsStr": flags_str(m[7]),
                "genericContainer": m[5],
            })
    return out


def build_battle(types: list[dict], methods: list[dict]) -> list[dict]:
    tmap = {t["type_index"]: t for t in types}
    sel = [t for t in types if t["name"].startswith(BATTLE_PREFIX)]
    out = []
    for t in sel:
        entry = dict(t)
        entry["methods"] = [m for m in methods if m["type_index"] == t["type_index"]]
        out.append(entry)
    return out


def main() -> int:
    import time
    t0 = time.time()

    # ---- validate totals
    tds = DATA["tds"]
    assert sum(t["fcount"] for t in tds) == FIELDS[2], "fieldCount sum"
    assert sum(t["mcount"] for t in tds) == 2 * METHODS[1] // 72 * 2 // 2 * 2 // 2 or True, "skip"
    # exact: sum(mcount) == 395966 == 2*197983
    assert sum(t["mcount"] for t in tds) == 2 * (0xD982B8 // 72), "methodCount sum"

    # param contiguity: walk slots in typeDef order
    total_pc = 0
    for t in tds:
        for k in range(t["mcount"]):
            m = method_slot(t["methodStart"] + k)
            total_pc += (m[8] >> 16) & 0xFFFF
    assert total_pc == PARAMS[2], f"parameterCount sum {total_pc} != {PARAMS[2]}"

    # ---- build artifacts
    types = build_types()
    methods = build_methods()
    battle = build_battle(types, methods)
    strings = decode_literals()

    # ---- stats
    ns_counter = Counter(t["ns"] for t in types)
    resolvable_ret = sum(1 for m in methods if m["returnTypeIdx"] in DATA["byval_rev"])
    resolvable_param = sum(1 for m in methods for p in m["params"] if p["typeIdx"] in DATA["byval_rev"])
    total_param = sum(m["paramCount"] for m in methods)
    lit_ascii = sum(1 for s in strings if s["len"] and sum(1 for c in s["s"] if 0x20 <= ord(c) < 0x7F) >= 0.9 * s["len"])
    lit_empty = sum(1 for s in strings if s["len"] == 0)

    stats = {
        "metadata": {"path": str(META), "size": len(D), "sha256": "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"},
        "header": {"version": 31, "pairs": 31, "pairs0_3": "CTR-encrypted at rest; decrypted {0xF45970,0x21F0},{0x196844,0x100},{0x6F9D8,0x20621C},{0xD3F754,0x6F8D8}"},
        "sections": {
            "stringLiteral": {"off": "0x100", "size": "0x6F8D8", "records": 57115, "note": "table {len,dataIndex}"},
            "stringLiteralData": {"off": "0x6F9D8", "size": "0x20621C-used", "records": 57115, "note": "lazy XOR pool, ks@.so 0x1E42BA8"},
            "string(name table)": {"off": "0x20621C", "note": "encrypted at rest, lazy XOR, runtime getter 0x3b95a08"},
            "events": {"off": "0xF45970", "records": 362, "stride": 24, "status": "verified"},
            "properties": {"off": "0xF47B60", "records": 44173, "stride": 20, "status": "verified"},
            "methods": {"off": "0x101F664", "records": 197983, "stride": 72, "slots": 395966, "status": "verified", "note": "2x36B slots per record (double-spaced)"},
            "parameters": {"off": "0x24D8DD8", "records": 380621, "stride": 12, "status": "verified"},
            "fields": {"off": "0x2933F74", "records": 483741, "stride": 12, "status": "verified"},
            "typeDefinitions": {"off": "0x31AC9CC", "records": 48642, "stride": 88, "status": "verified"},
            "images": {"off": "0x35C1A7C", "records": 88, "stride": 40, "status": "verified"},
            "assemblies": {"off": "0x35C283C", "records": 88, "stride": 64, "status": "verified"},
            "fieldDefaultValues": {"off": "0x1DE9F20", "records": 278550, "stride": 12, "status": "verified"},
            "parameterDefaultValues": {"off": "0x24AA0B0", "records": 15982, "stride": 12, "status": "inference"},
            "fieldMarshaledSizes": {"off": "0x24AA0B0", "records": None, "status": "NOT_ESTABLISHED"},
            "fieldAndParameterDefaultValueData": {"off": "0x211A028", "status": "overlaps star pool (plaintext names); default-value blobs NOT decoded"},
            "generic*": {"status": "parsed as counts only; record semantics NOT_ESTABLISHED"},
            "vtableMethods/interfaceOffsets/nestedTypes/interfaces": {"status": "present, not decoded"},
            "attributeData/attributeDataRange": {"status": "present, kind-tagged strings, not decoded"},
            "unresolvedVirtualCall*/windowsRuntime*/exportedTypeDefinitions": {"status": "present, not decoded"},
        },
        "counts": {
            "typeDefs": len(types), "named_types": sum(1 for t in types if not t["name"].startswith("<")),
            "fields": FIELDS[2], "methods": sum(t["method_count"] for t in types),
            "params": PARAMS[2], "properties": PROPS[2], "events": EVENTS[2],
            "stringLiterals": len(strings), "literals_empty": lit_empty, "literals_ascii_ge90": lit_ascii,
            "namespaces": len(ns_counter),
        },
        "type_resolution": {
            "byval_map": "injective over 48,642 typeDefs (range 24,609..100,617)",
            "parent_resolvable": sum(1 for t in types if t["parent"]),
            "returnType_resolvable": f"{resolvable_ret}/{len(methods)}",
            "paramType_resolvable": f"{resolvable_param}/{total_param}",
            "fieldType_space": "NOT_ESTABLISHED (38,193 distinct; disjoint from byval; e.g. int field=48682 vs Int32 byval=48677)",
        },
    }

    for name, obj in (("types.json", types), ("methods.json", methods),
                      ("battle.json", battle), ("strings.json", strings),
                      ("stats.json", stats)):
        with open(OUT / name, "w") as f:
            json.dump(obj, f, ensure_ascii=False)
    print(f"types={len(types)} methods={len(methods)} battle={len(battle)} strings={len(strings)} "
          f"ns={len(ns_counter)} t={time.time()-t0:.1f}s")
    return 0


if __name__ == "__main__":
    sys.exit(main())
