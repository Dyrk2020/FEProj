#!/usr/bin/env python3
"""Generate classes.md / strings.md from extract_metadata.py JSON outputs."""
import json
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path("<research-workspace>")
OUT = Path(__file__).resolve().parent

types = json.load(open(OUT / "types.json"))
methods = json.load(open(OUT / "methods.json"))
battle = json.load(open(OUT / "battle.json"))
strings = json.load(open(OUT / "strings.json"))
stats = json.load(open(OUT / "stats.json"))

star_def = json.load(open(ROOT / "work/type07-parse-20260812/MetalibFind/schema-star-def-tdr.json"))
star_rep = json.load(open(ROOT / "work/type07-parse-20260812/MetalibFind/schema-star-stat-report-tdr.json"))
schema_all = json.load(open(ROOT / "work/type07-parse-20260812/MetalibFind/schema-all-tdr.json"))

tmap = {t["type_index"]: t for t in types}
mmap = defaultdict(list)
for m in methods:
    mmap[m["type_index"]].append(m)

def sig(m):
    ps = ", ".join(f"{p['name']}: {p['type']}" if not p["type"].startswith("T") else f"{p['name']}: T{p['typeIdx']}" for p in m["params"])
    rt = m["returnType"] if not m["returnType"].startswith("T") else f"T{m['returnTypeIdx']}"
    return f"{rt} {m['name']}({ps})"

def ns_of(ti):
    t = tmap.get(ti)
    return t["ns"] if t else ""

# ---------------------------------------------------------------- classes.md
L = []
W = L.append
W("# Wild Rift 7.2.0.2460 — IL2CPP metadata classes.md")
W("")
W("`global-metadata.dat`FMN! v31, Riot , 58,401,572 B, SHA-256 `5bd0f8b0…fde45d`")
W(" `extract_metadata.py` README.md✅=/[I]=")
W("")
W("## 0. ")
W("")
W("|  |  |")
W("|---|----|")
W(f"| typeDefinitions | {len(types)}88 B/ |")
W(f"|  | {sum(1 for t in types if not t['name'].startswith('<'))} |")
W(f"|  | {stats['counts']['namespaces']} |")
W(f"|  | {stats['counts']['fields']}12 B/ |")
W(f"|  | {stats['counts']['methods']}36 B/ |")
W(f"|  | {stats['counts']['params']} |")
W(f"|  /  | {stats['counts']['properties']} / {stats['counts']['events']} |")
W(f"|  | {stats['counts']['stringLiterals']} |")
W(f"| Battle/SyncMsg/CSRoom/Lua/FE/GamePlay | **{len(battle)}** |")
W("")
W("## 1. typeDef ")
W("")
W(" ≥ 20 `(empty)`  §1.1")
W("")
W("|  |  |")
W("|----------|-------:|")
ns_counter = Counter(t["ns"] for t in types)
for ns, n in ns_counter.most_common(80):
    W(f"| {ns or '(empty)'} | {n} |")
W("")
W("### 1.1 (empty) ")
W("")
W("|  |  |  |")
W("|------|-------:|------|")
empty_pre = Counter()
for t in types:
    if not t["ns"]:
        pre = t["name"].split("`")[0][:2] if t["name"][:1].isalpha() else t["name"][:2]
        empty_pre[pre] += 1
for pre, n in empty_pre.most_common(25):
    W(f"| {pre!r} | {n} | |")
W("")
W("## 2. TDR Metalib 5,776 ")
W("")
W(" `work/type07-parse-20260812/MetalibFind/schema-all-tdr.json`5,776 ")
W("- `star_def|Metalib`**4,916** schema-star-def-tdr.json—— + star_res ")
W("- `star_stat_report|Metalib`**860** schema-star-stat-report-tdr.json——")
W("")
W("### 2.1 star_def ")
W("")
W(" schema-star-def-tdr.json")
W("")
for nm in ("SyncMsgC", "SyncMsgCV2", "SyncMsgS", "CSRoomSyncFrameS", "CSWatchSyncFrameS",
           "CSWatchBatchGetFrameS", "CSWatchBatchGetFrameC", "FEDataSyncMsg", "BattleSyncFrame",
           "CliPlayerFrameInput", "CliPlayerFrameInputWithSeq", "CachedPlayerFrameInput",
           "CachedPlayerFrameInputCompress", "CliFrameInputUnit", "CliFrameInputList",
           "CSPlayerFrameInput", "CSTCPFrameInputC", "FrameFnoIndex", "BadFrameInfo"):
    e = schema_all.get(nm)
    if not e:
        W(f"- `{nm}` —  schema-all-tdr.json")
        continue
    t = tmap.get(e["type_index"])
    base = f" : {t['parent']}" if t and t.get("parent") else ""
    W(f"### 2.1.{nm}")
    W("")
    W(f"-  {e['type_index']} `{t['ns'] if t else '?'}`{base}")
    W(f"- {len(e['fields'])}`{'`, `'.join(e['fields'])}`")
    W("")
W("### 2.2 star_def 4,916")
W("")
W("``type_index—— schema JSON")
W(" = `star_def`schema-star-def-tdr.json ✅  typeDef ")
t_check = all(ns_of(e["type_index"]) == "star_def" for e in star_def.values())
W(f"{'' if t_check else ''} ns  star_def")
W("")
for nm in sorted(star_def):
    e = star_def[nm]
    W(f"- `{nm}` ({e['type_index']}, {len(e['fields'])} )")
W("")
W("### 2.3 star_stat_report 860")
W("")
r_check = all(ns_of(e["type_index"]) == "star_stat_report" for e in star_rep.values())
W(f" = `star_stat_report`schema-star-stat-report-tdr.json ✅ {'' if r_check else ''} ns  star_stat_report")
W("")
for nm in sorted(star_rep):
    e = star_rep[nm]
    W(f"- `{nm}` ({e['type_index']}, {len(e['fields'])} )")
W("")
W("## 3. Battle/SyncMsg/CSRoom/Lua/FE/GamePlay ")
W("")
W(f" metadata  **{len(battle)}** //")
W("")
W("|  |  |  |  |  |  |")
W("|----|----------|------|-----:|-----:|-----:|")
for t in sorted(battle, key=lambda x: (x["ns"], x["name"])):
    W(f"| `{t['name']}` | {t['ns'] or '(empty)'} | {t['parent'] or '—'} | {t['field_count']} | {t['method_count']} | {t['prop_count']} |")
W("")
W("")
W("` (: , …)``T<idx>` =  README §4")
W("")
W("`Battle*`/`SyncMsg*`/`CSRoom*` ****/")
W("`Lua*`/`FE*`/`GamePlay*`  8 + battle.json")
W("")
import itertools
fam = {"Battle": [], "SyncMsg": [], "CSRoom": [], "Lua": [], "FE": [], "GamePlay": []}
for t in sorted(battle, key=lambda x: (x["ns"], x["name"])):
    for p in fam:
        if t["name"].startswith(p):
            if p in ("Battle", "SyncMsg", "CSRoom") or len(fam[p]) < 8:
                fam[p].append(t)
            break
shown_methods = 0
shown_classes = 0
for p in ("Battle", "SyncMsg", "CSRoom", "Lua", "FE", "GamePlay"):
    W(f"####  {p}*{len(fam[p])} ")
    W("")
    for t in fam[p]:
        W(f"##### {t['name']}{t['ns'] or '(empty)'}type_index {t['type_index']}")
        W("")
        if t.get("parent"):
            W(f"`{t['parent']}`")
            W("")
        ms = sorted(mmap.get(t["type_index"], []), key=lambda m: m["slot"])
        if not ms:
            W("")
            W("")
        for m in ms:
            W(f"- `{sig(m)}`  token={m['token']} flags={m['flagsStr']}")
            shown_methods += 1
        shown_classes += 1
        W("")
W(f" {shown_classes}  / {shown_methods}  battle.json")
W("")
W("## 4. ")
W("")
W("- ****typeDef.parentIndex  byval ✅ 48,642 ")
W(f"  `parent ==  byval` =  {stats['type_resolution']['parent_resolvable']} →`System.Int32`")
W("- **/**byval  "
  f"{stats['type_resolution']['returnType_resolvable']}/ {stats['type_resolution']['paramType_resolvable']}")
W("  // `T<idx>`")
W("   int =48682  Int32 byval=48677—— **NOT_ESTABLISHED** `F<idx>`")
W("")
W("## 5. ")
W("")
W("- `types.json`48,642 ns/base//`methods.json`395,966 //flags")
W("  `battle.json`1,427 `strings.json`57,115 `stats.json`")

(OUT / "classes.md").write_text("\n".join(L))
print("classes.md lines:", len(L))

# ---------------------------------------------------------------- strings.md
S = []
W = S.append
W("# Wild Rift 7.2.0.2460 — IL2CPP metadata strings.md")
W("")
W("`global-metadata.dat` stringLiteral ✅ 57,115 table @0x100XOR  @0x6F9D8")
W(" XORks=libil2cpp.so rodata 0x1E42BA8 extract_metadata.py ")
W("")
W("## 1. ")
W("")
W("|  |  |")
W("|----|----|")
W(f"|  | {len(strings)} |")
W(f"|  | {stats['counts']['literals_empty']} |")
W(f"| ASCII ≥90% | {stats['counts']['literals_ascii_ge90']} |")
W(f"|  | {max(s['len'] for s in strings)} BLua  |")
W("")
import re
def cat(x):
    v = x["s"]
    if x["len"] == 0: return "empty"
    if "\n" in v or "local " in v[:20] or "function " in v[:40]: return "lua_source"
    if re.search(r"[A-Za-z_][A-Za-z0-9_]*\([^)]*\)", v) and len(v) < 120: return "call_sig"
    if v.startswith("Assets/") or v.startswith("assets/") or ".prefab" in v or ".lua" in v.lower() or "/" in v[:30]: return "path"
    if re.match(r"^[A-Z][A-Z0-9_]{2,}$", v): return "const_name"
    if re.search(r"error|fail|invalid|exception|denied|missing|failed", v, re.I) and len(v) < 150: return "errorish"
    if "{0}" in v or "{1}" in v: return "format"
    return "other"
c = Counter(cat(x) for x in strings)
W("|  |  |")
W("|------|-----:|")
for k, n in c.most_common():
    W(f"| {k} | {n} |")
W("")
W("## 2. Lua ")
W("")
W("### 2.1 Lua API  / ")
W("")
seen = set()
for x in strings:
    v = x["s"]
    if re.search(r"\b(Lua|lua|Slua|Pandora)", v) and len(v) < 200 and v not in seen:
        seen.add(v)
        W(f"- {x['idx']}: `{v}`")
W("")
W("### 2.2 Lua 696  40")
W("")
n = 0
for x in strings:
    if cat(x) == "lua_source":
        v = x["s"].replace("\n", "\\n")
        W(f"- [{x['idx']}] (len {x['len']}) `{v[:160]}`")
        n += 1
        if n >= 40: break
W("")
W("## 3. error/fail/invalid/exception ")
W("")
n = 0
for x in strings:
    if cat(x) == "errorish" and x["len"] < 160:
        W(f"- [{x['idx']}] `{x['s']}`")
        n += 1
        if n >= 80: break
W("")
W("## 4. /path")
W("")
n = 0
for x in strings:
    if cat(x) == "path" and x["len"] < 130:
        W(f"- [{x['idx']}] `{x['s']}`")
        n += 1
        if n >= 60: break
W("")
W("## 5. ALL_CAPS")
W("")
n = 0
for x in strings:
    if cat(x) == "const_name":
        W(f"- [{x['idx']}] `{x['s']}`")
        n += 1
        if n >= 40: break
W("")
W("## 6.  {0} ")
W("")
n = 0
for x in strings:
    if cat(x) == "format" and x["len"] < 140:
        W(f"- [{x['idx']}] `{x['s']}`")
        n += 1
        if n >= 40: break
W("")
W("## 7. ")
W("")
W("-  57,115  `strings.json``idx`=`len`=`s`=UTF-8 ")
W("- `[42]`=`\\t\\tindex: {{0}}…``[60]`=Lua `local getmetatable=…` file offset 0x70000✅")
W("- metadata // XOR  @0x20621C")

(OUT / "strings.md").write_text("\n".join(S))
print("strings.md lines:", len(S))
