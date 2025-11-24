#!/usr/bin/env python3
"""flow_hero_parse — WorkFlow_Hero 17,777 

Slice: work/hero-flow-census-20260814 (2026-08-16, build 7.2.0.2460/7246064,
resource 7.2.55.126, arm64-v8a).

 work/flow-node-parser-20260814/flow_node_parse.py 
  -  vfs-extracted/  `_WorkFlow_Hero_` 17,777
    heroId / (BASE|DataLayerCombined ) / (base|flow|operate|skin) /
    flow Flow_<hero>_<suffix> 
    hero-skill-map-20260814/data/hero-id-name-map.json 123  + 
  -  parse_flow_nodesok /  / body  /  / packed  /
    sem=="unknown" / 
    hero-flow-census.json+ hero-stats.json+ 

CLI:
  python3 flow_hero_parse.py --scan
  python3 flow_hero_parse.py --parse-all [--jobs N] [--exdir DIR]
  python3 flow_hero_parse.py --hero <heroId> [--exdir DIR]        #  JSON
  python3 flow_hero_parse.py --deep <file> [--exdir DIR]          # +
"""
from __future__ import annotations

import argparse
import json
import multiprocessing as mp
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
PARSER_DIR = os.path.join(os.path.dirname(HERE), "flow-node-parser-20260814")
if PARSER_DIR not in sys.path:
    sys.path.insert(0, PARSER_DIR)

from flow_node_parse import parse_flow_nodes  # noqa: E402

DEFAULT_EXDIR = ("<research-workspace>/work/"
                 "ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted")

HERO_NAME_MAP_PATH = os.path.join(
    os.path.dirname(HERE), "hero-skill-map-20260814", "data",
    "hero-id-name-map.json")

#: Flow_<hero>_<suffix> 
_FLOW_KW = re.compile(
    r"^(skill|spell|attack|buff|card|passive|loadeddice|addmoney|jiansu|"
    r"xuanyun|mana|die|born|return|run|talent|mr_|operate|dodge|fear|"
    r"taunt|slow|speed|shield|heal|hurt|revive|idle|walk|stand|ult|"
    r"passive|qingxian|keng|shenpan|wangzhe|bf|save|change|show|hide)")


def _load_hero_names() -> list[str]:
    names: dict[str, None] = {}
    try:
        with open(HERO_NAME_MAP_PATH, "r", encoding="utf-8") as fh:
            m = json.load(fh)
        for v in m.values():
            for n in v:
                names[n] = None
    except OSError:
        pass
    return list(names)


HERO_NAMES = _load_hero_names()


def split_flow_suffix(rest: str) -> tuple[str | None, str]:
    """'Flow_<hero>_<suffix>' -> (hero_name|None, suffix)."""

    s = rest
    if s.startswith("Flow_"):
        s = s[5:]
    best = None
    for n in HERO_NAMES:
        if s.startswith(n + "_") and (best is None or len(n) > len(best)):
            best = n
    if best is not None:
        return best, s[len(best) + 1:]
    # fallback:  token
    toks = s.split("_")
    for i, t in enumerate(toks):
        if i > 0 and _FLOW_KW.match(t):
            return "_".join(toks[:i]), "_".join(toks[i:])
    return None, s


_HERO_ID_RE = re.compile(
    r"(?:DataLayerCombined_([A-Z0-9]+)_)?WorkFlow_Hero_(\d+)_(.*)$")


def classify_path(fn: str) -> dict:
    """ vfs """
    base = os.path.basename(fn)
    m = _HERO_ID_RE.search(base)
    if not m:
        return {"ok": False, "file": base}
    mode = m.group(1) or "BASE"
    hero_id = int(m.group(2))
    rest = m.group(3)
    if rest.endswith(".bytes"):
        rest = rest[:-6]
    if rest == str(hero_id):
        kind = "base"
        suffix = None
        hero_name = None
    elif rest.startswith("Flow_") or rest.startswith("ParallelFlow_"):
        kind = "flow"
        hero_name, suffix = split_flow_suffix(rest)
    elif rest.startswith("Operate_"):
        kind = "operate"
        suffix = rest[len("Operate_"):]
        hero_name = None
    elif rest.startswith("Skin_"):
        kind = "skin"
        suffix = rest
        hero_name = None
    else:
        kind = "other"
        suffix = rest
        hero_name = None
    return {"file": base, "heroId": hero_id, "mode": mode, "kind": kind,
            "suffix": suffix, "hero": hero_name, "ok": True}


def scan_hero_files(exdir: str) -> list[dict]:
    out = []
    for fn in sorted(os.listdir(exdir)):
        if "_WorkFlow_Hero_" not in fn:
            continue
        meta = classify_path(fn)
        if meta["ok"]:
            meta["path"] = os.path.join(exdir, fn)
            out.append(meta)
    return out


def parse_one(meta: dict) -> dict:
    try:
        data = open(meta["path"], "rb").read()
    except OSError as e:
        return {**meta, "ok": False, "error": str(e)}
    r = parse_flow_nodes(data)
    rec = {k: meta[k] for k in ("file", "heroId", "mode", "kind", "suffix", "hero")}
    if not r.get("ok"):
        rec.update({"ok": False, "error": r.get("errors"), "size": r.get("size")})
        return rec
    rec.update({
        "ok": True,
        "size": r["size"],
        "complete": r["complete"],
        "nodes": r["node_count"],
        "records": len(r["body_records"]),
        "strings": r["shell_name_count"],
        "packed": sum(1 for x in r["body_records"] if x.get("packed")),
        "unknown": sum(1 for x in r["body_records"]
                       if x.get("sem") == "unknown"),
        "transitions": sum(len(n.get("transitions", [])) for n in r["nodes"]),
    })
    return rec


def run_parse_all(metas: list[dict], jobs: int) -> list[dict]:
    if jobs <= 1:
        return [parse_one(m) for m in metas]
    with mp.Pool(jobs) as pool:
        return pool.map(parse_one, metas, chunksize=64)


def aggregate(results: list[dict]) -> dict:
    by_hero: dict[int, dict] = {}
    kinds = {}
    modes = {}
    unknown_types: dict[int, int] = {}
    total = {"files": 0, "parsed": 0, "err": 0, "nodes": 0, "records": 0,
             "strings": 0, "packed": 0, "unknown": 0, "transitions": 0}
    for r in results:
        hid = r["heroId"]
        h = by_hero.setdefault(hid, {
            "heroId": hid, "files": 0, "parsed": 0, "err": 0, "nodes": 0,
            "records": 0, "strings": 0, "packed": 0, "unknown": 0,
            "flows": [], "kinds": {}})
        h["files"] += 1
        kinds[r["kind"]] = kinds.get(r["kind"], 0) + 1
        modes[r["mode"]] = modes.get(r["mode"], 0) + 1
        h["kinds"][r["kind"]] = h["kinds"].get(r["kind"], 0) + 1
        if not r.get("ok"):
            h["err"] += 1
            total["err"] += 1
            continue
        h["parsed"] += 1
        for k in ("nodes", "records", "strings", "packed", "unknown"):
            h[k] += r[k]
            total[k] += r[k]
        total["transitions"] += r.get("transitions", 0)
        total["files"] += 1
        total["parsed"] += 1
        if r["kind"] == "flow" and r["suffix"]:
            h["flows"].append(r["suffix"])
    for h in by_hero.values():
        h["flows"] = sorted(set(h["flows"]))
    total["heroes"] = len(by_hero)
    return {"total": total, "by_hero": by_hero, "kinds": kinds, "modes": modes}


def deep_dump(path: str) -> dict:
    """Dump 0x22 pool records for one flow file."""
    data = open(path, "rb").read()
    r = parse_flow_nodes(data)
    strs = r.get("strings", [])
    nodes = []
    for n in r.get("nodes", []):
        pool = []
        for rec in n["records"]:
            if rec["type"] == 0x22 and isinstance(rec["value"], int):
                pool.append(rec["value"])
        nodes.append({
            "id": hex(n["id"]) if n["id"] is not None else None,
            "offset": hex(n["start"]), "end": hex(n["end"]),
            "bytes": n["bytes"], "records": n["rec_count"],
            "transitions": [hex(x) for x in n.get("transitions", [])],
            "pool_refs": [hex(x) for x in pool],
            "records": n["records"],
        })
    # body  0x22  ↔  [V ]
    seq = []
    for rec in r.get("body_records", []):
        if rec["type"] == 0x22 and isinstance(rec["value"], int) \
                and 0x80000 <= rec["value"] <= 0x9FFFF:
            seq.append(rec["value"])
    return {
        "file": os.path.basename(path),
        "ok": r["ok"],
        "size": r["size"], "complete": r["complete"],
        "header_records": r["header_records"],
        "config": r["config"],
        "strings": strs,
        "pool_refs_order": [hex(x) for x in seq],
        "nodes": nodes,
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--scan", action="store_true")
    ap.add_argument("--parse-all", action="store_true")
    ap.add_argument("--hero", metavar="HEROID")
    ap.add_argument("--deep", metavar="FILE")
    ap.add_argument("--exdir", default=DEFAULT_EXDIR)
    ap.add_argument("--jobs", type=int, default=max(1, mp.cpu_count()))
    a = ap.parse_args()
    metas = scan_hero_files(a.exdir)
    if a.scan:
        kinds, modes = {}, {}
        for m in metas:
            kinds[m["kind"]] = kinds.get(m["kind"], 0) + 1
            modes[m["mode"]] = modes.get(m["mode"], 0) + 1
        print("files=%d heroes=%d kinds=%s modes=%s"
              % (len(metas), len({m["heroId"] for m in metas}),
                 json.dumps(kinds, sort_keys=True), json.dumps(modes, sort_keys=True)))
        return 0
    if a.deep:
        d = deep_dump(os.path.join(a.exdir, a.deep))
        print(json.dumps(d, ensure_ascii=False, indent=1))
        return 0
    if a.hero:
        sel = [m for m in metas if str(m["heroId"]) == a.hero]
        out = [parse_one(m) for m in sel]
        print(json.dumps(out, ensure_ascii=False, indent=1))
        return 0
    if a.parse_all:
        res = run_parse_all(metas, a.jobs)
        agg = aggregate(res)
        os.makedirs(HERE, exist_ok=True)
        with open(os.path.join(HERE, "hero-flow-census.json"), "w",
                  encoding="utf-8") as fh:
            json.dump(res, fh, ensure_ascii=False, indent=1)
        with open(os.path.join(HERE, "hero-stats.json"), "w",
                  encoding="utf-8") as fh:
            json.dump(agg, fh, ensure_ascii=False, indent=1)
        t = agg["total"]
        print("total: files=%d parsed=%d err=%d heroes=%d nodes=%d records=%d "
              "strings=%d packed=%d unknown=%d transitions=%d"
              % (t["files"], t["parsed"], t["err"], t["heroes"], t["nodes"],
                 t["records"], t["strings"], t["packed"], t["unknown"],
                 t["transitions"]))
        return 0
    ap.error("no action")


if __name__ == "__main__":
    sys.exit(main())
