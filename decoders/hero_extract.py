#!/usr/bin/env python3
"""Round-16 hero extraction: parse all ActorCfgData members (+ the
WorkFlow/Hero/<id> BaseHeroScData corpus) and emit full/heroes.json.

Per hero:
  members[]   : Actors/<hero>/... ActorCfgData members, raw records + tail
                strings; fields unlabeled (native-only wrapper).
  base_sc_data: WorkFlow/Hero/<id>/<id>.bytes members mapped to this hero via
                the embedded 'Actors/h_<hero>/' string; raw records, iHeroID
                = path id, no positional field labels (see heroes.md).
"""
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from fffba_parse import parse_bytes

WD = "<research-workspace>/work/ai-cfg-recovery-2026-08-04"
VF = "<scratch-workspace>/vfs-hero"
HERO_PAT = re.compile(r"Actors/(h_[^/]+)/")
WF_PAT = re.compile(
    r"Assets/ABPack/Resources/(?:DataLayerCombined/MR/)?"
    r"WorkFlow/Hero/(\d+)/(\d+)\.bytes$")
ACTOR_IN_STR = re.compile(r"Actors/(h_[^/]+)/")

# star_def.BaseHeroScData field list (type-fields.json, TDR protocol type)
BASE_HERO_SC_FIELDS = ["iHeroID", "nNum", "List", "usereflection",
                       "CLASS_ID", "BASEVERSION", "CURRVERSION"]

# record types with 4-byte (u32) values (fffba_parse.TYPE_SIZES)
U32_TYPES = {t for t, ln in __import__("fffba_parse").TYPE_SIZES.items()
             if ln == 4}


def match_base_hero_sc_data(parse, path_id):
    """Strict iHeroID/nNum/List layout match.

    star_def.BaseHeroScData begins iHeroID(u32)/nNum(u32)/List(array). A
    stream matches iff record[0] is a u32 record whose value equals the
    hero id from the file path (or is in hero-id range 10000..29999 when no
    path id exists), so positional field labels are safe.
    """
    recs = parse.get("records") or []
    if len(recs) < 3:
        return None
    t0, v0 = recs[0]
    if t0 not in U32_TYPES or len(v0) != 4:
        return None
    val0 = int.from_bytes(v0, "little")
    if path_id is not None:
        if val0 != path_id:
            return None
    elif not (10000 <= val0 <= 29999):
        return None
    fields = {}
    for i, (t, v) in enumerate(recs):
        key = BASE_HERO_SC_FIELDS[i] if i < len(BASE_HERO_SC_FIELDS) \
            else "unknown_%d" % i
        fields[key] = {"t": t, "v": v.hex()}
    return {"schema": "star_def.BaseHeroScData",
            "schema_alignment_confidence": "high" if path_id is not None
            else "medium",
            "labeled_fields": fields}


def member_file(vfs, index, path):
    return os.path.join(VF, vfs[:-4], "%03d_%s" % (index, path.replace("/", "_")))


def load_member_map():
    """vfs -> {path: index} using member order (== index order)."""
    vp = json.load(open(os.path.join(WD, "vfs-paths.json")))
    return {vfs: {p: i for i, (p, _o, _s) in enumerate(members)}
            for vfs, members in vp.items()}


def build_entry(path, vfs, size, parse, path_id, schema, conf, note):
    m = match_base_hero_sc_data(parse, path_id)
    recs = [[t, v.hex()] for t, v in parse.get("records") or []]
    e = {
        "path": path,
        "vfs": vfs,
        "size": size,
        "schema": schema,
        "schema_alignment_confidence": conf,
        "record_count": parse.get("record_count", 0),
        "parse_ok": parse.get("ok", False),
        "parse_clean": parse.get("clean", False),
        "parse_errors": parse.get("errors", []),
        "records": recs,
        "strings": parse.get("strings", []),
        "base_hero_sc_data_match": m,
    }
    if note:
        e["note"] = note
    return e


def main():
    vp = json.load(open(os.path.join(WD, "vfs-paths.json")))
    idxmap = load_member_map()
    roster = json.load(open(os.path.join(WD, "full", "heroes-roster.json")))

    out = {}
    stats = {"members": 0, "bsd_members": 0, "bsd_matches": 0,
             "actors_with_bsd": 0, "unmapped_bsd": 0}

    # --- ActorCfgData members per hero ---
    for hero, members in sorted(roster.items()):
        entries = []
        for m in members:
            vfs, path = m["vfs"], m["path"]
            fn = member_file(vfs, idxmap[vfs][path], path)
            parse = parse_bytes(open(fn, "rb").read())
            e = build_entry(
                path, vfs, m["size"], parse, None,
                "FrameEngine.Interface.ActorCfgData (native-only wrapper)",
                "none",
                "ActorCfgData native-only: record field names recoverable "
                "only from the native struct in libFEProj.so or a runtime "
                "trace; fields unknown [INFERENCE]")
            stats["members"] += 1
            if e["base_hero_sc_data_match"]:
                stats["bsd_matches"] += 1
            entries.append(e)
        out[hero] = {"name": hero, "member_count": len(entries),
                     "members": entries, "base_sc_data": []}

    # --- WorkFlow/Hero/<id> BaseHeroScData corpus -> map id to hero ---
    wf_by_hero = {}
    unmapped = []
    for vfs, members in vp.items():
        for i, (path, off, size) in enumerate(members):
            mm = WF_PAT.match(path)
            if not mm:
                continue
            hero_id = int(mm.group(1))
            fn = member_file(vfs, i, path)
            parse = parse_bytes(open(fn, "rb").read())
            stats["bsd_members"] += 1
            actors = [a for s in parse.get("strings") or []
                      for a in ACTOR_IN_STR.findall(s)]
            hero = actors[0] if actors else None
            e = build_entry(
                path, vfs, size, parse, hero_id,
                "star_def.BaseHeroScData (record layout native; "
                "iHeroID/nNum/List positionally UNVERIFIED)",
                "none",
                "hero id from path WorkFlow/Hero/<id>; id absent from file "
                "bytes; record stream = fFFBA container header + payload, "
                "does not positionally match iHeroID/nNum/List [INFERENCE]")
            if hero is None:
                stats["unmapped_bsd"] += 1
                unmapped.append(e)
                continue
            wf_by_hero.setdefault(hero, []).append(e)

    for hero, bsds in wf_by_hero.items():
        if hero in out:
            out[hero]["base_sc_data"] = bsds
            stats["actors_with_bsd"] += 1
        else:
            unmapped.extend(bsds)
            stats["unmapped_bsd"] += len(bsds)

    doc = {
        "roster_meta": {
            "heroes": len(out),
            "members": stats["members"],
            "base_sc_data_members": stats["bsd_members"],
            "base_sc_data_matches": stats["bsd_matches"],
            "heroes_with_base_sc_data": stats["actors_with_bsd"],
            "unmapped_base_sc_data": stats["unmapped_bsd"],
        },
        "heroes": out,
        "unmapped_base_sc_data": unmapped,
    }
    with open(os.path.join(WD, "full", "heroes.json"), "w") as f:
        json.dump(doc, f)
    print("heroes=%d members=%d bsd_members=%d bsd_matches=%d "
          "with_bsd=%d unmapped_bsd=%d"
          % (len(out), stats["members"], stats["bsd_members"],
             stats["bsd_matches"], stats["actors_with_bsd"],
             stats["unmapped_bsd"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
