#!/usr/bin/env python3
"""build_docs.py — generate API-INDEX.md, BATTLE-API.md, README.md for lua-api-reference-20260814."""
import json, os, re, datetime

OUT = '<research-workspace>/work/lua-api-reference-20260814'
ex = json.load(open('/tmp/extracted_resolved.json'))

def display_name(v):
    return v.get('class_name_display') or v.get('class_name') or v['cls_bind_s']

def fmt_rt(x, kind=''):
    if x is None: return '-'
    return f'0x{x:x}'

def props_line(v):
    parts = []
    for p in v['props']:
        nm = p['name'] or '?'
        g = p.get('getter_rt'); s = p.get('setter_rt')
        if p.get('getter_ptr'):
            gs = f'g=PTR@0x{p["getter"]-0x100000:x}'
        else:
            gs = f'g={fmt_rt(g)}' if g else 'g=-'
        ss = f's={fmt_rt(s)}' if s else ''
        idx = f' i={p["index"]}' if p.get('index') else ''
        parts.append(f'{nm}({gs}{(","+ss) if ss else ""}{idx})')
    return '; '.join(parts) if parts else '—'

def fns_line(v):
    seen = {}
    for f in v['fns']:
        nm = f['name'] or '?'
        code = f.get('code_rt')
        th = f.get('thunk_rt')
        seen.setdefault(nm, set())
        if code: seen[nm].add(code)
        if th: seen[nm].add(th)
    parts = []
    for nm in sorted(seen):
        addrs = ', '.join(f'0x{a:x}' for a in sorted(seen[nm]))
        parts.append(f'{nm} → {addrs}')
    return '; '.join(parts) if parts else '—'

def class_entry(v, level='###'):
    nm = display_name(v)
    case = v['case']
    tpl = v.get('begin_rt')
    un = '' if v.get('class_name_resolved') else ' ⚠ code-ref'
    flag = ''
    if v.get('class_name_raw') and v['class_name_raw'] != (v.get('class_name_display') or v['class_name']):
        flag = f' [raw="{v["class_name_raw"]}"]'
    lines = [f'{level} {nm} — case {case} ·  {fmt_rt(tpl)}{flag}{un}']
    lines.append(f'- props: {props_line(v)}')
    lines.append(f'- fns: {fns_line(v)}')
    return '\n'.join(lines)

# ---------------- API-INDEX.md ----------------
fam_re = re.compile(r'(Battle|Actor|Flow|Skill|Buff)')
entries = sorted(ex.values(), key=lambda v: display_name(v).lower())
total_props = sum(len(v['props']) for v in ex.values())
total_fns = sum(len(v['fns']) for v in ex.values())
nres = sum(1 for v in ex.values() if v.get('class_name_resolved'))
battle_cases = [v for v in entries if fam_re.search(display_name(v))]

with open(f'{OUT}/API-INDEX.md', 'w') as f:
    nprop_cls = sum(1 for v in entries if v['props'])
    nfn_cls = sum(1 for v in entries if v['fns'])
    uniq_fn = sum(len(set(f['name'] for f in v['fns'] if f['name'])) for v in entries)
    f.write(f"""# API-INDEX.md — Wild Rift 7.2.0.2460 FEProj Lua  API 881 

> 2026-08-15 · `work/lua-api-reference-20260814/decompiled/case*-*.c`
> Ghidra rtproj `-noanalysis`  +  README.md 
>  / case  /  runtime props getter/setter runtime 
> fns  →  C thunk **runtime VA**Ghidra rtproj  = runtime VA + 0x100000

## 
- 881 / 881  879 / 8812  ref  ⚠ README 
-  4701{nprop_cls}  2404  2  →  {uniq_fn}{nfn_cls} 
- 881 / 881 props / fns
-  Battle/Actor/Flow/Skill/Buff{len(battle_cases)}  →  BATTLE-API.md

## 
- `name(g=0x.., s=0x..)` — getter  gsetter  sruntime VA`g=PTR@0x..` = 
- `name → 0x.., 0x..` —  →  C closure runtime 
- `[raw="..."]` —  `* >` 
- ⚠ code-ref — beginClass / BINDINGS.md

""")
    for v in entries:
        f.write(class_entry(v) + '\n\n')

# ---------------- BATTLE-API.md ----------------
with open(f'{OUT}/BATTLE-API.md', 'w') as f:
    f.write(f"""# BATTLE-API.md —  Lua API  Battle/Actor/Flow/Skill/Buff{len(battle_cases)} 

>  API-INDEX.md  881  {len(battle_cases)} ≥100  API-INDEX.md

- Battle*{sum(1 for v in battle_cases if display_name(v).startswith('Battle'))}
- Actor*{sum(1 for v in battle_cases if display_name(v).startswith('Actor'))}
- Flow*{sum(1 for v in battle_cases if display_name(v).startswith('Flow'))}
- Skill*{sum(1 for v in battle_cases if display_name(v).startswith('Skill'))}
- Buff*{sum(1 for v in battle_cases if display_name(v).startswith('Buff'))}
- {sum(1 for v in battle_cases if not any(display_name(v).startswith(p) for p in ('Battle','Actor','Flow','Skill','Buff')))}

## 
|  | case | (rt) | props | fns |
|---|---|---|---|---|
""")
    for v in battle_cases:
        f.write(f"| {display_name(v)} | {v['case']} | {fmt_rt(v.get('begin_rt'))} | {len(v['props'])} | {len(set(f['name'] for f in v['fns'] if f['name']))} |\n")
    f.write("\n## \n\n")
    for v in battle_cases:
        f.write(class_entry(v, '###') + '\n\n')

# ---------------- README.md ----------------
# batch stats
summ = open(f'{OUT}/logs/batches.summary').read()
lines = [l for l in summ.splitlines() if l.strip()]
batch_rows = []
for l in lines:
    m = re.match(r'=== (\d\d:\d\d:\d\d) START (\w+)', l)
    if m:
        cur = {'batch': m.group(2), 'start': m.group(1)}
        batch_rows.append(cur)
    m = re.match(r'rc=(\d+) elapsed=(\d+)s loglines=(\d+)', l)
    if m and batch_rows:
        batch_rows[-1]['rc'] = m.group(1); batch_rows[-1]['elapsed'] = m.group(2)
tot_el = sum(int(b['elapsed']) for b in batch_rows if 'elapsed' in b)
n_unres = 2
unres = [v for v in ex.values() if not v.get('class_name_resolved')]

with open(f'{OUT}/README.md', 'w') as f:
    f.write(f"""# FEProj 881  Lua  API lua-api-reference-20260814

2026-08-15 · package/build 7.2.0.2460/7246064 · resource 7.2.55.126 · ABI arm64-v8a
`work/feproj-extended-20260814/BINDINGS.md`881  case→C +
`work/feproj-readable-20260814/ghidra-projects/rtproj`

## 
- `decompiled/case<N>-<Class>.c`+ `.asm`— 881  Ghidra  C §6
- `API-INDEX.md` — 881  Lua API  → props/fns
- `BATTLE-API.md` — Battle/Actor/Flow/Skill/Buff{len(battle_cases)} 
- `scripts/` — DecompileAt2.javaextract.pyresolve.pypostprocess.pybuild_docs.pyrun_batches.sh
- `logs/batch00..08.log``batches/batch00..08.txt` — //

- **Ghidra rtproj  = runtime VA + 0x100000**`libFEProj-rttext.so`  image baseLOAD0 delta 0 VA ==  < 0x6a5ba94
- dispatcher `0x1589ACC → 0x1689ACC` `fd 7b bf a9` stp x29,x30,[sp,#-0x10]!  BINDINGS.md §0 case0  `0x158C558 → 0x168C558` `ff 03 01 d1 f3 13 00 f9 ...`  case0 

## 2. 
 109-110 `analyzeHeadless -process libFEProj-rttext.so -noanalysis` +
`DecompileAt2.java "<ghidra-addr>:case<N>-<Class>;..." <outdir>`
```bash
/usr/share/ghidra/support/analyzeHeadless work/feproj-readable-20260814/ghidra-projects rtproj \\
  -process libFEProj-rttext.so -noanalysis -scriptPath work/lua-api-reference-20260814/scripts \\
  -postScript DecompileAt2.java "168c558:case0-GainDeckAssetObject;..." \\
  work/lua-api-reference-20260814/decompiled > logs/batch00.log 2>&1
```
logs/batches.summary""")
    for b in batch_rows:
        f.write(f"\n| {b['batch']} | {b.get('start','-')} | {b.get('elapsed','-')}s | rc={b.get('rc','-')} |")
    f.write(f"""

 {len(batch_rows)}  ≈ {tot_el}s JVM  0.1s881  rc=0

## 3. 
|  |  |
|---|---|
| BINDINGS  | 881 |
|  .c | **881 / 881**0 0  |
|  | ≈2.08 MB C + .asm 0.9-4.3 KB |
| beginClass  | 881 879  + 2 ref §7 |
| props | 4701633  4701/4701 |
| fns | 2404  2  →  1202503  2404/2404 |
|  | **881 / 881**≥80% 100% |

 BINDINGS.md props 855 26  BINDINGS TSV  case640
BattlePlayerScoringData  326 props  63case330 DataMgrProxy  142  16fns 857 
24  BINDINGS BINDINGS

```c
func_0x0124ba40(param_1, &UNK_0174a87c);      // ① GOT  runtime 0x114BA40
func_0x01251aa0(param_1, &"_G");               // ②  _G runtime 0x1151AA0
gate_check(&uStack_40);                        //     0x164AA04
beginclass_tmpl(&uStack_30,&"GainDeckAssetObject",&uStack_40,0x736d101);  // ③ beginClass 
puVar2 = func_0x0174a684(&uStack_30,&"resID",&UNK_0174a86c,0,&UNK_0174a874,0); // 
...refcount func_0x0124c4d0
```
- beginClass 4  4  == `0x736d101` =  2 
- 4/6  `(, , getter, 0[, setter, 0])`getter  `PTR_DAT_0x7xxxxxxx`
- `func_0x0124cba0(,0x10)`  → `*p = &` → `func_0x0124ec90(,&thunk,1)` →
  `func_0x0124f120(,&)` 2 
- runtime 0x114BA40_G 0x1151AA0 0x164AA04refcount 0x114C4D0  GOT  16B veneer GOT  [INFERENCE]

//_G runtime 0x5650000-0x5C00000 (island) 
 delta dword-XOR 0x30303030 **delta ** +0x60000
−0x10000−0x200000−0x30000… ** delta **−0x80000..+0xA0000
2.  BINDINGS  `SkillComboResObject* >`
3.  +  1-48 +  delta 0x5650000-0x5685000  +0x60000/−0x10000/−0x20000
`duration`FlowAction prop5ref 0x56BC0BA delta −0x20000 
`GainDeckAssetObject`case0ref 0x565D9EC +0x60000 `FlowAction`case1ref 0x56724CF
 0 `EquipmentForgeRequest`case655 −0x10000 = README  R(v)=S(v-0x10000)^0x30
8865  `&UNK_`  .c  `&""` 2  `&UNK_`

## 6. .c 
`decompiled/*.c`  Ghidra  + `&UNK_<ghidra-addr>` → `&"<string>"`
/ `&UNK_`/`PTR_DAT_` Ghidra  C: 
`case<N>-<Class>`rtproj  `case<N>_<Class>`  "existing function" 

## 7. /
1. **0 / 881**GOT  0x114BA40  rtproj  16B veneer
   UndefinedInstructionException—— GOT  [INFERENCE]
2. beginClass  code-ref 2  BINDINGS.mdAPI-INDEX  ⚠.c  &UNK_
   - case 148 `ButtonTemplateResObject` — ref runtime 0x566FFEB S 
   - case 732 `MonsterStageBuffApplyNode` — ref runtime 0x566FFEC S  19 
3. 65  `* >`  `SkillComboResObject* >`case 51/54/71/74/96...
   API `[raw=...]` 
4.  mangled FE*Msg / IFlowAction* case 36/853 BINDINGS
   —— delta  BINDINGS DataConfig/Bullet
5. BINDINGS.md props/fns  26/24 TSV  case640  326 props
   case330  142  §3TSV 1505/7105 
    hint delta  `ainVfxBaseSyncE`

## 8. 
- corpus/artifacts/reports  formatter/linter/
-  rtprojrtproj gate_check/beginclass_tmpl/helper_*
- logs/batch00..08.log+ C:asm: logs/batches.summarybatches/*.txt
""")

print("docs written")
print("battle cases:", len(battle_cases))
