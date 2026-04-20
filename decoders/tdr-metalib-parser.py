#!/usr/bin/env python3
"""Round-12: TDR Metalib parser.

Implements the Tencent Data Representation (TDR) Metalib file format as
recovered from corpus/native-elf/decompressed-arm64/libtdr.so:

* The on-disk Metalib IS the in-memory structure: tdr_save_metalib_fp
  (0xd374) is `fwrite(lib, 1, lib->iSize, fp)` (call @0xd3dc to 0x8850),
  so a .tdr file = 360-byte tagTDRMetaLib header followed by the macro /
  meta / string-buffer areas, with all `ptr*` fields stored as **u64
  offsets relative to the Metalib base** (verified: tdr_get_meta_name
  @0x15dd4 returns `meta - meta->ptrMeta + meta->ptrName` == base +
  meta->ptrName; the loader tdr_load_metalib_buf @0xcf58 validates magic /
  nBuild / platform and copies the buffer without pointer fixup).

* Header field offsets come from the DWARF type `tagTDRMetaLib`
  (360 B), meta layout from `tagTDRMeta` (608 B), entry layout from
  `tagTDRMetaEntry` (304 B), macro layout from `tagTDRMacro` (32 B),
  macrosgroup from `tagTDRMacrosGroup` (168 B) - all extracted from the
  lib's .debug_info.

* The TDR scalar type table `s_types_XMLTag` @ 0x142008 (39 entries x
  104 B = tagTDRCTypeInfo { 3 ptrs + char[32] + char[32] + 3 u32 }) was
  resolved through the .rela.dyn R_AARCH64_RELATIVE addends (in-file
  .data slots are relocation garbage in this capture) and is embedded
  below as TYPE_TABLE (name / C name / SQL name / XML type id).

No real Metalib sample exists in the backup corpus (see tdr-parse.md,
scan results), so the parser is written against the format and is
defensive: every offset is bounds-checked against header iSize, meta
contiguity is validated through each meta's own `ptrMeta` field, and
parse failures are reported as structured errors instead of raising.

Usage:
    python3 tdr-metalib-parser.py file.tdr [--dump] [--json out.json]
    python3 tdr-metalib-parser.py --selftest
"""
import json
import struct
import sys

# ---------------------------------------------------------------------------
# Constants recovered from libtdr.so DWARF
# ---------------------------------------------------------------------------

MAGIC = 0x02D6  # wMagic (u16 @ +0)
BUILD = 11      # nBuild (u16 @ +2) written by this build's tdr_init_lib
PLATFORM_32 = 0x20
PLATFORM_64 = 0x40

HEADER_SIZE = 360            # sizeof(tagTDRMetaLib)
META_SIZE = 608              # sizeof(tagTDRMeta)
META_ENTRY_SIZE = 304        # sizeof(tagTDRMetaEntry)
MACRO_SIZE = 32              # sizeof(tagTDRMacro)
MACROSGROUP_SIZE = 168       # sizeof(tagTDRMacrosGroup)

# tagTDRMetaLib field offsets (u32 unless noted)
H = {
    "wMagic": 0, "nBuild": 2, "dwPlatformArch": 4, "iSize": 8,
    "checksum": 16, "iReserve": 20, "iID": 32, "iXMLTagSetVer": 36,
    "iMaxID": 40, "iMaxMetaNum": 44, "iCurMetaNum": 48,
    "iMaxMacroNum": 52, "iCurMacroNum": 56,
    "iMaxMacrosGroupNum": 60, "iCurMacrosGroupNum": 64,
    "iMaxValFieldDefNum": 68, "iCurValFieldDefNum": 72, "iVersion": 76,
    "ptrMacro": 80, "ptrID": 88, "ptrName": 96, "ptrMap": 104,
    "ptrMeta": 112, "ptrLaseMeta": 120, "iFreeStrBufSize": 128,
    "ptrStrBuf": 136, "ptrFreeStrBuf": 144, "ptrMacroGroupMap": 152,
    "ptrMacrosGroup": 160, "iMacrosGroupSize": 168,
    "ptrValueFiledDefinitionsMap": 176, "ptrValueFiledDefinitions": 184,
    "iValueFiledDefinitionsSize": 192, "iFlag": 200,
    "iReserve2": 208, "iReserve3": 216, "szName": 224,
}
# u32 header fields (everything before ptrMacro except magic/nBuild/plat)
H_U32 = [k for k, v in H.items() if isinstance(v, int) and v % 4 == 0
         and k not in ("szName",) and v < 80]
H_PTR = ["ptrMacro", "ptrID", "ptrName", "ptrMap", "ptrMeta",
         "ptrLaseMeta", "ptrStrBuf", "ptrFreeStrBuf", "ptrMacroGroupMap",
         "ptrMacrosGroup", "ptrValueFiledDefinitionsMap",
         "ptrValueFiledDefinitions", "iReserve2", "iReserve3"]

# tagTDRMeta field offsets
M = {
    "uFlags": 0, "iID": 4, "iBaseVersion": 8, "iCurVersion": 12,
    "iType": 16, "iMemSize": 24, "iNUnitSize": 32, "iHUnitSize": 40,
    "iCustomHUnitSize": 48, "idxCustomHUnitSize": 56, "iMaxSubID": 60,
    "iEntriesNum": 64, "iIndexesNum": 68, "ptrIndexes": 72,
    "ptrColumns": 80, "ptrMeta": 88, "iIdx": 96, "idxID": 100,
    "idxType": 104, "idxVersion": 108, "iCustomAlign": 112,
    "iValidAlign": 116, "iVersionIndicatorMinVer": 120,
    "stSizeType": 128, "stVersionIndicator": 160, "stSortKey": 184,
    "ptrName": 208, "ptrDesc": 216, "ptrChineseName": 224,
    "iSplitTableFactor": 232, "nSplitTableRuleID": 236,
    "nPrimayKeyMemberNum": 238, "idxSplitTableFactor": 240,
    "stSplitTableKey": 248, "ptrPrimayKeyBase": 264,
    "ptrDependonStruct": 272, "ptrCustomAttr": 280, "ptrCustomAttr2": 288,
    "iReserve3": 296, "stEntries": 304,
}
M_U32 = ["uFlags", "iID", "iBaseVersion", "iCurVersion", "iType",
         "iMemSize", "iNUnitSize", "iHUnitSize", "iCustomHUnitSize",
         "idxCustomHUnitSize", "iMaxSubID", "iEntriesNum", "iIndexesNum",
         "iIdx", "idxID", "idxType", "idxVersion", "iCustomAlign",
         "iValidAlign", "iVersionIndicatorMinVer", "iSplitTableFactor"]
M_U16 = ["nSplitTableRuleID", "nPrimayKeyMemberNum"]
M_PTR = ["ptrIndexes", "ptrColumns", "ptrMeta", "ptrName", "ptrDesc",
         "ptrChineseName", "ptrPrimayKeyBase", "ptrDependonStruct",
         "ptrCustomAttr", "ptrCustomAttr2", "iReserve3"]

# tagTDRMetaEntry field offsets
E = {
    "iID": 0, "iVersion": 4, "iType": 8, "ptrName": 16,
    "iHRealSize": 24, "iNRealSize": 32, "iHUnitSize": 40,
    "iNUnitSize": 48, "iCustomHUnitSize": 56, "iCount": 64,
    "iNOff": 72, "iHOff": 80, "idxID": 88, "idxVersion": 92,
    "idxCount": 96, "idxType": 100, "idxCustomHUnitSize": 104,
    "wFlag": 108, "chDBFlag": 110, "chOrder": 111, "stSizeInfo": 112,
    "stRefer": 144, "stSelector": 168, "iIO": 192, "idxIO": 196,
    "ptrMeta": 200, "iMaxId": 208, "iMinId": 212, "iMaxIdIdx": 216,
    "iMinIdIdx": 220, "iDefaultValLen": 224, "ptrDesc": 232,
    "ptrChineseName": 240, "ptrDefaultVal": 248, "ptrMacrosGroup": 256,
    "ptrCustomAttr": 264, "iOffToMeta": 272, "iFlag": 280,
    "ptrCustomAttr2": 288, "iReserve3": 296,
}
E_U32 = ["iID", "iVersion", "iType", "iHRealSize", "iNRealSize",
         "iHUnitSize", "iNUnitSize", "iCustomHUnitSize", "iCount",
         "iNOff", "iHOff", "idxID", "idxVersion", "idxCount", "idxType",
         "idxCustomHUnitSize", "iIO", "idxIO", "iMaxId", "iMinId",
         "iMaxIdIdx", "iMinIdIdx", "iDefaultValLen"]
E_U16 = ["wFlag"]
E_U8 = ["chDBFlag", "chOrder"]
E_PTR = ["ptrName", "ptrMeta", "ptrDesc", "ptrChineseName",
         "ptrDefaultVal", "ptrMacrosGroup", "ptrCustomAttr", "iOffToMeta",
         "iFlag", "ptrCustomAttr2", "iReserve3"]

# tagTDRMacro (32 B)
MACRO_PTR = ["ptrMacro", "ptrDesc"]   # u64 offsets
MACRO_U32 = ["iValue", "iReserve"]    # u32

# ---------------------------------------------------------------------------
# TDR scalar type table (s_types_XMLTag @0x142008, 39 entries), resolved via
# R_AARCH64_RELATIVE addends; (name, cname, sqlname, typeid)
# ---------------------------------------------------------------------------
TYPE_TABLE = [
    ("union", "union", "", 0), ("struct", "struct", "", 1),
    ("tinyint", "int8_t", "TINYINT", 2), ("tinyuint", "uint8_t", "TINYINT UNSIGNED", 3),
    ("smallint", "int16_t", "SMALLINT", 5), ("smalluint", "uint16_t", "SMALLINT UNSIGNED", 6),
    ("int", "int32_t", "INT", 7), ("uint", "uint32_t", "INT UNSIGNED", 8),
    ("bigint", "int64_t", "BIGINT", 11), ("biguint", "uint64_t", "BIGINT UNSIGNED", 12),
    ("int8", "int8_t", "TINYINT", 2), ("uint8", "uint8_t", "TINYINT UNSIGNED", 3),
    ("int16", "int16_t", "SMALLINT", 5), ("uint16", "uint16_t", "SMALLINT UNSIGNED", 6),
    ("int32", "int32_t", "INT", 7), ("uint32", "uint32_t", "INT UNSIGNED", 8),
    ("int64", "int64_t", "BIGINT", 11), ("uint64", "uint64_t", "BIGINT UNSIGNED", 12),
    ("float", "float", "FLOAT", 17), ("double", "double", "DOUBLE", 18),
    ("decimal", "float", "FLOAT", 17), ("date", "tdr_date_t", "DATE", 13),
    ("time", "tdr_time_t", "TIME", 14), ("datetime", "tdr_datetime_t", "DATETIME", 15),
    ("string", "char", "VARCHAR", 21), ("byte", "uint8_t", "TINYINT UNSIGNED", 3),
    ("ip", "tdr_ip_t", "INT UNSIGNED", 19), ("wchar", "tdr_wchar_t", "SMALLINT UNSIGNED", 20),
    ("wstring", "tdr_wchar_t", "VARCHAR", 22), ("void", "void", "VOID", 23),
    ("char", "char", "TINYINT", 2), ("uchar", "unsigned char", "TINYINT UNSIGNED", 3),
    ("short", "int16_t", "SMALLINT", 5), ("ushort", "uint16_t", "SMALLINT UNSIGNED", 6),
    ("long", "int32_t", "INT", 9), ("ulong", "uint32_t", "INT UNSIGNED", 10),
    ("longlong", "int64_t", "BIGINT", 11), ("ulonglong", "uint64_t", "BIGINT UNSIGNED", 12),
    ("money", "int32_t", "INT", 16),
]
TYPE_BY_ID = {}
for _n, _c, _s, _t in TYPE_TABLE:
    TYPE_BY_ID.setdefault(_t, (_n, _c, _s))


def type_name(tid):
    t = TYPE_BY_ID.get(tid)
    return t[0] if t else f"type<{tid}>"


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

class MetalibError(Exception):
    pass


def u16(b, off):
    return struct.unpack_from("<H", b, off)[0]


def u32(b, off):
    return struct.unpack_from("<I", b, off)[0]


def u64(b, off):
    return struct.unpack_from("<Q", b, off)[0]


def cstr(b, off, limit=None):
    """Read a NUL-terminated string at `off` (None/negative -> None)."""
    if off is None or off < 0 or off >= len(b):
        return None
    end = b.find(b"\x00", off, len(b) if limit is None else min(limit, len(b)))
    if end < 0:
        return None
    try:
        return b[off:end].decode("utf-8", "replace")
    except Exception:
        return None


def tdr_calc_checksum(data):
    """Reimplementation of tdr_calc_checksum_i @0x23c18.

    XOR of every u32 LE word of the metalib with the checksum field
    (header +0x10) zeroed; loop count = iSize>>2.
    """
    if len(data) < 12:
        return 0
    i_size = u32(data, 8)
    n = min(i_size >> 2, len(data) >> 2)
    acc = 0
    for i in range(n):
        w = struct.unpack_from("<I", data, 4 * i)[0]
        if 4 * i == 0x10:
            w = 0
        acc ^= w
    return acc & 0xFFFFFFFF


# ---------------------------------------------------------------------------
# Parser
# ---------------------------------------------------------------------------

def _rd_u32(data, off, name, errors):
    if off + 4 > len(data):
        errors.append(f"{name}: offset {off:#x} out of range")
        return 0
    return u32(data, off)


def _rd_u64(data, off, name, errors):
    if off + 8 > len(data):
        errors.append(f"{name}: offset {off:#x} out of range")
        return 0
    return u64(data, off)


def parse_tdr_metalib(data, strict=True):
    """Parse a TDR Metalib byte buffer.

    Returns a dict:
        {valid, magic, nBuild, platform, platformLabel, iSize, checksum,
         checksumOk, iVersion, iID, iXMLTagSetVer, name, counts {...},
         macros [...], macrosGroups [...], tables [ {name,id,type,...,
         entries:[...]} ], errors [...]}
    """
    res = {
        "valid": False, "errors": [], "tables": [], "macros": [],
        "macrosGroups": [],
    }
    if len(data) < HEADER_SIZE:
        res["errors"].append(
            f"too small ({len(data)} B < {HEADER_SIZE} B header)")
        return res

    magic = u16(data, 0)
    nbuild = u16(data, 2)
    platform = u32(data, 4)
    i_size = u32(data, 8)
    res.update({
        "magic": magic, "nBuild": nbuild, "platform": platform,
        "platformLabel": "64-bit" if platform == PLATFORM_64
        else ("32-bit" if platform == PLATFORM_32 else f"unknown({platform:#x})"),
        "iSize": i_size,
        "checksum": u32(data, 16),
        "iID": u32(data, H["iID"]),
        "iXMLTagSetVer": u32(data, H["iXMLTagSetVer"]),
        "iVersion": u32(data, H["iVersion"]),
        "name": cstr(data, H["szName"], H["szName"] + 128),
    })

    if magic != MAGIC:
        res["errors"].append(f"bad magic {magic:#06x} (want {MAGIC:#06x})")
    if nbuild != BUILD:
        res["errors"].append(f"unexpected nBuild {nbuild} (want {BUILD})")
    if platform not in (PLATFORM_32, PLATFORM_64):
        res["errors"].append(f"unexpected dwPlatformArch {platform:#x}")
    if i_size < HEADER_SIZE:
        res["errors"].append(f"iSize {i_size} < header {HEADER_SIZE}")
    elif i_size > len(data):
        res["errors"].append(f"iSize {i_size} > buffer {len(data)}")

    # checksum (verified for nBuild > 10 per loader @0xd21c)
    if nbuild > 10 and i_size <= len(data) and i_size >= HEADER_SIZE:
        try:
            res["checksumOk"] = (tdr_calc_checksum(data) == res["checksum"])
        except Exception as e:
            res["checksumOk"] = False
            res["errors"].append(f"checksum calc failed: {e}")

    counts = {}
    for k in ("iMaxID", "iMaxMetaNum", "iCurMetaNum", "iMaxMacroNum",
              "iCurMacroNum", "iMaxMacrosGroupNum", "iCurMacrosGroupNum",
              "iMaxValFieldDefNum", "iCurValFieldDefNum", "iFlag"):
        counts[k] = _rd_u32(data, H[k], f"header.{k}", res["errors"])
    res["counts"] = counts

    if res["errors"]:
        return res

    limit = min(i_size, len(data))

    # ---- macros (flat list) ----
    n_macros = counts["iCurMacroNum"]
    ptr_macro = _rd_u64(data, H["ptrMacro"], "header.ptrMacro", res["errors"])
    if n_macros and ptr_macro and ptr_macro < limit:
        for i in range(n_macros):
            off = ptr_macro + i * MACRO_SIZE
            if off + MACRO_SIZE > limit:
                res["errors"].append(f"macro[{i}] @{off:#x} out of range")
                break
            name_off = _rd_u64(data, off + 0, f"macro[{i}].ptrMacro", res["errors"])
            desc_off = _rd_u64(data, off + 16, f"macro[{i}].ptrDesc", res["errors"])
            i_value = _rd_u32(data, off + 8, f"macro[{i}].iValue", res["errors"])
            res["macros"].append({
                "name": cstr(data, name_off, limit) if name_off < limit else None,
                "value": i_value,
                "desc": cstr(data, desc_off, limit) if desc_off < limit else None,
            })

    # ---- macros groups (name + desc only; index maps not decoded) ----
    n_groups = counts["iCurMacrosGroupNum"]
    ptr_groups = _rd_u64(data, H["ptrMacrosGroup"], "header.ptrMacrosGroup",
                         res["errors"])
    if n_groups and ptr_groups and ptr_groups < limit:
        for i in range(n_groups):
            off = ptr_groups + i * MACROSGROUP_SIZE
            if off + MACROSGROUP_SIZE > limit:
                res["errors"].append(f"macrosGroup[{i}] @{off:#x} out of range")
                break
            grp = {
                "name": cstr(data, off + 32, off + 160),
                "desc": cstr(data, _rd_u64(data, off + 8, "g.desc", res["errors"]),
                             limit) or None,
                "curMacroCount": _rd_u32(data, off, "g.cur", res["errors"]),
                "maxMacroCount": _rd_u32(data, off + 4, "g.max", res["errors"]),
            }
            res["macrosGroups"].append(grp)

    # ---- metas ----
    n_metas = counts["iCurMetaNum"]
    ptr_meta = _rd_u64(data, H["ptrMeta"], "header.ptrMeta", res["errors"])
    meta_off = ptr_meta
    for mi in range(n_metas):
        meta = parse_one_meta(data, meta_off, limit, mi, res["errors"])
        if meta is None:
            break
        res["tables"].append(meta)
        # advance: 608-byte header + iEntriesNum * 304-byte entries;
        # cross-check with the next meta's own ptrMeta field
        nxt = meta_off + META_SIZE + meta["iEntriesNum"] * META_ENTRY_SIZE
        if mi + 1 < n_metas:
            if nxt + 8 <= limit:
                self_off = _rd_u64(data, nxt + M["ptrMeta"], f"meta[{mi+1}].ptrMeta",
                                   res["errors"])
                if self_off != nxt:
                    res["errors"].append(
                        f"meta[{mi+1}] contiguity: expected @{nxt:#x}, "
                        f"ptrMeta says @{self_off:#x} (padding or split layout)")
                    # trust the meta's own offset to stay aligned
                    nxt = self_off if self_off >= ptr_meta and self_off < limit else nxt
        meta_off = nxt

    res["valid"] = not res["errors"]
    return res


def parse_one_meta(data, off, limit, mi, errors):
    if off + META_SIZE > limit:
        errors.append(f"meta[{mi}] @{off:#x} out of range (limit {limit:#x})")
        return None
    m = {}
    for k in M_U32:
        m[k] = _rd_u32(data, off + M[k], f"meta[{mi}].{k}", errors)
    for k in M_U16:
        m[k] = u16(data, off + M[k]) if off + M[k] + 2 <= limit else 0
    ptrs = {}
    for k in M_PTR:
        ptrs[k] = _rd_u64(data, off + M[k], f"meta[{mi}].{k}", errors)
    m.update(ptrs)
    m["name"] = cstr(data, ptrs["ptrName"], limit) if ptrs["ptrName"] < limit else None
    m["desc"] = cstr(data, ptrs["ptrDesc"], limit) if ptrs["ptrDesc"] < limit else None
    m["cnName"] = (cstr(data, ptrs["ptrChineseName"], limit)
                   if ptrs["ptrChineseName"] < limit else None)
    m["typeName"] = type_name(m["iType"])
    m["index"] = mi

    entries = []
    n_ent = m["iEntriesNum"]
    ent_base = off + META_SIZE
    for ei in range(n_ent):
        eo = ent_base + ei * META_ENTRY_SIZE
        if eo + META_ENTRY_SIZE > limit:
            errors.append(f"meta[{mi}].entry[{ei}] @{eo:#x} out of range")
            break
        e = {}
        for k in E_U32:
            e[k] = _rd_u32(data, eo + E[k], f"meta[{mi}].e[{ei}].{k}", errors)
        for k in E_U16:
            e[k] = u16(data, eo + E[k]) if eo + E[k] + 2 <= limit else 0
        for k in E_U8:
            e[k] = data[eo + E[k]] if eo + E[k] < limit else 0
        eptrs = {}
        for k in E_PTR:
            eptrs[k] = _rd_u64(data, eo + E[k], f"meta[{mi}].e[{ei}].{k}", errors)
        e.update(eptrs)
        e["name"] = cstr(data, eptrs["ptrName"], limit) if eptrs["ptrName"] < limit else None
        e["desc"] = cstr(data, eptrs["ptrDesc"], limit) if eptrs["ptrDesc"] < limit else None
        e["typeName"] = type_name(e["iType"])
        entries.append(e)
    m["entries"] = entries
    return m


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main(argv):
    if "--selftest" in argv:
        return selftest()
    if not argv:
        print(__doc__)
        return 2
    path = argv[0]
    data = open(path, "rb").read()
    res = parse_tdr_metalib(data)
    if "--json" in argv:
        i = argv.index("--json")
        out = argv[i + 1]
        with open(out, "w") as f:
            json.dump(res, f, indent=1)
        print(f"wrote {out}")
    else:
        print(json.dumps(res, indent=1))
    return 0 if res["valid"] else 1


def selftest():
    """Build a synthetic metalib in memory (mirroring tdr_init_lib +
    tdr_save_metalib semantics) and parse it back.

    We cannot call the real tdr_init_lib, so we construct the buffer the
    way the library lays it out: 360 B header, then metas (608 B each +
    entries), then string area; ptr fields are base-relative offsets.
    This proves the parser walks the documented layout.
    """
    import io

    def make_lib():
        # strings first: reserve area after header
        meta_name = b"star_res|ResLootSchemeStruct\x00"
        entry_names = [b"iLootId\x00", b"iPoolId\x00", b"szName\x00"]
        lib_name = b"test_star_res.tdr\x00"
        n_metas = 1
        n_entries = 3
        # layout: header(360) + meta(608) + 3*304 + strings
        body = bytearray()
        meta_off = HEADER_SIZE
        body += b"\x00" * (META_SIZE + n_entries * META_ENTRY_SIZE)
        str_off = HEADER_SIZE + META_SIZE + n_entries * META_ENTRY_SIZE
        # place strings
        cur = str_off
        def put(s):
            nonlocal cur
            body[cur - HEADER_SIZE:cur - HEADER_SIZE + len(s)] = s
            r = cur
            cur += len(s)
            return r
        off_name = put(meta_name)
        offs_entries = [put(e) for e in entry_names]
        off_libname = put(lib_name)

        buf = bytearray()
        buf += b"\x00" * HEADER_SIZE
        buf += body
        total = len(buf)
        # header
        struct.pack_into("<HHI", buf, 0, MAGIC, BUILD, PLATFORM_64)
        struct.pack_into("<I", buf, 8, total)          # iSize
        struct.pack_into("<I", buf, H["iID"], 7)       # iID
        struct.pack_into("<I", buf, H["iXMLTagSetVer"], 1)
        struct.pack_into("<I", buf, H["iVersion"], 3)
        struct.pack_into("<I", buf, H["iCurMetaNum"], n_metas)
        struct.pack_into("<I", buf, H["iCurMacroNum"], 0)
        struct.pack_into("<Q", buf, H["ptrMeta"], meta_off)
        struct.pack_into("<Q", buf, H["ptrStrBuf"], str_off)
        struct.pack_into("<I", buf, H["iFreeStrBufSize"], cur - str_off)
        buf[H["szName"]:H["szName"] + len(lib_name)] = lib_name
        # meta
        mo = meta_off
        struct.pack_into("<I", buf, mo + M["uFlags"], 0)
        struct.pack_into("<I", buf, mo + M["iID"], 1)
        struct.pack_into("<I", buf, mo + M["iType"], 1)   # struct
        struct.pack_into("<I", buf, mo + M["iMemSize"], 0x40)
        struct.pack_into("<I", buf, mo + M["iEntriesNum"], n_entries)
        struct.pack_into("<Q", buf, mo + M["ptrMeta"], mo)
        struct.pack_into("<Q", buf, mo + M["ptrName"], off_name)
        # entries
        for ei, (en, off_e) in enumerate(zip(entry_names, offs_entries)):
            eo = mo + META_SIZE + ei * META_ENTRY_SIZE
            struct.pack_into("<I", buf, eo + E["iID"], 100 + ei)
            struct.pack_into("<I", buf, eo + E["iVersion"], 1)
            struct.pack_into("<I", buf, eo + E["iType"], (7, 8, 21)[ei])  # int/uint/string
            struct.pack_into("<I", buf, eo + E["iCount"], 1)
            struct.pack_into("<Q", buf, eo + E["ptrName"], off_e)
            struct.pack_into("<Q", buf, eo + E["ptrMeta"], mo)
        # checksum last
        struct.pack_into("<I", buf, 16, tdr_calc_checksum(bytes(buf)))
        return bytes(buf)

    lib = make_lib()
    res = parse_tdr_metalib(lib)
    print(json.dumps(res, indent=1))
    ok = (res["valid"] and res["magic"] == MAGIC and res["nBuild"] == BUILD
          and res["checksumOk"] is True
          and len(res["tables"]) == 1
          and res["tables"][0]["name"] == "star_res|ResLootSchemeStruct"
          and len(res["tables"][0]["entries"]) == 3
          and res["tables"][0]["entries"][0]["name"] == "iLootId"
          and res["tables"][0]["entries"][2]["typeName"] == "string")
    print("SELFTEST", "PASS" if ok else "FAIL")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
