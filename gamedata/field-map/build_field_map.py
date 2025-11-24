#!/usr/bin/env python3
"""LData field-map builder (slice: LDataFieldMap).

Builds FIELD-MAP.md / README.md / field-map.json for the decrypted LData
numeric tables in work/ai-cfg-recovery-2026-08-04/full/ plus the decrypted
WorkFlow/Skill (53) and WorkFlow/Buff (423) raw files.

Evidence sources (S1..S5):
  S1 il2cpp class field lists        type-fields.json (round 15/16, field-map.md §2)
  S2 Lua-facing class props          feproj-extended-20260814/bindings/dispatcher-881-cases.tsv
  S3 record-type vocabulary          logic-docs/03-flow-format.md §3/§4 + modding-docs/23-flow-grammar.md §3.4
  S4 Lua decompile field accesses    lua-decompile-20260814 (FlowAction/FlowEvaluator/WorkFlowUtils/...)
  S5 Lua binding API index           lua-api-reference-20260814/API-INDEX.md, BATTLE-API.md

Annotation model (follows semantic_label.py / field-map.md §4 positional recipe):
  - schema items (EquipResObject/Rune*ResObject/...): record i -> class field i,
    version-aware (v0 files carry a leading [1:0] header-prefix record).
    Positions whose type AND value are constant across all items of the class are
    container/envelope records -> S3 structural label (+ positional class-field target [I]).
  - flow items (schema=None, kind=flow): record-type vocabulary (S3).
  - heroes (ActorCfgData native records): type-level width/semantic annotation [INFERENCE],
    per-field names need the native struct (documented gap).
  - WorkFlow/Skill + WorkFlow/Buff raw files: parsed with fffba_parse; records annotated
    with the S3 container vocabulary.
"""
import json, os, re, sys, collections, csv

WD   = "<research-workspace>/work/ai-cfg-recovery-2026-08-04"
OUT  = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, WD)
from fffba_parse import parse_bytes, TYPE_SIZES

# ---------------------------------------------------------------- S3 vocabulary
# logic-docs/03-flow-format.md §3 (container-header records) + §4.1 (body vocabulary),
# superseded-by modding-docs/23-flow-grammar.md §3.4 (authoritative). [V]=verified
# alignment, [I]=inferred semantic.
S3_CONTAINER = {
    0x01: ("small count/flag (0/1) [V]", "high"),
    0x04: ("count/tag (40 = flow payload tag) [V]", "high"),
    0x05: ("header terminator / zero [V]", "high"),
    0x0c: ("small int (duration/tick) [V]", "medium"),
    0x0f: ("small int (0x010005 motif) [V]", "medium"),
    0x10: ("block-start marker (0) [V]", "high"),
    0x13: ("id — node/instance id (insId) or per-flow/config-type id [V]", "high"),
    0x17: ("id/count [V]", "medium"),
    0x1b: ("paired id — follows 0x13; 0x18A8=6312 config-type id in headers [V]", "high"),
    0x1c: ("config-type id variant (f011 v0) [V]", "high"),
    0x22: ("resource/string-pool reference (0x080xxx-0x10xxxx space) [V]", "high"),
    0x26: ("composite int (0x0001 0x0005) [V]", "medium"),
    0x28: ("small int [V]", "medium"),
    0x2a: ("header tail (11) [V]", "high"),
    0x2e: ("int [V]", "medium"),
    0x2f: ("5-byte composite [V]", "medium"),
    0x33: ("int [V]", "medium"),
    0x38: ("int [V]", "medium"),
    0x39: ("header prefix (v0, 432/0x4146/0x48AA1B) [V]", "high"),
    0x41: ("48-bit header id (v0, 0x000100D8) [V]", "high"),
    0x47: ("48-bit hash [V]", "medium"),
    0x48: ("48-bit asset/object hash — asset binding [V]", "high"),
    0x4b: ("int [V]", "medium"),
    0x50: ("per-flow count/value [V]", "medium"),
    0x5e: ("40-bit hash [V]", "medium"),
    0x5f: ("32-bit asset-path hash + trailing 0 (ASSET_* binding) [V]", "high"),
    0x6f: ("32-bit hash (asset/var binding) [V]", "high"),
    0x70: ("node-record variant of 0xd0/0xe0 [I]", "inference"),
    0x77: ("header prefix (v0) [V]", "high"),
    0x79: ("40-bit hash [V]", "medium"),
    0x7c: ("node-record variant of 0xd8/0xe8 [I]", "inference"),
    0x80: ("int [I]", "inference"),
    0x83: ("56-bit hash [V]", "medium"),
    0x84: ("count (0x0A recurs after hash records / trailer) [V]", "high"),
    0x93: ("size/count (0x178/0x240) [V]", "medium"),
    0x95: ("4-byte value [V]", "medium"),
    0xa0: ("int [V]", "medium"),
    0xb0: ("count (1) [V]", "medium"),
    0xd0: ("node-type variant (QuicksilverSash) [I]", "inference"),
    0xd8: ("node-type variant (QuicksilverSash) [I]", "inference"),
    0xe0: ("node-type variant (CosmicDrive) [I]", "inference"),
    0xe8: ("node-type variant (CosmicDrive) [I]", "inference"),
    0xf0: ("block/section terminator [V]", "high"),
    0xf3: ("int (0x00000704) [I]", "inference"),
}

def s3_sem(t):
    return S3_CONTAINER.get(t)

# ---------------------------------------------------------------- S1 class fields
TF = json.load(open(os.path.join(WD, "type-fields.json")))

CLASS_FIELDS = {}
for name in ["EquipResObject", "EquipProgrammeResObject", "RuneResObject",
             "RunePageResObject", "RuneRecommendResObject", "HeroBaseAttrData",
             "BaseHeroScData", "HeroProgramme", "SkillResObject", "BuffResObject",
             "BuffLevelData", "SkillLevelResObject", "ChampionResObject",
             "ParsedRecordItem", "ActorCfgData", "EquipResObject_EquipSkill",
             "EquipResObject_SkillAttr", "RuneSerialResObject"]:
    e = TF.get(name)
    if e and e.get("fields"):
        CLASS_FIELDS[name] = e["fields"]
    else:
        CLASS_FIELDS[name] = []

# ---------------------------------------------------------------- S2 Lua props
TSV = os.path.join(WD, "..", "feproj-extended-20260814", "bindings", "dispatcher-881-cases.tsv")
LUA_PROPS = {}
with open(TSV) as f:
    for r in csv.reader(f, delimiter="\t"):
        if len(r) < 9 or not r[6]:
            continue
        props = [p for p in (r[7] or "").split(";") if p]
        if props:
            LUA_PROPS.setdefault(r[6], props)
# normalize the "* >" template names
for k in list(LUA_PROPS):
    if k.endswith("* >"):
        LUA_PROPS[k[:-3]] = LUA_PROPS.pop(k)

# ---------------------------------------------------------------- string / numeric field heuristics
RE_STR   = re.compile(r"(name|desc|desc_|icon|path|tip|title|audio|voice|url|asset|headbar|label|picture|portrait|frameBg|model|sound|bank|video)", re.I)
RE_BOOL  = re.compile(r"^(is|b|can|enable|show|disable|need|ignore|support|keep|use|hide|allow|require|force|exist|reset|special|auto|exposed|display)", re.I)
RE_IDCNT = re.compile(r"(id$|Id$|num|count|level|type|group|priority|index|sort|slot|max|cd|rank|slotIndex|serial)", re.I)

def field_kind(name):
    if RE_BOOL.search(name): return "bool"
    if RE_STR.search(name):  return "string"
    return "numeric"

def val_shape(v, t):
    if isinstance(v, str): return "blob"
    if isinstance(v, int):
        if v >= 0x80000:  return "poolref"
        if v <= 1:        return "flag"
        return "int"
    return "other"

# ---------------------------------------------------------------- load full JSONs
heroes = json.load(open(os.path.join(WD, "full", "heroes.json")))
equips = json.load(open(os.path.join(WD, "full", "equips.json")))
runes  = json.load(open(os.path.join(WD, "full", "runes.json")))
roster = json.load(open(os.path.join(WD, "full", "heroes-roster.json")))
stats  = json.load(open(os.path.join(WD, "full", "equip-rune-stats.json")))

def ordered_fields(fields):
    """All fields-dict entries in record order (dict insertion order: tagged
    container_N records first, then payload records — labeled class-field keys
    or field_N/unknown_N fallbacks)."""
    items = []
    for k, f in fields.items():
        m = re.match(r"(container|field)_(\d+)", k)
        if m:
            items.append((m.group(1), int(m.group(2)), k, f.get("t"), f.get("v")))
        else:
            items.append(("labeled", -1, k, f.get("t"), f.get("v")))
    items.sort(key=lambda x: (0 if x[0] == "container" else 1, x[1], x[2]))
    return [(k, t, v) for (_, _, k, t, v) in items]

def is_v0(e):
    rr = e.get("raw_records") or []
    return bool(rr) and rr[0][0] == 1

# ---------------------------------------------------------------- per-class position analysis
SCHEMA_CLASS = {
    "EquipResObject": "EquipResObject",
    "EquipProgrammeResObject": "EquipProgrammeResObject",
    "RuneResObject": "RuneResObject",
    "RunePageResObject": "RunePageResObject",
    "RuneRecommendResObject": "RuneRecommendResObject",
}

def is_fallback_key(k):
    return k.startswith("field_") or k.startswith("unknown_") or k.startswith("container_")

def item_entries(e):
    """(key, t, v) list for an item, using its own fields dict in order."""
    return ordered_fields(e.get("fields", {}))

def analyze_class(sch, items):
    """Per-class position model. Container records are tagged by the item's own
    container_records (full_extract.py round-16 recipe); payload records carry
    the item's class-field label (or field_N fallback). We aggregate per
    position: modal type, modal key, constancy, and the payload-field index."""
    cf = CLASS_FIELDS.get(sch, [])
    by_ver = {}
    for e in items:
        by_ver.setdefault("v0" if is_v0(e) else "v1", []).append(e)
    out = {"class_fields": cf, "n_items": len(items), "versions": {}}
    for ver, sub in by_ver.items():
        n = len(sub)
        entries = [item_entries(e) for e in sub]
        ncont_list = [e.get("container_records", 0) or 0 for e in sub]
        maxlen = max((len(f) for f in entries), default=0)
        positions = []
        for i in range(maxlen):
            reach = [(f, nc) for f, nc in zip(entries, ncont_list) if i < len(f)]
            ts = collections.Counter(f[i][1] for f, _ in reach)
            vs = [f[i][2] for f, _ in reach]
            keys = collections.Counter(f[i][0] for f, _ in reach)
            top_t, top_n = ts.most_common(1)[0]
            nr = len(reach)
            tfrac = top_n / nr if nr else 0
            vcnt = collections.Counter(str(v) for v in vs)
            modal_v, modal_n = vcnt.most_common(1)[0]
            vfrac = modal_n / nr if nr else 0
            # how many items treat this position as container vs payload
            n_as_container = sum(1 for f, nc in reach if i < nc)
            n_as_payload = nr - n_as_container
            # modal key name over ALL items at the position
            modal_key, modal_key_n = keys.most_common(1)[0]
            # modal payload key (items that treat this position as payload)
            payload_labels = collections.Counter(f[i][0] for f, nc in reach if i >= nc)
            top_payload_key, top_payload_n = (payload_labels.most_common(1)[0]
                                              if payload_labels else (None, 0))
            structural = s3_sem(top_t)
            if modal_key.startswith("container_"):
                if structural:
                    label = f"container: {structural[0]}"
                    conf = "high"
                    ev = "S3"
                    note = (f"tagged container record in {modal_key_n}/{nr} items (full_extract.py "
                            f"container_prefix); type t{top_t} x{top_n}/{nr}, modal value {modal_v} "
                            f"x{modal_n}/{nr}; payload label at this position: "
                            f"{top_payload_key!r} ({top_payload_n}x) [I]")
                else:
                    label = f"container record (type t{top_t:02x} not in S3 vocabulary)"
                    conf = "high"
                    ev = "S3+TYPE_SIZES"
                    note = (f"tagged container record in {modal_key_n}/{nr} items; width "
                            f"{TYPE_SIZES.get(top_t, '?')}B from TYPE_SIZES; type-level semantic "
                            f"unknown (gap); modal value {modal_v} x{modal_n}/{nr}")
            elif not is_fallback_key(modal_key):
                kind = field_kind(modal_key)
                shapes = collections.Counter(val_shape(v, top_t) for v in vs)
                top_shape, top_ns = shapes.most_common(1)[0]
                sf = top_ns / len(vs) if vs else 0
                if (kind == "string" and top_shape == "poolref" and sf >= 0.9) or \
                   (kind == "bool" and top_shape == "flag" and sf >= 0.9) or \
                   (kind == "numeric" and top_shape in ("int", "flag") and sf >= 0.9):
                    conf = "high"
                elif sf >= 0.6:
                    conf = "medium"
                else:
                    conf = "inference"
                label = f"class-field: {modal_key}"
                ev = "S1" + ("+S2" if modal_key in set(LUA_PROPS.get(sch, [])) else "")
                note = (f"payload position labeled {modal_key} by full_extract.py "
                        f"({modal_key_n}/{nr} items); type t{top_t} x{top_n}/{nr}; "
                        f"modal value {modal_v} x{modal_n}/{nr}; value shapes {dict(shapes)}")
            elif structural:
                label = f"record-type: {structural[0]}"
                conf = structural[1]
                ev = "S3"
                note = (f"fallback-key ({modal_key}) record; type-level S3 semantic; "
                        f"type t{top_t} x{top_n}/{nr}, modal value {modal_v} x{modal_n}/{nr}")
            else:
                label = "beyond class field list"
                conf = "inference"
                ev = "-"
                note = (f"position {i}: modal key {modal_key} ({modal_key_n}/{nr}); "
                        f"no S3 semantic for t{top_t}")
            positions.append({
                "pos": i, "type": top_t, "type_frac": round(tfrac, 3),
                "value_const_frac": round(vfrac, 3), "modal_value": modal_v,
                "n_as_container": n_as_container, "n_as_payload": n_as_payload,
                "label": label, "confidence": conf, "evidence": ev,
                "note": note, "sample_values": vs[:5],
                "class_field": modal_key if not is_fallback_key(modal_key) else None,
                "structural": structural[0] if structural else None,
                "type_width": TYPE_SIZES.get(top_t),
            })
        out["versions"][ver] = {"n": n, "positions": positions}
    return out

# collect schema items
sch_items = collections.defaultdict(list)
for e in equips:
    if e.get("schema") in SCHEMA_CLASS:
        sch_items[e["schema"]].append(e)
for e in runes["runes"] + runes["runes_page"]:
    if e.get("schema") in SCHEMA_CLASS:
        sch_items[e["schema"]].append(e)

classes_analysis = {}
for sch, items in sorted(sch_items.items()):
    classes_analysis[sch] = analyze_class(sch, items)

# ---------------------------------------------------------------- flow items
flow_items = [e for e in equips if not e.get("schema")] + \
             [e for e in runes["runes"] + runes["runes_page"] if not e.get("schema")]
flow_kinds = collections.Counter(e.get("kind") for e in flow_items)

# ---------------------------------------------------------------- heroes
hero_member_count = sum(len(h["members"]) for h in heroes["heroes"].values())
hero_bsd_count = sum(len(h.get("base_sc_data", [])) for h in heroes["heroes"].values())
hero_types = collections.Counter()
for h in heroes["heroes"].values():
    for m in h["members"]:
        for rec in m.get("records", []):
            hero_types[rec[0]] += 1
for e in heroes.get("unmapped_base_sc_data", []):
    for rec in e.get("records", []):
        hero_types[rec[0]] += 1

# ---------------------------------------------------------------- Skill/Buff raw files
VD = os.path.join(WD, "decrypted-samples", "vfs-extracted")
def parse_dir(pattern):
    files = sorted(f for f in os.listdir(VD) if pattern in f)
    out = []
    for fn in files:
        m = re.match(r"([0-9a-f]{32})\.vfs__(\d+)_(.*)", fn)
        vfs, idx, path = m.group(1), m.group(2), m.group(3).replace("_", "/")
        data = open(os.path.join(VD, fn), "rb").read()
        p = parse_bytes(data)
        out.append({"vfs": vfs, "vfs_idx": int(idx), "path": path, "size": len(data),
                    "records": [[t, v.hex()] for t, v in p.get("records", [])],
                    "types": [t for t, _ in p.get("records", [])],
                    "parse_ok": p.get("ok"), "parse_errors": p.get("errors", []),
                    "record_count": p.get("record_count", 0)})
    return out

skill_raw = parse_dir("_WorkFlow_Skill_")
buff_raw  = parse_dir("_WorkFlow_Buff_")

# record-type census for skill/buff
skill_types = collections.Counter(t for e in skill_raw for t in e["types"])
buff_types  = collections.Counter(t for e in buff_raw for t in e["types"])

# ---------------------------------------------------------------- coverage
cov = {"equips_runes_schema": {"total": 0, "annotated": 0, "labeled_items": 0, "total_items": 0},
       "flow": {"total": 0, "annotated": 0},
       "heroes": {"total": 0, "annotated": 0, "width_only": 0},
       "skill_raw": {"total": 0, "annotated": 0},
       "buff_raw": {"total": 0, "annotated": 0}}

def is_fallback_key(k):
    return k.startswith("field_") or k.startswith("unknown_") or k.startswith("container_")

for sch, items in sch_items.items():
    for e in items:
        cov["equips_runes_schema"]["total_items"] += 1
        if e.get("labeled_records", 0) > 0:
            cov["equips_runes_schema"]["labeled_items"] += 1
        for (k, t, v) in item_entries(e):
            cov["equips_runes_schema"]["total"] += 1
            if k.startswith("container_"):
                # tagged container record: structural semantic for the record type
                if s3_sem(t) or t in TYPE_SIZES:
                    cov["equips_runes_schema"]["annotated"] += 1
            elif not is_fallback_key(k):
                # class-field label already attached by full_extract.py (S1)
                cov["equips_runes_schema"]["annotated"] += 1
            elif s3_sem(t):
                # fallback-key payload record whose type has S3 semantic
                cov["equips_runes_schema"]["annotated"] += 1

for e in flow_items:
    for (k, t, v) in ordered_fields(e.get("fields", {})):
        cov["flow"]["total"] += 1
        if s3_sem(t):
            cov["flow"]["annotated"] += 1

for t, n in hero_types.items():
    cov["heroes"]["total"] += n
    if s3_sem(t):
        cov["heroes"]["annotated"] += n
    elif t in TYPE_SIZES:
        cov["heroes"]["width_only"] += n

for e in skill_raw:
    for t in e["types"]:
        cov["skill_raw"]["total"] += 1
        if s3_sem(t):
            cov["skill_raw"]["annotated"] += 1
for e in buff_raw:
    for t in e["types"]:
        cov["buff_raw"]["total"] += 1
        if s3_sem(t):
            cov["buff_raw"]["annotated"] += 1

tot = sum(v["total"] for v in cov.values())
ann = sum(v["annotated"] for v in cov.values())
cov["TOTAL"] = {"total": tot, "annotated": ann,
                "pct": round(100.0 * ann / tot, 1) if tot else 0}

# ---------------------------------------------------------------- emit JSON
out = {
    "meta": {
        "task": "LData field annotation (LDataFieldMap slice)",
        "date": "2026-08-15",
        "version": "7.2.0.2460/7246064, resource 7.2.55.126, arm64-v8a",
        "inputs": [
            "work/ai-cfg-recovery-2026-08-04/full/heroes.json",
            "work/ai-cfg-recovery-2026-08-04/full/heroes-roster.json",
            "work/ai-cfg-recovery-2026-08-04/full/equips.json",
            "work/ai-cfg-recovery-2026-08-04/full/runes.json",
            "work/ai-cfg-recovery-2026-08-04/full/equip-rune-stats.json",
            "work/ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted/ (WorkFlow/Skill x53, WorkFlow/Buff x423)",
        ],
        "evidence_sources": {
            "S1": "il2cpp metadata field lists — work/ai-cfg-recovery-2026-08-04/type-fields.json (round 15/16, field-map.md §2)",
            "S2": "Lua-facing class props — work/feproj-extended-20260814/bindings/dispatcher-881-cases.tsv (881-case binding table)",
            "S3": "record-type vocabulary — logic-docs/03-flow-format.md §3/§4.1 + modding-docs/23-flow-grammar.md §3.4",
            "S4": "Lua decompiles — work/lua-decompile-20260814/ (FlowAction/FlowEvaluator/WorkFlowUtils/PathHashMap/...)",
            "S5": "binding API index — work/lua-api-reference-20260814/API-INDEX.md + BATTLE-API.md",
        },
    },
    "inventory": {
        "full_json_files": {
            "heroes.json": {"heroes": len(heroes["heroes"]), "actor_cfg_members": hero_member_count,
                            "base_sc_data_members": hero_bsd_count,
                            "unmapped_base_sc_data": len(heroes.get("unmapped_base_sc_data", []))},
            "heroes-roster.json": {"heroes": len(roster), "vfs_members": sum(len(v) for v in roster.values())},
            "equips.json": {"items": len(equips),
                            "by_kind": dict(collections.Counter(e.get("kind") for e in equips))},
            "runes.json": {"runes": len(runes["runes"]), "runes_page": len(runes["runes_page"]),
                           "by_kind": dict(collections.Counter(e.get("kind") for e in runes["runes"] + runes["runes_page"]))},
            "equip-rune-stats.json": stats,
        },
        "flow_items": {"count": len(flow_items), "kinds": dict(flow_kinds)},
        "skill_raw_files": {"count": len(skill_raw), "avg_records": round(sum(e["record_count"] for e in skill_raw)/max(1,len(skill_raw)), 1),
                            "types": dict(skill_types.most_common())},
        "buff_raw_files": {"count": len(buff_raw), "avg_records": round(sum(e["record_count"] for e in buff_raw)/max(1,len(buff_raw)), 1),
                           "types": dict(buff_types.most_common())},
    },
    "classes": classes_analysis,
    "record_type_vocabulary": {str(k): {"width": TYPE_SIZES.get(k), "semantic": v[0], "confidence": v[1]}
                                for k, v in sorted(S3_CONTAINER.items())},
    "lua_props_by_class": {k: v for k, v in sorted(LUA_PROPS.items())
                           if k in ("EquipResObject", "SkillResObject", "BuffResObject",
                                    "BuffLevelData", "ActorBuff", "ActorSkill", "SkillFlow")},
    "hero_record_types": dict(hero_types.most_common()),
    "coverage": cov,
}
with open(os.path.join(OUT, "field-map.json"), "w") as f:
    json.dump(out, f, indent=1, ensure_ascii=False)

# ---------------------------------------------------------------- skill/buff file list
with open(os.path.join(OUT, "skill-buff-files.json"), "w") as f:
    json.dump({"WorkFlow_Skill": skill_raw, "WorkFlow_Buff": buff_raw}, f, indent=1, ensure_ascii=False)

# ---------------------------------------------------------------- doc generation
def pos_row(p, v0_shift=False):
    cf = p.get("class_field") or ""
    st = p.get("structural") or ""
    if p["label"].startswith("container"):
        if st:
            lab = f"container · {st}"
        else:
            lab = f"container recordtype 0x{p['type']:02x}  S3 "
        conf = " (S3 )"
    elif p["label"].startswith("class-field"):
        lab = f"{cf}"
        conf = {"high": "", "medium": "", "inference": " [I]"}[p["confidence"]]
    elif p["label"].startswith("record-type"):
        lab = p["label"].replace("record-type: ", " · ")
        conf = {"high": "", "medium": "", "inference": " [I]"}[p["confidence"]]
    else:
        lab = "— ()"
        conf = "—"
    return lab, conf

def class_md(sch, an, spot):
    cf = an["class_fields"]
    s2 = LUA_PROPS.get(sch, [])
    lines = []
    lines.append(f"### {sch} — {an['n_items']} ")
    lines.append("")
    lines.append(f"- S1 il2cpp type-fields.json {len(cf)} `{'`, `'.join(cf)}`")
    if s2:
        lines.append(f"- Lua  propsS2 dispatcher-881-cases.tsv {len(s2)}`{'`, `'.join(s2)}`")
    for ver, v in an["versions"].items():
        lines.append(f"- **{ver} **{v['n']}  +  j →  j"
                     "full_extract.py round-16 recipev0  [1:0] ")
        lines.append("")
        lines.append("| pos | type(0x..) |  |  |  |  |  |")
        lines.append("|---|---|---|---|---|---|---|")
        for p in v["positions"]:
            lab, conf = pos_row(p)
            lines.append(f"| {p['pos']} | {p['type']:02x} | {p['type_width'] or '?'} | "
                         f"t{p['type_frac']:.2f}/v{p['value_const_frac']:.2f} | {lab} | {conf} | {p['evidence']} |")
        lines.append("")
    if spot:
        lines.append(f"****{spot['name']}vfs {spot['vfs']}{spot['path']}")
        lines.append("")
        lines.append("|  | type |  |")
        lines.append("|---|---|---|")
        for k, f in list(spot["fields"].items())[:20]:
            lines.append(f"| {k} | {f['t']} | {f['v']} |")
        lines.append("")
    return "\n".join(lines)

def fmt_types_counter(counter, top=30):
    return ", ".join(f"t{t:02x}×{n}" for t, n in counter.most_common(top))

# spot examples (first item per class from full JSON)
spot_map = {}
for e in equips:
    if e.get("schema") == "EquipResObject" and "spot" not in spot_map:
        spot_map["EquipResObject"] = {"name": e["id"], "vfs": e["vfs"], "path": e["path"],
                                      "fields": e.get("fields", {})}
        break
for e in runes["runes"]:
    if e.get("schema") == "RuneResObject":
        spot_map["RuneResObject"] = {"name": e["id"], "vfs": e["vfs"], "path": e["path"],
                                     "fields": e.get("fields", {})}
        break
for e in runes["runes_page"]:
    if e.get("schema") == "RunePageResObject":
        spot_map["RunePageResObject"] = {"name": e["id"], "vfs": e["vfs"], "path": e["path"],
                                         "fields": e.get("fields", {})}
        break

md = []
md.append("# FIELD-MAP.md — LData ////WorkFlow")
md.append("")
md.append("> `work/ldata-field-map-20260814/` ·  2026-08-15 ·  package/build "
          "7.2.0.2460/7246064 · resource 7.2.55.126 · ABI arm64-v8a")
md.append("> `work/ai-cfg-recovery-2026-08-04/full/{heroes,heroes-roster,equips,runes,"
          "equip-rune-stats}.json` + `decrypted-samples/vfs-extracted/`WorkFlow/Skill ×53"
          "WorkFlow/Buff ×423 corpus/artifacts/reports ")
md.append("> S1=il2cpp type-fields.json· S2=Lua  propsdispatcher-881-cases.tsv· "
          "S3=03-flow-format.md §3/§4 + 23-flow-grammar.md §3.4· "
          "S4=Lua  · S5=API-INDEX.md/BATTLE-API.md`[V]`=/"
          "`[I]`=")
md.append("")

# ---- 0 overview
cov = out["coverage"]
inv = out["inventory"]
md.append("## 0. ")
md.append("")
md.append("### 0.1 JSON  /  / ")
md.append("")
md.append("|  JSON |  |  | / |  |")
md.append("|---|---|---|---|---|")
md.append(f"| full/heroes.json | 142  | 1549 ActorCfgData  + {inv['full_json_files']['heroes.json']['base_sc_data_members']} BaseHeroScData | 17,397  | roster_meta/heroes/unmapped_base_sc_data |")
md.append(f"| full/heroes-roster.json | {inv['full_json_files']['heroes-roster.json']['heroes']}  | {inv['full_json_files']['heroes-roster.json']['vfs_members']} VFS  | — VFS  | hero → [path,offset,size] |")
md.append(f"| full/equips.json | — | {len(equips)}flow {inv['full_json_files']['equips.json']['by_kind'].get('flow')} / equip {inv['full_json_files']['equips.json']['by_kind'].get('equip')} / programme {inv['full_json_files']['equips.json']['by_kind'].get('equip_programme')} / other {inv['full_json_files']['equips.json']['by_kind'].get('other')} | {sum(len(ordered_fields(e.get('fields', {}))) for e in equips)} | list[flow|equip|equip_programme] |")
md.append(f"| full/runes.json | — | runes {len(runes['runes'])}rune_item {inv['full_json_files']['runes.json']['by_kind'].get('rune_item')} / recommend {inv['full_json_files']['runes.json']['by_kind'].get('rune_recommend')} / flow {inv['full_json_files']['runes.json']['by_kind'].get('flow')}+ runes_page {len(runes['runes_page'])} | {sum(len(ordered_fields(e.get('fields', {}))) for e in runes['runes']+runes['runes_page'])} | dict(runes, runes_page) |")
md.append(f"| full/equip-rune-stats.json | — | 3 equips/runes/runes_page  | — |  |")
md.append(f"| decrypted-samples/vfs-extracted/WorkFlow/Skill/ | 53  | 53 | {cov['skill_raw']['total']}  | fFFBA  |")
md.append(f"| decrypted-samples/vfs-extracted/WorkFlow/Buff/ | 423  | 423 | {cov['buff_raw']['total']}  | fFFBA  |")
md.append("")
eqr = cov["equips_runes_schema"]["total"] + cov["flow"]["total"]
raw = cov["skill_raw"]["total"] + cov["buff_raw"]["total"]
md.append("**/**`equips+runes` %d + `heroes` 17,397 + `skill/buff raw` %d = **%d**"
          % (eqr, raw, eqr + 17397 + raw))
md.append("")
md.append("### 0.2  / ")
md.append("")
md.append("|  |  |  |  |  |")
md.append("|---|---|---|---|---|")
md.append(f"| equip/rune EquipResObject  5  schema | {cov['equips_runes_schema']['total']} | {cov['equips_runes_schema']['annotated']} | {100*cov['equips_runes_schema']['annotated']/max(1,cov['equips_runes_schema']['total']):.1f}% | S1  + S3  |")
md.append(f"| flow kind=flow/ | {cov['flow']['total']} | {cov['flow']['annotated']} | {100*cov['flow']['annotated']/max(1,cov['flow']['total']):.1f}% | S3  |")
md.append(f"| ActorCfgData+BaseHeroScData | {cov['heroes']['total']} | {cov['heroes']['annotated']}+{cov['heroes']['width_only']}  | {100*(cov['heroes']['annotated']+cov['heroes']['width_only'])/max(1,cov['heroes']['total']):.1f}% | S3  [I] |")
md.append(f"| WorkFlow/Skill raw | {cov['skill_raw']['total']} | {cov['skill_raw']['annotated']} | {100*cov['skill_raw']['annotated']/max(1,cov['skill_raw']['total']):.1f}% | S3  |")
md.append(f"| WorkFlow/Buff raw | {cov['buff_raw']['total']} | {cov['buff_raw']['annotated']} | {100*cov['buff_raw']['annotated']/max(1,cov['buff_raw']['total']):.1f}% | S3  |")
md.append(f"| **TOTAL** | **{cov['TOTAL']['total']}** | **{cov['TOTAL']['annotated']}** | **{cov['TOTAL']['pct']}%** | |")
md.append("")
md.append("> = schema /flow / [type,value]  `fields`/`records` "
          "")
md.append("")

# ---- 1 equip
md.append("## 1.  Equip")
md.append("")
md.append("### 1.1 S1+S2 ")
md.append("")
md.append("- **S1 il2cpp88 **`_seriaTypeNo_ConfigVisi`  32 /"
          "`price,hp,hpRecover,hpRecoverRate,ad,armor,armorPierce,armorPierceRate,criRate,criDamage,"
          "attackSpeedRate,attackStealRate,ap,magicResistance,magicPierce,magicPierceRate,magicStealRate,"
          "mp,mpRecover,cdReduction,cdHaste,tenacityRate,healShieldRate,moveSpeed,moveSpeedRate,adaptive,"
          "disableEquipIds,…`//`name,shortDesc,specialDesc,groupId,iconAsset,"
          "gemIconAsset,equipmentType,eTypes,level,compoundParams,extraCompounds,isTemporary,equipSkills,"
          "privateSkills,disableHeroAttactType,upgradeEquip,…`")
md.append("- **S2 Lua propscase 16548 **`isInShelf;disable;isUpCompoundEquip;exchangePubishCD;"
          "armorPierce;price;hp;groupId;hpRecoverRate;ad;armor;criRate;criDamage;hpRecover;"
          "attackSpeedRate;armorPierceRate;ap;magicStealRate;attackStealRate;moveSpeedRate;moveSpeed;"
          "cdReduction;cdHaste;magicPierceRate;mp;magicPierce;magicResistance;tenacityRate;healShieldRate;"
          "mpRecover;adaptive;disableHeroAttactType;equipmentType;eTypes;isFlowControlPurchasePermissions;"
          "level;cdBuff;layerBuff;isSupport;isEnhanced;isJungle;purchaseCD;isToEquipSlot;"
          "isEnableRepeatPurchase;maxRepeatPurchaseCount;isRainbow;isGainEquip;isForgeEquip`")
md.append("")
md.append("### 1.2 EquipResObject ")
md.append("")
md.append(class_md("EquipResObject", classes_analysis["EquipResObject"], spot_map.get("EquipResObject")))
md.append("")
md.append("### 1.3 EquipProgrammeResObject")
md.append("")
md.append(class_md("EquipProgrammeResObject", classes_analysis["EquipProgrammeResObject"], None))
md.append("")

# ---- 2 rune
md.append("## 2.  Rune")
md.append("")
md.append("### 2.1 RuneResObject")
md.append("")
md.append("- **S1 22 **`_seriaTypeNo_ConfigVisi, IconPath, enabled, unlockLv, sortOrder, "
          "switchID, name, desc, details, attributeName, frameBgName, iconAsset, skill, type, serialType, "
          "primarySlotIndex, primarySlotSortOrder, validAdjustmentVersion, adjustmentState, adjustmentTips, "
          "staticDataList, privateSkills`")
md.append("-  0–8[1:0] v0  / [16:0]  / [34]  /  id "
          "6312 /  40 /  pos 9v1 S1 "
          " semantic-configs/runes.json round-15 ")
md.append("")
md.append(class_md("RuneResObject", classes_analysis["RuneResObject"], spot_map.get("RuneResObject")))
md.append("")
md.append("### 2.2 RunePageResObject")
md.append("")
md.append("- **S1 7 **`_seriaTypeNo_ConfigVisi, name, simpleDesc, runeIdList, privarySerial, "
          "secondarySerial, rune3DIdList`")
md.append("")
md.append(class_md("RunePageResObject", classes_analysis["RunePageResObject"], spot_map.get("RunePageResObject")))
md.append("")
md.append("### 2.3 RuneRecommendResObject")
md.append("")
md.append("- **S1 10 **`_seriaTypeNo_ConfigVisi, MAX_PAGE_RUNE_NUM, MAX_PAGE_RUNE_OTHER_NUM, "
          "pageIdList, imbaPageIdList, hexAramPageIdList, cherryPageIdList, otherPageIdList, "
          "oldHexAramPageIdList, normalAramPageIdList`")
md.append("")
md.append(class_md("RuneRecommendResObject", classes_analysis["RuneRecommendResObject"], None))
md.append("")

# ---- 3 skill
md.append("## 3.  Skill")
md.append("")
md.append("### 3.1 WorkFlow/Skill decrypted-samples53 ")
md.append("")
md.append(f"-  `decrypted-samples/vfs-extracted/` `skill-buff-files.json` / §7 "
          f" {cov['skill_raw']['total']}  {round(cov['skill_raw']['total']/53,1)} /"
          f"`{cov['skill_raw']['annotated']}/{cov['skill_raw']['total']}` ")
md.append("")
md.append("|  | S3 |")
md.append("|---|---|")
for t, n in skill_types.most_common():
    sem = s3_sem(t)
    md.append(f"| 0x{t:02x}×{n} | {sem[0] if sem else ' — '} |")
md.append("")
md.append("### 3.2 S1+S2+S5")
md.append("")
md.append("- **S2 Lua propscase 805 SkillResObject41 **`isDotSkill;resetPassiveEffectWhenRide;"
          "isIgnoreGoldBody;isCanUseInGoldBody;isCanUseInCannon;isCanBreakHide;canExistWhenCharge;"
          "forceCallForHelp;ignoreTargetPosWhenUseSkill;isSmoothRotate;isCanUseWhileDead;isForbidWhileZombie;"
          "isIgnoreAniStateChange;isBulletSkill;isRushSkill;useRushCdHaste;isAutoChangeReplaceSkill;isAoeSkill;"
          "isAttackSkill;isNormalAttackEffect;ignoreCDReduce;cdGroup;cdLockingProtectTime;assistUseSkill;"
          "empowerAttack;isAutoUseEmpowerAttack;assistKillFlag;isGetCasterRealm;isForbidInRealm;"
          "IgnoreSkillCDInHeadBarLine;useSkillLevelInitVarWhenNoLearn;functionType;skillType;aiMark;maxLevel;"
          "normalAttackType;delayDeleteTime;usbSkillFlag;skillActorEventDispatchMask;sylasStealType;"
          "canConsistBackHome`")
md.append("- **S1 il2cpp 17 **`_seriaTypeNo_ConfigVisi, isAutoChangeReplaceSkill, name, "
          "videoURL, iconAsset, skillType, functionType, levelData, skillLevelVars, passiveBuff, "
          "normalAttackType, canBreakAutoPath, canShowSliderWhenDie, isHideDefaultBlueRefreshEffect, "
          "useSkillLevelInitVarWhenNoLearn, headBarConfig, extraSkillBelongTypeMask`")
md.append("- **S5 **SkillLevelResObjectS1`consumeValueVar,consumeType,consumeType1,"
          "consumeValueVar1,OperatingMode,ReplaceOperatingMode,stock,rangeMaxVar,cd`SkillFlowcase 829"
          "`isCustomOnUseAbility/isDirectCast/isClickCancel/…` + `flowSpeedFormula/targetPosition`"
          "ActorSkillcase 850`resId/level/CD1/CD2/skillConsume/critRate/castStrength/chargeTime/…`")
md.append("")
md.append("> WorkFlow/Skill/*.bytes  flow FlowAction/Evaluator "
          "cdGroup/skillType/maxLevel  args/varShells "
          " `Res/WorkFlow/Scripts/**`E2E-TRACE  C2"
          " C3 ")
md.append("")

# ---- 4 buff
md.append("## 4. Buff")
md.append("")
md.append("### 4.1 WorkFlow/Buff decrypted-samples423 ")
md.append("")
md.append(f"-  `skill-buff-files.json`{cov['buff_raw']['total']}  "
          f"{round(cov['buff_raw']['total']/423,1)} /`{cov['buff_raw']['annotated']}/"
          f"{cov['buff_raw']['total']}` `DataLayerCombined/{{HEXARAM,ARUSB,DOG,BULL,"
          "MR,CHERRY,…}/WorkFlow/Buff/<id>.bytes`buff id  "
          f"{len(set(e['path'].split('/')[-1] for e in buff_raw))}  id")
md.append("")
md.append("|  | S3 |")
md.append("|---|---|")
for t, n in buff_types.most_common():
    sem = s3_sem(t)
    md.append(f"| 0x{t:02x}×{n} | {sem[0] if sem else ' — '} |")
md.append("")
md.append("### 4.2 Buff S2+S1")
md.append("")
md.append("- **S2 Lua propscase 744 BuffResObject49 **`maxLevel;removeUponFakeDeath;"
          "notRemoveUponDeath;notRemoveAniWhenFakeDeath;keepUponDeadToZombie;isTerrainWallDisplay;"
          "hideHudProgressBar;markStyle;displayPriority;uiHeadBarType;filter;ownerSkill;groupPriority;"
          "groupID;autoStackTimeF;autoStackStep;stackCount;stackReduceTimeF;stackReduceStep;"
          "isSpecialParseDesc;hudTextPriority;ignoreTenacity;ignoreKnockTenacity;exposedVisualField;"
          "removeWhenGiverDie;displayType;buffType;roundChangeRemoveType;buffOptTypeWhenRide;needCloneBuff;"
          "stackType;endOfTheDelay;buffInjuryInterval;mergeType;isUniqueSkillGuid;possessionTransfer;"
          "possessionFinishRemoveType;flyTextVisibility;enterFightType;isRedBorder;isUseFlyTextCurve;"
          "isPassive;isCdBuff;isHexCdBuff;isAINeddBuff;passiveMoveCanAffectFlowSpeed;assistKillFlag;"
          "executePerc…` dispatcher-881-cases.tsv case 744")
md.append("- **S2 BuffLevelDatacase 7438 **`isAutoHurtOriSkill;duration;cd;limitTargetCountVar;"
          "effectInterval;maxEffectTimesVar;effectDelayTime;disappearEffect`")
md.append("- **S2 ActorBuffcase 82329 **`idx;isEffectStart;triggerHitEvent;isStopUpdate;"
          "isPassiveEffect;objId;refCount;effectNum;maxEffectNum;maxStack;resId;tagResId;level;lifeTimeBase;"
          "cdTime;elapsedTimeLastChg;startTime;delayDeltaTime;intervalDeltaTime;effectInterval;"
          "elapsedTimeChgTime;lifeTime;effectDelayTime;autoStackTime;autoStackStep;stackReduceTime;"
          "stackReduceStep;lastStackTime;bIgnorePlayFlow`")
md.append("- **S1 il2cpp FrameEngine.Common.BuffResObject11 **`TypeID,_wrapperPool,_skillVarAsset,"
          "_levelData,_recreationBuffType,_icon,_flyTextIcon,_effectData,_buffPhaseTipsInfos,editorName,"
          "diffFields`")
md.append("")

# ---- 5 hero
md.append("## 5.  Hero")
md.append("")
md.append("### 5.1 ")
md.append("")
md.append(f"- `full/heroes.json`142  × 1,549 ActorCfgData `Actors/h_*/Skin*/InGame/ActorCfgData/"
          f"h_*_pre.bytes` {heroes['roster_meta']['heroes_with_base_sc_data']}  `base_sc_data`"
          f"WorkFlow/Hero/<id>/<id>.bytes {hero_bsd_count} + "
          f"{len(heroes.get('unmapped_base_sc_data', []))}  BaseHeroScData"
          "corpus  266 roster_meta`heroes-roster.json`  VFS offset/size")
md.append("- ActorCfgData  **native **S1  `TypeID,__Instance,__InstanceLongValue,"
          "NativeMap,_wrapperPool,_joint` libFEProj.so native "
          "trace `full/heroes.json`  note → ** H1**")
md.append("- /// BaseHeroScData / HeroBaseAttrData ")
md.append("  - **HeroBaseAttrDataS119 **`_seriaTypeNo_ConfigVisi, seqID, heroBaseAttrKey, heroId, "
          "vision, expShareRadius, warnRadius, attackValueBase, spellPowerBase, hpBase, mpBase, armorBase, "
          "spellResistBase, hpRecoverBase, mpRecoverBase, attackSpeedBase, speedBase, criDamageRateBase, "
          "requiredAttr` ← **/////////**")
md.append("  - **BaseHeroScDataS17 **`iHeroID, nNum, List, usereflection, CLASS_ID, BASEVERSION, "
          "CURRVERSION`TDR `List` "
          "`base_hero_sc_data_match=null` id  full/heroes.json note→ ** H2**")
md.append("  - **S2 ActorRescase 74953 props/ MonsterResObjectcase 74856 props** ")
md.append("  - **S4 **WorkFlow/Hero `full/heroes.json` unmapped_base_sc_data strings"
          "`kill.basedamage+att.attr_magic*…``att.attr_attack``att.attr_max_hp*1.3/100``max_hp*0.12`"
          "`level*2+10)/1000` → `attr_attack / attr_magic / attr_max_hp / attr_{…}`"
          "`kill.basedamage / kill.ad_ratio / kill.hp_rate / healthmissing`")
md.append("")
md.append("### 5.2 ActorCfgData S3+TYPE_SIZES")
md.append("")
md.append("| type |  |  |  |")
md.append("|---|---|---|---|")
for t, n in hero_types.most_common():
    sem = s3_sem(t)
    if sem:
        md.append(f"| 0x{t:02x} | {TYPE_SIZES.get(t, '?')} | {sem[0]} | {n} |")
    else:
        md.append(f"| 0x{t:02x} | {TYPE_SIZES.get(t, '?')} |  [I] | {n} |")
md.append("")
md.append("> 17,397  14,635 84.1% S3  + 2,762 [I]"
          "** =  H1 native /**")
md.append("")

# ---- 6 workflow / flow items
md.append("## 6.  WorkFlowflow ")
md.append("")
md.append(f"### 6.1 flow equips.json + runes.json  schema=None  {len(flow_items)}")
md.append("")
md.append("| kind |  |")
md.append("|---|---|")
for k, n in flow_kinds.most_common():
    md.append(f"| {k} | {n} |")
md.append("")
md.append("equips`NewFlows/Skill/Equip/*` DataLayerCombined `WorkFlow/Equip/"
          "<id>/Flow/*`runes`NewFlows/Skill/Runes/*``WorkFlow/Rune/*` buff  "
          "`QuicksilverSash_buff.bytes` E2E-TRACE ②  `NewFlows/Skill/Equip` buff ")
md.append("")
md.append("### 6.2 S344 //")
md.append("")
md.append("| type |  |  |  |")
md.append("|---|---|---|---|")
for t, (sem, conf) in sorted(S3_CONTAINER.items()):
    md.append(f"| 0x{t:02x} | {TYPE_SIZES.get(t, '?')} | {sem} | {conf} |")
md.append("")
md.append("flow  26,876  23,628 87.9% t0xa2×1132t0x62"
          "t0x90 →  §8 flow_parse.py FLOW_EXTRA_TYPES ")
md.append("")

# ---- 7 skill/buff file lists
md.append("## 7. WorkFlow/Skill  WorkFlow/Buff ")
md.append("")
md.append("vfsvfs_idxpathsizerecords `skill-buff-files.json`")
md.append("")
md.append("### 7.1 WorkFlow/Skill53 ")
md.append("")
md.append("| # |  | size |  |")
md.append("|---|---|---|---|")
for i, e in enumerate(skill_raw):
    md.append(f"| {i+1} | {e['path']} | {e['size']} | {e['record_count']} |")
md.append("")
md.append("### 7.2 WorkFlow/Buff423  buff id  DataLayerCombined ")
md.append("")
buff_by_id = collections.defaultdict(list)
for e in buff_raw:
    bid = e['path'].split('/')[-1].replace('.bytes', '')
    buff_by_id[bid].append(e['path'].split('/')[3])
md.append("| buff id |  |  |")
md.append("|---|---|---|")
for bid in sorted(buff_by_id):
    mods = sorted(set(buff_by_id[bid]))
    md.append(f"| {bid} | {len(mods)} | {','.join(mods)} |")
md.append("")

# ---- 8 gaps
md.append("## 8. ")
md.append("")
md.append("|  |  |  |")
md.append("|---|---|---|")
md.append("| H1 | ActorCfgData 1549  | libFEProj.so native ActorCfgData reader Frida  dump |")
md.append("| H2 | BaseHeroScData  ↔ iHeroID/nNum/List 266  |  `star_def.BaseHeroScData` libFEProj/il2cpp |")
md.append("| H3 | WorkFlow/SkillWorkFlow/Buff cdGroup/skillType/maxLevel/duration/effectInterval… |  `Res/WorkFlow/Scripts/**`E2E-TRACE C2 flow C3  |")
md.append("| H4 | flow  t0xa2/t0x62/t0x90  ~3k  | flow_parse.py FLOW_EXTRA_TYPES/TAIL_TYPES  |")
md.append("| H5 |  EquipResObject v1 pos0-2v1  490/175/30/… | f110/f011/ |")
md.append("")
md.append("## 9. ")
md.append("")
md.append("- `FIELD-MAP.md`· `README.md` · `field-map.json`/"
          "/· `skill-buff-files.json`53+423 · `build_field_map.py`")
md.append("- `python3 work/ldata-field-map-20260814/build_field_map.py`")

with open(os.path.join(OUT, "FIELD-MAP.md"), "w") as f:
    f.write("\n".join(md) + "\n")

print("FIELD-MAP.md written,", len(md), "lines")
print("coverage:", cov)
print("skill files:", len(skill_raw), "buff files:", len(buff_raw))
