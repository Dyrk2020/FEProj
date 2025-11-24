#!/usr/bin/env python3
"""hero_sample_summarize — HeroFlowCensus 

 JSON  work/hero-flow-census-20260814/sample-heroes.json
"""
from __future__ import annotations

import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
PARSER_DIR = os.path.join(os.path.dirname(HERE), "flow-node-parser-20260814")
sys.path.insert(0, PARSER_DIR)
sys.path.insert(0, HERE)

from flow_hero_parse import scan_hero_files  # noqa: E402
from flow_node_parse import parse_flow_nodes  # noqa: E402

EXDIR = ("<research-workspace>/work/"
         "ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted")

_KEEP = re.compile(
    r"(?:/|Play_|play_|flow|Flow|Gold|gold|radius|damage|hurt|buff|Buff|"
    r"skill|Skill|cast|Cast|joystick|Joystick|stun|Stun|slow|mana|Mana|"
    r"hit|Hit|attack|Attack|target|Target|actor|Actor|level|Level|"
    r"passive|Passive|Select|mark|Mark|icon|Icon|vfx|Vfx|VFX|spine|"
    r"UI|Effects|Default|InGame|WorkFlow|basicdamage|apratio|recover|"
    r"cost|Cost|time|actorlist|realm|reflect|LayerCount|owner|"
    r"giver|caster|dead|revive|shield|Shield|speed|Speed|Range|range|"
    r"RANGE|distance|Distance|knock|Knock|YunXuan|jiansu|dizzy|"
    r"FlyText|Charge|charge|stack|Stack|coin|Coin|energy|Energy)")


def meaningful(s: str) -> bool:
    if len(s) < 4:
        return False
    if not any(c.isalpha() for c in s):
        return False
    if _KEEP.search(s):
        return True
    alpha = re.findall(r"[A-Za-z][A-Za-z0-9_.]{5,}", s)
    return bool(alpha)


def hero_summary(hero_id: int, metas: list[dict]) -> dict:
    flows = []
    for m in metas:
        if m["kind"] != "flow":
            continue
        r = parse_flow_nodes(open(m["path"], "rb").read())
        strs = [s for s in r.get("strings", []) if meaningful(s)]
        flows.append({
            "flow": m["suffix"], "mode": m["mode"],
            "nodes": r["node_count"], "records": len(r["body_records"]),
            "strings": strs,
        })
    flows.sort(key=lambda x: (x["mode"], x["flow"] or ""))
    return {"heroId": hero_id, "flows": flows}


def main() -> None:
    heroes = [int(x) for x in sys.argv[1:]]
    metas = scan_hero_files(EXDIR)
    out = []
    for hid in heroes:
        sel = [m for m in metas if m["heroId"] == hid]
        if not sel:
            print("hero %d: no files" % hid)
            continue
        out.append(hero_summary(hid, sel))
    with open(os.path.join(HERE, "sample-heroes.json"), "w",
              encoding="utf-8") as fh:
        json.dump(out, fh, ensure_ascii=False, indent=1)
    print("wrote sample-heroes.json for", [o["heroId"] for o in out])


if __name__ == "__main__":
    main()
