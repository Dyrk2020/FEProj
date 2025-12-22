#!/usr/bin/env python3
"""TDR wire-format parser skeleton (Wild Rift 7.2, libtdr.so 7.2.0.2460).

Wire format facts implemented here are verified against the real binary
(tdr_hton @0x25ac8 / tdr_ntoh_ex @0x29140, see tdr-wire.md):
  * all multi-byte integers BIG-ENDIAN
  * schema-driven positional: fields in metalib entry order, no tags
  * string/wstring: [BE len-prefix (stSizeInfo.iUnitSize, default 4)]
    [payload incl NUL]; string len = strlen+1, wstring len = (wcslen+1)*2
  * fixed arrays: elements consecutive, no count
  * refer arrays: count comes from another field's transmitted value
  * sizeinfo arrays: count at entry-start + stSizeInfo.iNOff (BE, unit 2/4/8)
  * union: [selector (stSelector.iUnitSize)][active member]
  * meta size_type: struct total size patched at reserved slot (BE)
  * versionindicator: pack version as first field (BE); entries with
    iVersion > version are skipped

API:
  tdr_parse_metalib(data) -> meta tree (corrected entry offset meta+0x130)
  TdrDecoder(schema, version=1).decode(bytes) -> list[Record]
  --selftest: build synthetic schema, encode with TdrEncoder, decode back
"""

import argparse
import json
import struct

# ---------------------------------------------------------------------------
# Metalib layout constants (DWARF + disassembly verified)
# ---------------------------------------------------------------------------
MAGIC = 0x02D6
BUILD = 11
PLATFORM_64 = 0x40

LIB_HDR = 0x160
META_HDR = 0x130            # tagTDRMeta header size (entries at meta+0x130!)
ENTRY_SIZE = 0x130          # tagTDRMetaEntry
NAME_ENTRY = 0x10           # NameEntry {name_off u64, meta_off u64}

# tagTDRMetaEntry offsets
E = {
    "iID": 0, "iVersion": 4, "iType": 8, "ptrName": 16, "iHRealSize": 24,
    "iNRealSize": 32, "iHUnitSize": 40, "iNUnitSize": 48,
    "iCustomHUnitSize": 56, "iCount": 64, "iNOff": 72, "iHOff": 80,
    "wFlag": 108, "stSizeInfo": 112, "stRefer": 144, "stSelector": 168,
    "iIO": 192, "idxIO": 196, "ptrMeta": 200, "iMaxId": 208, "iMinId": 212,
    "iDefaultValLen": 224, "ptrDesc": 232, "ptrDefaultVal": 248,
    "iOffToMeta": 272, "iFlag": 280, "ptrCustomAttr2": 288,
}
# tagTDRMeta offsets
M = {
    "uFlags": 0, "iID": 4, "iBaseVersion": 8, "iCurVersion": 12,
    "iType": 16, "iMemSize": 24, "iNUnitSize": 32, "iHUnitSize": 40,
    "iCustomHUnitSize": 48, "iMaxSubID": 60, "iEntriesNum": 64,
    "iIndexesNum": 68, "ptrIndexes": 72, "ptrColumns": 80, "ptrMeta": 88,
    "iVersionIndicatorMinVer": 120, "stSizeType": 128,
    "stVersionIndicator": 160, "stSortKey": 184, "ptrName": 208,
}
# SizeInfo / Refer / Selector (32 / 24 / 24 B)
SI = {"iNOff": 0, "iHOff": 8, "iUnitSize": 16, "idxSizeType": 24}
RF = {"iNOff": 0, "iHOff": 8, "iUnitSize": 16}
SL = {"iUnitSize": 0, "iHOff": 8, "ptrEntry": 16}

TYPES = {
    0: "union", 1: "struct", 2: "tinyint", 3: "tinyuint", 5: "smallint",
    6: "smalluint", 7: "int", 8: "uint", 9: "long", 10: "ulong",
    11: "bigint", 12: "biguint", 13: "date", 14: "time", 15: "datetime",
    16: "money", 17: "float", 18: "double", 19: "ip", 20: "wchar",
    21: "string", 22: "wstring", 23: "void",
}
TYPE_BY_NAME = {v: k for k, v in TYPES.items()}

SIGNED = {2, 5, 7, 9, 11, 13, 14, 15, 16, 17, 18}
WIDTH = {2: 1, 3: 1, 5: 2, 6: 2, 7: 4, 8: 4, 9: 4, 10: 4, 11: 8, 12: 8,
         13: 4, 14: 4, 15: 8, 16: 4, 17: 4, 18: 8, 19: 4, 20: 2}


# ---------------------------------------------------------------------------
# Metalib parser (corrected entry offset: meta + 0x130, stride 0x130)
# ---------------------------------------------------------------------------

def cstr(buf, off):
    end = buf.find(b"\x00", off)
    return buf[off:end].decode("utf-8", "replace") if end >= 0 else None


def tdr_parse_metalib(data):
    """Parse a TDR Metalib binary buffer into a meta tree.

    Returns dict {valid, magic, nBuild, platform, name, metas:[...]}
    meta = {name, iType, iBaseVersion, iCurVersion, sizeType, verInd,
            entries:[{name, iType, typeName, iCount, iNUnitSize, iHOff,
                      iNOff, wFlag, sizeInfo, refer, selector, ptrMeta}]}
    """
    res = {"valid": False, "errors": []}
    if len(data) < LIB_HDR:
        res["errors"].append("too short")
        return res
    res["magic"], res["nBuild"] = struct.unpack_from("<HH", data, 0)
    res["platform"] = struct.unpack_from("<I", data, 4)[0]
    res["iSize"] = struct.unpack_from("<I", data, 8)[0]
    res["name"] = cstr(data, 224)
    if res["magic"] != MAGIC or res["nBuild"] != BUILD:
        res["errors"].append(f"magic/build mismatch {res['magic']:#x}/{res['nBuild']}")
        return res
    if res["platform"] not in (0x20, PLATFORM_64):
        res["errors"].append(f"platform {res['platform']:#x}")
        return res
    n_metas = struct.unpack_from("<I", data, 48)[0]
    meta_off = struct.unpack_from("<Q", data, 112)[0]  # rel. to lib+0x160
    res["metas"] = []
    off = LIB_HDR + meta_off
    for mi in range(n_metas):
        if off + META_HDR > len(data):
            res["errors"].append(f"meta[{mi}] out of range")
            break
        m = {}
        m["iID"] = struct.unpack_from("<I", data, off + M["iID"])[0]
        m["iBaseVersion"] = struct.unpack_from("<I", data, off + M["iBaseVersion"])[0]
        m["iCurVersion"] = struct.unpack_from("<I", data, off + M["iCurVersion"])[0]
        m["iType"] = struct.unpack_from("<I", data, off + M["iType"])[0]
        m["iEntriesNum"] = struct.unpack_from("<I", data, off + M["iEntriesNum"])[0]
        m["name"] = cstr(data, struct.unpack_from("<Q", data, off + M["ptrName"])[0])
        m["sizeType"] = _read_sizeinfo(data, off + M["stSizeType"])
        m["verInd"] = _read_sizeinfo(data, off + M["stVersionIndicator"])
        m["entries"] = []
        eoff = off + META_HDR          # <- corrected: entries at meta+0x130
        for ei in range(m["iEntriesNum"]):
            if eoff + ENTRY_SIZE > len(data):
                res["errors"].append(f"entry[{ei}] out of range")
                break
            e = {}
            e["iID"] = struct.unpack_from("<I", data, eoff + E["iID"])[0]
            e["iVersion"] = struct.unpack_from("<I", data, eoff + E["iVersion"])[0]
            e["iType"] = struct.unpack_from("<I", data, eoff + E["iType"])[0]
            e["typeName"] = TYPES.get(e["iType"], f"type<{e['iType']}>")
            e["iCount"] = struct.unpack_from("<I", data, eoff + E["iCount"])[0]
            e["iNUnitSize"] = struct.unpack_from("<I", data, eoff + E["iNUnitSize"])[0]
            e["iHUnitSize"] = struct.unpack_from("<I", data, eoff + E["iHUnitSize"])[0]
            e["iCustomHUnitSize"] = struct.unpack_from("<I", data, eoff + E["iCustomHUnitSize"])[0]
            e["iHOff"] = struct.unpack_from("<I", data, eoff + E["iHOff"])[0]
            e["iNOff"] = struct.unpack_from("<I", data, eoff + E["iNOff"])[0]
            e["wFlag"] = struct.unpack_from("<H", data, eoff + E["wFlag"])[0]
            e["ptrMeta"] = struct.unpack_from("<Q", data, eoff + E["ptrMeta"])[0]
            e["sizeInfo"] = _read_sizeinfo(data, eoff + E["stSizeInfo"])
            e["refer"] = _read_refer(data, eoff + E["stRefer"])
            e["selector"] = _read_selector(data, eoff + E["stSelector"])
            e["name"] = cstr(data, struct.unpack_from("<Q", data, eoff + E["ptrName"])[0])
            m["entries"].append(e)
            eoff += ENTRY_SIZE
        res["metas"].append(m)
        off = eoff if not res["errors"] else off + META_HDR + m["iEntriesNum"] * ENTRY_SIZE
    res["valid"] = not res["errors"] and len(res["metas"]) == n_metas
    return res


def _read_sizeinfo(data, off):
    return {
        "iNOff": struct.unpack_from("<Q", data, off + SI["iNOff"])[0],
        "iHOff": struct.unpack_from("<Q", data, off + SI["iHOff"])[0],
        "iUnitSize": struct.unpack_from("<Q", data, off + SI["iUnitSize"])[0],
        "idxSizeType": struct.unpack_from("<i", data, off + SI["idxSizeType"])[0],
    }


def _read_refer(data, off):
    return {
        "iNOff": struct.unpack_from("<Q", data, off + RF["iNOff"])[0],
        "iHOff": struct.unpack_from("<Q", data, off + RF["iHOff"])[0],
        "iUnitSize": struct.unpack_from("<Q", data, off + RF["iUnitSize"])[0],
    }


def _read_selector(data, off):
    return {
        "iUnitSize": struct.unpack_from("<Q", data, off + SL["iUnitSize"])[0],
        "iHOff": struct.unpack_from("<Q", data, off + SL["iHOff"])[0],
        "ptrEntry": struct.unpack_from("<Q", data, off + SL["ptrEntry"])[0],
    }


# ---------------------------------------------------------------------------
# Wire decoder
# ---------------------------------------------------------------------------

class TdrDecodeError(Exception):
    pass


class Record:
    """Decoded field. value kinds: int/float/str/bytes/list/record/raw."""

    def __init__(self, name, kind, value, offset=0, consumed=0, raw=None):
        self.name = name
        self.kind = kind
        self.value = value
        self.offset = offset
        self.consumed = consumed
        self.raw = raw          # original wire bytes (hex) for unknowns

    def to_dict(self):
        v = self.value
        if isinstance(v, list):
            v = [x.to_dict() if isinstance(x, Record) else x for x in v]
        d = {"name": self.name, "kind": self.kind, "value": v,
             "offset": self.offset, "consumed": self.consumed}
        if self.raw is not None:
            d["raw"] = self.raw
        return d

    def __repr__(self):
        return f"<Record {self.name}:{self.kind} {self.value!r}>"


class TdrDecoder:
    """Decode TDR net bytes against a schema.

    schema: meta tree from tdr_parse_metalib, or a dict:
      {"name": str, "entries": [entry], "sizeType": {...}, "verInd": {...}}
    entry: {"name", "iType"|"typeName", "iCount", "iNUnitSize", "wFlag",
            "sizeInfo": {...}, "refer": {...}, "selector": {...},
            "subMeta"|"subName": meta or meta name (struct/union)}
    """

    def __init__(self, schema, version=1, meta_lookup=None):
        self.schema = schema
        self.version = version
        self.meta_lookup = meta_lookup or {}
        self.records = []

    # -- low-level readers (BIG-ENDIAN) --
    def _u(self, buf, off, n):
        if off + n > len(buf):
            raise TdrDecodeError(f"EOF at {off:#x} need {n}")
        return int.from_bytes(buf[off:off + n], "big")

    def _signed(self, v, n):
        return v - (1 << (8 * n)) if v & (1 << (8 * n - 1)) else v

    # -- entry-level dispatch --
    def decode(self, buf):
        """Decode buf (one meta) -> list[Record]."""
        self.records = []
        self._struct(buf, 0, self.schema, None)
        return self.records

    def _struct(self, buf, off, meta, parent):
        start = off
        ver_ind = meta.get("verInd") or {}
        size_type = meta.get("sizeType") or {}
        vi_unit = ver_ind.get("iUnitSize", 0)
        # versionindicator slot: first field(s) of the struct (net offset iNOff)
        if vi_unit:
            vi_off = start + (ver_ind.get("iNOff") or 0)
            vi = self._u(buf, vi_off, vi_unit)
            self.records.append(Record("__version_indicator", "int", vi, vi_off, vi_unit))
            # note: version filtering applied via entry.iVersion vs vi
            cur_version = vi
        else:
            cur_version = self.version
        count_holders = {}      # name -> (net_offset_of_count_value, unit)
        for e in meta.get("entries", []):
            if e.get("iVersion", 1) > cur_version:
                continue        # version filter (tdr_hton 0x268bc)
            r = self._entry(buf, off, e, meta, count_holders)
            if r is not None:
                off += r.consumed
        # meta size_type: total struct size was patched at start slot
        if size_type.get("iUnitSize"):
            slot_off = start + (size_type.get("iNOff") or 0)
            total = self._u(buf, slot_off, size_type["iUnitSize"])
            self.records.append(Record("__struct_size", "int", total, slot_off,
                                       size_type["iUnitSize"]))
        return off - start

    def _entry(self, buf, off, e, meta, count_holders):
        tid = e.get("iType")
        if tid is None:
            tid = TYPE_BY_NAME.get(e.get("typeName"))
        name = e.get("name", f"field_{off:#x}")
        count = e.get("iCount", 1)
        unit = e.get("iNUnitSize", 0)
        si = e.get("sizeInfo") or {}
        rf = e.get("refer") or {}
        wflag = e.get("wFlag", 0)
        e_start = off

        # refer-based count: count = value of the refer target (already decoded)
        if rf.get("iNOff") or rf.get("iHOff"):
            count = count_holders.get("refer_" + name)
            if count is None:
                count = 0      # refer field not seen yet -> empty
        # sizeinfo self-contained: count at e_start + iNOff (BE, unit si.iUnitSize)
        elif wflag & 0x2 and si.get("iUnitSize"):
            unit_sz = si["iUnitSize"]
            count = self._u(buf, e_start + si.get("iNOff", 0), unit_sz)

        # --- scalar ---
        if tid in WIDTH and tid not in (21, 22):
            n = WIDTH[tid]
            total = n * count
            vals = []
            for i in range(count):
                v = self._u(buf, off + i * n, n)
                if tid in SIGNED and tid not in (17, 18):
                    v = self._signed(v, n)
                vals.append(v)
            self.records.append(Record(name, "int" if tid not in (17, 18) else "float",
                                       vals[0] if count == 1 else vals, e_start, total,
                                       raw=buf[e_start:e_start + total].hex()))
            return Record(name, "scalar", vals, e_start, total)

        # --- string / wstring ---
        if tid == 21 or tid == 22:
            return self._string(buf, off, e, name, count, si, tid)

        # --- byte array (raw) ---
        if tid == 3 or e.get("typeName") == "byte":
            total = count * unit if unit else count
            if off + total > len(buf):
                raise TdrDecodeError(f"byte array {name} EOF @{off:#x}")
            self.records.append(Record(name, "bytes", buf[off:off + total], e_start,
                                       total, raw=buf[off:off + total].hex()))
            return Record(name, "bytes", buf[off:off + total], e_start, total)

        # --- struct ---
        if tid == 1:
            sub = self._resolve_meta(e)
            if sub is None:
                return self._unknown(buf, off, name, "struct", count)
            consumed = 0
            vals = []
            for i in range(count):
                sub_recs_before = len(self.records)
                self._struct(buf, off + consumed, sub, parent)
                consumed += self._last_sub_consumed(off + consumed, sub)
            return Record(name, "struct", None, e_start, consumed)

        # --- union ---
        if tid == 0:
            sel = e.get("selector") or {}
            sel_unit = sel.get("iUnitSize") or 1
            sel_off = e_start + (sel.get("iNOff") or 0)
            sel_val = self._u(buf, sel_off, sel_unit)
            sub = self._resolve_meta(e)
            self.records.append(Record(name, "union_selector", sel_val, sel_off, sel_unit))
            if sub is not None:
                entries = sub.get("entries", [])
                if sel_val < len(entries):
                    member = entries[sel_val]
                    consumed = sel_unit
                    before = len(self.records)
                    r = self._entry(buf, off + consumed, member, sub, count_holders)
                    consumed += r.consumed if r else 0
                    return Record(name, "union", sel_val, e_start, consumed)
            return Record(name, "union_unknown", sel_val, e_start, sel_unit)

        # --- unknown ---
        return self._unknown(buf, off, name, e.get("typeName", "?"), count)

    def _last_sub_consumed(self, off, sub):
        # consumed = distance from `off` to end of last record produced for sub
        # (approximated by tracking record offsets)
        last = self.records[-1]
        return (last.offset + last.consumed) - off

    def _string(self, buf, off, e, name, count, si, tid):
        unit = si.get("iUnitSize") or 4      # default u32 length prefix
        w = 2 if tid == 22 else 1
        consumed = 0
        vals = []
        for i in range(count):
            ln = self._u(buf, off + consumed, unit)
            consumed += unit
            nbytes = ln * w
            if off + consumed + nbytes > len(buf):
                raise TdrDecodeError(f"string {name} EOF @{off + consumed:#x}")
            payload = buf[off + consumed:off + consumed + nbytes]
            consumed += nbytes
            if w == 1:
                s = payload[:-1].decode("utf-8", "replace") if payload else ""
            else:
                s = payload[:-2].decode("utf-16-le", "replace") if len(payload) >= 2 else ""
            vals.append(s)
        self.records.append(Record(name, "string" if w == 1 else "wstring",
                                   vals[0] if count == 1 else vals, off, consumed,
                                   raw=buf[off:off + consumed].hex()))
        return Record(name, "str", vals, off, consumed)

    def _resolve_meta(self, e):
        sub_name = e.get("subName") or e.get("subMeta")
        if isinstance(sub_name, dict):
            return sub_name
        if isinstance(sub_name, str):
            return self.meta_lookup.get(sub_name)
        return None

    def _unknown(self, buf, off, name, type_hint, count):
        # best-effort: consume nothing parseable -> tag as raw
        return Record(name, f"unknown:{type_hint}", None, off, 0,
                      raw=buf[off:min(off + 16, len(buf))].hex())


# ---------------------------------------------------------------------------
# Encoder (for self-test / crafting; mirrors the same wire rules)
# ---------------------------------------------------------------------------

class TdrEncoder:
    def __init__(self, version=1):
        self.version = version
        self.out = bytearray()

    def u(self, v, n):
        self.out += int(v).to_bytes(n, "big")

    def pack_meta(self, meta, values):
        ver_ind = meta.get("verInd") or {}
        size_type = meta.get("sizeType") or {}
        # versionindicator slot
        vi = values.get("__version", self.version)
        if ver_ind.get("iUnitSize"):
            # emit at iNOff: we emit a placeholder then patch
            slot = len(self.out)
            self.u(0, ver_ind["iUnitSize"])
        # meta size_type slot
        if size_type.get("iUnitSize"):
            slot_sz = len(self.out)
            self.u(0, size_type["iUnitSize"])
        for e in meta["entries"]:
            name = e["name"]
            v = values.get(name)
            if v is None:
                continue
            tid = e["iType"]
            count = e.get("iCount", 1)
            si = e.get("sizeInfo") or {}
            if tid in (21, 22):
                unit = si.get("iUnitSize") or 4
                lst = v if isinstance(v, list) else [v]
                for s in lst:
                    b = (s + "\x00").encode("utf-8")
                    self.u(len(b) if tid == 21 else len(b), unit)
                    self.out += b
            elif tid in WIDTH:
                n = WIDTH[tid]
                lst = v if isinstance(v, list) else [v]
                for x in lst:
                    self.u(x & ((1 << (8 * n)) - 1), n)
            elif tid == 1:
                for item in (v if isinstance(v, list) else [v]):
                    sub = e.get("subMeta") or {"entries": []}
                    self.pack_meta(sub, item)
            elif tid == 0:
                sel = e.get("selector") or {}
                unit = sel.get("iUnitSize") or 1
                sel_v, member_v = v[0], v[1]
                self.u(sel_v, unit)
                sub = e.get("subMeta") or {"entries": []}
                member = sub["entries"][sel_v]
                self.pack_entry_single(member, member_v)
            else:
                raise TdrDecodeError(f"unsupported type {tid} in encoder")
        # patch meta size_type
        if size_type.get("iUnitSize"):
            total = len(self.out) - slot_sz - size_type["iUnitSize"]
            self.out[slot_sz:slot_sz + size_type["iUnitSize"]] = \
                int(total).to_bytes(size_type["iUnitSize"], "big")
        # patch versionindicator
        if ver_ind.get("iUnitSize"):
            pass  # value already correct if slot==0
        return bytes(self.out)

    def pack_entry_single(self, e, v):
        tid = e["iType"]
        if tid in (21, 22):
            b = (v + "\x00").encode("utf-8")
            self.u(len(b), e.get("sizeInfo", {}).get("iUnitSize") or 4)
            self.out += b
        elif tid in WIDTH:
            self.u(v & ((1 << (8 * WIDTH[tid])) - 1), WIDTH[tid])
        else:
            raise TdrDecodeError("nested unsupported")


# ---------------------------------------------------------------------------
# Self-test
# ---------------------------------------------------------------------------

def selftest():
    schema = {
        "name": "star_def::TestScalars",
        "entries": [
            {"name": "bVal", "iType": 2, "iCount": 1},
            {"name": "sVal", "iType": 5, "iCount": 1},
            {"name": "iVal", "iType": 7, "iCount": 1},
            {"name": "llVal", "iType": 11, "iCount": 1},
            {"name": "szName", "iType": 21, "iCount": 1, "sizeInfo": {"iUnitSize": 4}},
            {"name": "byBuf", "iType": 3, "iCount": 8, "iNUnitSize": 1},
            {"name": "iArr", "iType": 7, "iCount": 3},
        ],
    }
    values = {
        "bVal": -2, "sVal": 0x1234, "iVal": 0x01020304,
        "llVal": 0x1122334455667788, "szName": "Hi",
        "byBuf": [0xAA, 0, 0, 0, 0, 0, 0, 0x55],
        "iArr": [1, -2, 3],
    }
    enc = TdrEncoder()
    wire = enc.pack_meta(schema, values)
    dec = TdrDecoder(schema)
    recs = dec.decode(wire)
    print("wire:", wire.hex())
    for r in recs:
        print(" ", r.to_dict())
    # assertions
    byname = {r.name: r.value for r in recs}
    assert byname["bVal"] == -2, byname
    assert byname["sVal"] == 0x1234
    assert byname["iVal"] == 0x01020304
    assert byname["llVal"] == 0x1122334455667788
    assert byname["szName"] == "Hi"
    assert byname["iArr"] == [1, -2, 3]
    assert byname["byBuf"][0] == 0xAA
    assert wire == (b"\xfe\x12\x34\x01\x02\x03\x04\x11\x22\x33\x44\x55\x66\x77\x88"
                    b"\x00\x00\x00\x03Hi\x00\xaa\x00\x00\x00\x00\x00\x00\x55"
                    b"\x00\x00\x00\x01\xff\xff\xff\xfe\x00\x00\x00\x03")
    print("SELFTEST PASS")
    return 0


def main(argv=None):
    ap = argparse.ArgumentParser(description="TDR wire parser skeleton")
    ap.add_argument("--selftest", action="store_true")
    ap.add_argument("--metalib", metavar="FILE", help="parse a TDR Metalib binary")
    ap.add_argument("--decode", nargs=2, metavar=("METALIB", "PAYLOAD"),
                    help="decode PAYLOAD hex against METALIB meta")
    ap.add_argument("--meta", metavar="NAME", default=None,
                    help="meta name to decode (default: first)")
    a = ap.parse_args(argv)
    if a.selftest:
        return selftest()
    if a.metalib:
        data = open(a.metalib, "rb").read()
        res = tdr_parse_metalib(data)
        print(json.dumps(res, ensure_ascii=False, indent=1)[:4000])
        if a.decode:
            payload = bytes.fromhex(open(a.decode[1]).read())
            mlib = res
            meta = (mlib["metas"][0] if not a.meta
                    else next((m for m in mlib["metas"] if m["name"] == a.meta), None))
            if not meta:
                print("meta not found")
                return 1
            dec = TdrDecoder(meta)
            for r in dec.decode(payload):
                print(json.dumps(r.to_dict(), ensure_ascii=False))
        return 0 if res["valid"] else 1
    ap.print_help()
    return 2


if __name__ == "__main__":
    raise SystemExit(main())
