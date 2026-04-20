#!/usr/bin/env python3
"""Round-15: extract SeriaCodeGen config type field names from il2cpp metadata.

global-metadata.dat (58,401,572 B, FMN! v31, Riot-modified), all verified:
  - typeDefinitions @0x31AC9CC size 0x4150B0 (4,280,496 B) -> 48,642 x 88 B
    (stride 0x58 = loader's own smaddl in MetadataCache::Initialize; count ==
     sum of the 88 image typeCount fields == 48,642).
    Entry layout (88 B) — FINAL (unified 2026-08-09, plan 3.4; supersedes the
    old methodStart@48 / token@72 claims, see docs/28-errata.md E16):
      nameIndex@0, namespaceIndex@4, byvalTypeIndex@8, byrefTypeIndex@12,
      declaringTypeIndex@16, parentIndex@20, elementTypeIndex@24, ???@28,
      fieldStart@32 (i32, -1 = no fields), methodStart@36 (i32, double-spaced
      method rid = 2*idx+1), eventStart@40, propertyStart@44,
      @48..@60 -> mostly -1, counts u16: methodCount@64, propertyCount@66,
      fieldCount@68 (sum over all types == 483,741 == fields-table size
      exactly), eventCount@70, @72/@74/@76/@78 = further Riot u16 count/tail
      fields, flags@80 (0xC00), token@84 = 0x02000000 | (typeIndex+1).
  - fields @0x2933F74 size 0x58935C (5,804,892 B) -> 483,741 x 12 B
    Il2CppFieldDefinition = {nameIndex i32, typeIndex i32, token u32}
    (field0 token 0x04000001; names '<name>i__Field' ... verified).
  - metadata name string table @0x20621c (ENCRYPTED at rest), nameIndex =
    BYTE OFFSET into the table. Runtime getter 0x3b95a08 (libil2cpp.so)
    decrypts lazily per offset and caches by bitmap:
        state  = ((0xd3f754 * (0x20621c + idx)) & 0xFFFFFFFF) % 0x11D53
        ks[i]  = ksTable[(((state & 0xF) << 4) + i) & 0xFF]
        ksTable= 256 B @ libil2cpp.so file 0xCDAF980 (.data vaddr 0xcdb7980)
        plain  = cipher ^ ks, until NUL (decrypted in place)
    Verified: idx0='Assembly-CSharp', idx16='', idx20='Assembly-CSharp.dll',
    idx40='<Module>', far offsets resolve game classes (UIBattlePiXiuTipInfo,
    RiftMapBtnAnchorCfg, ZipEntry, ContactPair ...).

Outputs: type-fields.json  {type_name: {ns, type_index, field_count, fields,
                                          ftypes}}
         field-map.md      parser docs + fFFBA alignment recipe
"""
import json
import re
import struct
import sys
from pathlib import Path

ROOT = Path("<research-workspace>")
# baseline: corpus/basic-data/external-device-20260812 (resource 7.2.46.104, 2026-08-12)
META = ROOT / "corpus/basic-data/external-device-20260812" \
              / "files/il2cpp/Metadata/global-metadata.dat"
SO = ROOT / "work/native-container-audit/decompressed-arm64/libil2cpp.so"
OUTDIR = ROOT / "work/ai-cfg-recovery-2026-08-04"

TYPE_DEFS_OFF = 0x31AC9CC
TYPE_DEFS_SIZE = 0x4150B0
TYPE_DEF_STRIDE = 88
FIELDS_OFF = 0x2933F74
FIELDS_SIZE = 0x58935C
FIELD_STRIDE = 12

STR_BASE = 0x20621C        # string table base (encrypted at rest)
STR_MULT = 0xD3F754        # PRNG multiplier (header[0x20] after in-place decrypt)
STR_MOD = 0x11D53
KS_FILE = 0xCDB7000 + 0x980 - 0x8000   # keystream table file offset


class StringTable:
    """Lazy per-offset decryptor mirroring runtime getter 0x3b95a08."""

    def __init__(self, d, ks):
        self.d = d
        self.ks = ks
        self.cache = {}

    def get(self, idx):
        if idx is None or idx < 0:
            return None
        if idx in self.cache:
            return self.cache[idx]
        pos = STR_BASE + idx
        if pos < STR_BASE or pos + 1 >= len(self.d):
            self.cache[idx] = None
            return None
        state = ((STR_MULT * (STR_BASE + idx)) & 0xFFFFFFFF) % STR_MOD
        nib = (state & 0xF) << 4
        out = bytearray()
        for i in range(512):
            p = self.d[pos + i] ^ self.ks[(nib + i) & 0xFF]
            if p == 0:
                break
            out.append(p)
        if not out or not all(0x20 <= c < 0x7F for c in out):
            self.cache[idx] = None
            return None
        s = out.decode("ascii")
        self.cache[idx] = s
        return s


def main():
    d = META.read_bytes()
    ks = open(SO, "rb").read()[KS_FILE:KS_FILE + 256]
    assert len(ks) == 256
    st = StringTable(d, ks)

    n_td = TYPE_DEFS_SIZE // TYPE_DEF_STRIDE
    n_fl = FIELDS_SIZE // FIELD_STRIDE
    print(f"typeDefs={n_td} fields={n_fl}")

    # typeDefs
    tds = []
    for i in range(n_td):
        e = d[TYPE_DEFS_OFF + i * TYPE_DEF_STRIDE:
              TYPE_DEFS_OFF + (i + 1) * TYPE_DEF_STRIDE]
        tds.append({
            "nameIndex": struct.unpack_from("<i", e, 0)[0],
            "nsIndex": struct.unpack_from("<i", e, 4)[0],
            "fieldStart": struct.unpack_from("<i", e, 32)[0],
            "methodStart": struct.unpack_from("<i", e, 36)[0],
            "fieldCount": struct.unpack_from("<H", e, 68)[0],
            "token": struct.unpack_from("<I", e, 84)[0],
        })

    # fields
    fname = [None] * n_fl
    ftype = [None] * n_fl
    for j in range(n_fl):
        e = d[FIELDS_OFF + j * FIELD_STRIDE:
              FIELDS_OFF + (j + 1) * FIELD_STRIDE]
        fname[j] = struct.unpack_from("<i", e, 0)[0]
        ftype[j] = struct.unpack_from("<i", e, 4)[0]

    # sanity strings
    for idx in (0, 16, 20, 40, 145, 160):
        print(f"  str[{idx}] = {st.get(idx)!r}")

    total_fcount = sum(t["fieldCount"] for t in tds)
    print(f"sum fieldCount = {total_fcount} (fields table {n_fl})")

    # FINAL-layout invariant (2026-08-09, plan 3.4): fieldCount lives at u16@68
    # (NOT @84) and the type token at u32@84 (NOT @72); methodStart is at @36.
    assert total_fcount == n_fl, "fieldCount@68 must sum to the fields-table size"
    assert tds[0]["token"] == 0x02000001, "token@84 of type 0 must be 0x02000001"
    assert tds[0]["fieldStart"] == -1, "type 0 (<Module>) must have no fields"

    out = {}
    config_re = re.compile(r"(BaseHeroScData|HeroProgramme|EquipPrograme|CSRecommendEquip"
                           r"|CSRecommendRune|CSRuneItem|.*ScData|.*Config|.*Struct)")
    n_cfg = 0
    for i, t in enumerate(tds):
        name = st.get(t["nameIndex"])
        if not name:
            continue
        ns = st.get(t["nsIndex"]) or ""
        fs, cnt = t["fieldStart"], t["fieldCount"]
        fields = []
        ftypes = []
        if fs >= 0 and cnt:
            for j in range(fs, min(fs + cnt, n_fl)):
                nm = st.get(fname[j])
                fields.append(nm)
                ftypes.append(ftype[j])
        entry = {
            "ns": ns,
            "type_index": i,
            "field_count": cnt,
            "fields": fields,
            "ftypes": ftypes if cnt else [],
        }
        if name in out:
            out[name]["type_indices"] = out[name].get("type_indices", [out[name]["type_index"]]) + [i]
            continue
        out[name] = entry
        if config_re.match(name):
            n_cfg += 1

    print(f"named types: {len(out)}  config-class matches: {n_cfg}")
    outp = OUTDIR / "type-fields.json"
    with open(outp, "w") as f:
        json.dump(out, f, separators=(",", ":"))
    print(f"wrote {outp} ({outp.stat().st_size:,} bytes)")

    # spotlight the round-15 targets
    for nm in ("BaseHeroScData", "HeroProgramme", "EquipPrograme",
               "CSRecommendEquip", "CSRecommendEquipItem",
               "CSRecommendRune", "CSRecommendRuneItem", "CSRuneItem",
               "ActorCfgData", "ParsedRecordItem",
               "EquipProgrammeResObject", "EquipResObject",
               "RuneResObject", "RunePageResObject", "RuneRecommendResObject",
               "ChampionResObject", "HeroBaseAttrData",
               "ForgeHeroSetting", "SystemRecommendEquip",
               "BattleShopResObject_EquipSchemeConfig"):
        e = out.get(nm)
        if e:
            print(f"  {nm:42s} ns={e['ns']:22s} cnt={e['field_count']:3d} "
                  f"{e['fields'][:10]}")


if __name__ == "__main__":
    sys.exit(main())
