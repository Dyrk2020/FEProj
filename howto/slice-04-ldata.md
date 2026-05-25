# Slice 04 · LData Game Data Decoding (LData field map / skill mapping / flow census / buff uniqueness / damage core / RPN attribute engine)

> Version: package/build 7.2.0.2460/7246064 · resource 7.2.55.126 · ABI arm64-v8a
> Scope: static reverse-engineering methodology (binary / metadata / Lua / LData / game data layer outside the network protocol). This digest contains no device fingerprinting, identity rotation, detection evasion, bans, device IDs, Magisk/Zygisk hiding, or proxy rotation content; it cites no anticheat/ban-forensics reports.
> Evidence markers: [V]=byte/file/decompilation evidence · [I]=inference · all addresses are runtime VAs (rttext IDB linear address == static VA, delta=0).

---

## Objective

This slice reverse-engineers the **LData game data layer** of Wild Rift 7.2.0.2460:
1. What LData is, how `.vfs` resource files are structured/decrypted, and how the inner `fFFBA` container is decoded;
2. The construction method for the 74,152-entry field map (90.3% annotated) (S1–S5 evidence chain + positional alignment);
3. The hero→skill numeric id mapping convention `skillId = heroId×100 + slot`;
4. The WorkFlow_Hero full census of 17,777 files / 146 heroes with node-level semantics (including TF card-pick red/yellow/blue);
5. Buff uniqueness determination (canOverlay/maxStack) and the cost-type jump tables;
6. The damage calculation core (crit / armor·magic resist reduction / penetration / split) and the RPN attribute evaluation engine.

---

## Key Coordinates

### LData .vfs container (file structure, 52-byte header)
| Offset | Size | Field |
|---|---|---|
| 0x00 | 4 | magic/version `01 03 01 xx`, xx∈{0..4} selects the key (LE u32 0x00010301..0x04010301) |
| 0x04 | 4 | u32 A (end of encrypted first block R1) |
| 0x08 | 4 | u32 B = A+0x10 (block-stream start; holds exactly for 1,205/1,205 files) |
| 0x0C | 4 | u32 total file size (= stat size) |
| 0x10 | 4 | magic repeated |
| 0x14 | 32 | K key block (16B group key + 16B; 673 distinct K / 1,205 files) |
| 0x34 | A−0x34 | R1 encrypted region (high entropy 7.4–7.9) |
| A | 16 | F (R1's key MAC, [I]) |
| B | — | block stream {u32 magic, u8[32] K', ciphertext}; blocks are sized by content (large payloads ≈8KiB chunks) |

### LCSecurity v1.4.4 cipher (vfs_codec3.py / vfs_decrypt.py, verified round-by-round with qemu+gdb)
- S-box @ `0x5843fc8` (256B); RC 32 words @ `0x58440c8` (not a simple arithmetic sequence);
- key_schedule(seed16): w=rev32(stored)^consts{0xB9B7ED68,0x71750A9F,0xA6070525,0x3AA8C2C5}; 32 rounds t=sub(s1^s2^s3^RC[r]); s[i&3]=t^s[i&3]^ror(t,19)^ror(t,9);
- block_transform: 32 rounds t=sub(s1^s2^s3^sched[31−r]); s[i&3]=t^s[i&3]^rol(t,2)^ror(t,22)^ror(t,14)^ror(t,8); out=BE(s3..s0);
- Chaining: P[i]=E(C[i])^C[i−1], C[−1]=IV (CBC form); PKCS#7 unpad;
- 5 subtype keys (.data 0x72677b0 obfuscated ASCII table; see `gamedata/vfs-keys.json`): subtype 0 seed `!@#2017LsGame201` IV `ddAXmIDSo*Ay3Y!N`; 1 `lgame))x0smnvjdh`/`xmlks*76ssPOPjsB`; 2 `mxlkadj*&jjweGGJ`/`Msh%$osp97#sjm-8`; 3 `XXpso09]][\xcmss`/`hh%&*6ss922MZuAP`; 4 `mad9102kjhdyct&^`/`sml@ASS!js7$op#l`.
- Real dispatch: 0x41fd288→0x42e9a2c; `buf[0]==1` has a descriptor, `buf[1]==3` goes through codec vtable slot[0x28] (the LData encrypted payload is this chain).

### fFFBA container (inner config container)
- Marker `"FFBA \x00"`=46 46 42 41 20 00; never in plaintext anywhere in the binary, only in XOR-0x30 form @ rodata `0x579F978` (adjacent RTTI `FrameEngine::Extra::LogicBattleAssetDataProcessUtils` @ 0x579F940);
- Envelope: 1–2 byte prefix (v1=`'f'`=0x66; v0=`0xa2/0x93/0xb1` or `f0 xx/f1 xx/f2 xx`) + 6B marker + version byte (v1=0x01 / v0=0x00);
- v1 header: common 5B `01 00 00 0c 00` + type-specific field blocks (each ending `14 00`) + fixed tail `2a 0b 00 01 00 00 10 00` marking the record-stream start;
- v0 header: `00 00` + 5×u32 metadata + `01 00` + u32 + `01 00` + `00 10 00`;
- Record stream = dense `[type][value]` records; **TYPE_SIZES 121-entry width table** (`decoders/fffba_parse.py`); terminator type `0xf0`;
- Tail = ASCII string table (asset paths/shell names/formula strings) + offset table + zero padding + trailing u32 (schema constant, not a checksum: RapidFirecannon_attack/StatikkFirecannon/StatikkShiv_buff4 contents differ by >1KB yet all end in 0x1CEC).

### Field map (74,152 records)
- Total records 74,152 = equips+runes 51,414 + heroes 17,397 + skill/buff raw 5,341; annotated 66,990 = **90.3%**;
- Container-header invariant: config id record `[27|19:6312]` (0x18A8) + payload tag `[4:40]`; `container_prefix()` (full_extract.py round-16) splits the container header on this basis, header records are tagged `container_N`, and are **never** mixed with schema fields;
- Payload alignment: payload record i → field i of the S1-class field table (positional alignment);
- S3 record-type vocabulary: 44 entries with semantics (`0x10`=block-start, `0x22`=string-pool ref(0x08xxxx), `0x13`=id/insId, `0x1b`=paired id, `0x04`=count/tag(40), `0x05`=header terminator, `0x93/0xa2/0x62`=size/count, `0x2a`=header tail(11), `0x84`=trailer count, `0x48`=48-bit asset hash, `0x5f`=32-bit ASSET_* hash…).

### Hero→skill mapping
- Formula `skillId = heroId×100 + slot`; slot 0=base slot (e.g. 1007000), 1–4=Q/W/E/R, 5–8 additional, 11–14 variants/ARAM; 1,016 `Operate_SkillOperate_<id>` fully verified with no counterexamples;
- `WorkFlow/Hero/<heroId>/Flow_<hero>_skillNN.bytes`, `Operate/SkillOperate_<heroId><NN>.bytes`, `<heroId>.bytes` (BaseHeroScData); 123/142 heroes have zero-ambiguity heroId↔name (`gamedata/hero-skill-map/data/hero-id-name-map.json`);
- TF (h_twistedfate)=10025; W card-pick=1002502; passive [I] slot5=1002505 (no Operate evidence);
- Native chain: ChampionResObject._skills=List<HeroSkill>{skill,maxLevel,slotIndex} (slotIndex getter +48); SkillResObject case805 (functionType=+104/skillType=+108/maxLevel=+116/isDotSkill=+24/normalAttackType=+216); ActorSkill.resId=+116; BattleActor.ResID=+196;
- Vocabulary: SkillResObject=case805 41 props; BuffResObject=case744 49 props; BuffLevelData=case743 8; ActorBuff=case823 29 (`bindings-881/dispatcher-881-cases.tsv`).

### WorkFlow_Hero census (17,777 files)
- 146 heroes; 428,267 node blocks; 6,009,785 body records; 682,920 strings; 902,598 packed; 383,183 transition edges; **unknown types=0**;
- Categories base 1,441 / flow 9,389 / operate 1,016 / skin 5,931; modes BASE 12,681 + MR 2,288 + CHERRY 692 + HEXARAM 659 + ARUSB 243 + OLDHEXA 243 + DOG 180 + QUICK 150 + TIGER 149 + ARAM 142 + DS 130 + SUM 129 + URF 86 + BULL 5;
- Filename metadata `(?:DataLayerCombined_<MODE>_)?WorkFlow_Hero_<heroId>_<rest>`; **MR-mode filenames contain a literal space** (`Flow_twistedfate_attack01_bullet 1.bytes`).

### TF card pick (W) red/yellow/blue semantics (node level, [V string/bytes])
- The three colored card streams share the **joystickIndex effect node (id=0xf00)** (`joystickIndex Actors/h_twistedfate/Skin00/InGame/Effects/Default/T*`);
- Card ordinal encoding: **red=01 / gold(yellow)=02 / blue=03** (`01_01e_topV`/`02_01e_topV`/`03_01e_topV`); red→yellow→blue is the W cycle direction [I];
- Red card=`jiansu_buff` (`FX_public_jiansu_hold01` slow + BaseHeroScData `slowrate P+0.05`, `time3`, `red_radius 2.75`+actorlist AoE); yellow card=`xuanyun_buff` (`DeBuff_YunXuan`+`stun`+`b_dizzy` stun, `P+10 stun`); blue card=`mana` (`_skilla02_fire03` mana restore, `manrecover P+30`);
- Card-pick decision tree `skill02_bt` (29 nodes/589 records): node 0x5e830=`Play_Twistedfate_Skill02_Bluecard_Select`; three-color UI icons `skill02_buff01..03` (`wllIcon/`+`p02_Flip`; buff01=02 yellow/buff02=01 red/buff03=03 blue); target lock `skill02_buff04` (`Mark caster`, 42 nodes);
- Enhanced basic attack `attack01_bullet_{red,yellow,blue,normal,add}` (`Play_…_Redcard_Hit`/`02_Goldcard_BH`/`02_Bluecard_BH`; red carries `tf_addhurt_reflect`, yellow/blue carry `SkillLevel`).

### TF passive (Loaded Dice) chain
- `passive` (26 nodes, node 0x8a0=`deadActor/caster` death trigger) → `loadeddice_e_proc` (10 nodes, node 0x158d0=`flowMoney`+`GoldValue tf_e_gold_total`) → `addmoney` (20 nodes, `VfxBuffStack GoldValue Money#`+`tf_passive_gold_total` accumulator); two gold variables `tf_e_gold_total`/`tf_passive_gold_total` coexist.

### Buff uniqueness (native side)
- `DynamicPassiveSkill.canOverlay` u8 @ **+0x774**: whole-binary LDRB scan **1 hit**=getter 0x17bc88c → the decision lives in the Lua/workflow layer;
- `ActorBuff.maxStack` u32 @ **+0x30**: getter 0x18cc754 / setter 0x18cc75c→sub_18CDE44 (FlowActionModifyBuffMaxStack write entry); effectNum=+0x24, maxEffectNum=+0x28;
- 881 bindings read dispatch sub_18CD574 (Lua `buff.maxStack` read path); write dispatch sub_18CD608;
- Stacking strategy BUFF_STACK_TYPE 8 values (BST_REFRESH/REPLACE/FORBID/EXTEND_TIME/SUPERPOSE/REFRESH_NOEXECUTE/SUPERPOSE_NOEXECUTE/SUPERPOSE_LAYER_INDEPENDENT, il2cpp battle.json idx 36609); apply chain Lua AddBuff→BattleActorApplyBuffMsg(case9, 0x158E210)→BuffManager(case14)→ActorBuff(case823).

### Cost-type jump tables
- class-A (release) jump table @ **0x564b71c**, consumer sub_13E2110; class-B (charge) @ **0x564b744**, consumer sub_13E2388; third dispatch sub_13E43D8 (effect-list costs, jump table idx10..15);
- Resource object fields (A/B twin layout): primary resource +0x390/+0x128; current resource +0x400/+0x150; third resource +0x460/+0x160;
- cost branches: 1/2/8/10→third resource slot; 3/4/7/9→current resource slot; **6→primary resource** (consistent with the no-mana report cost==6 ✅); 5→attribute id 12; default→allow; free-cost shortcut `[a1+1620]==4`(A)/`[a1+1168]==4`(B).

### Damage core
- **Fix14 fixed point**: 1.0=0x4000=16384; 100.0=0x190000=1638400; `x<<14`/`>>14` fixed-point multiply/divide, `(x<<28)` Fix28 intermediate precision;
- **Armor reduction (sub_1ADB99C, [V])**: `factor = 0x4000 − (armor<<14)/(armor+1638400)` ≡ `1 − armor/(armor+100)`; `damage_taken = raw × 100/(armor+100)`;
- **Magic resist**: sub_1CFCBB4 case 2 is isomorphic (ATTR_MAGIC_DEF(0x11) channel); no standalone magic-damage reduction function anchored;
- **Generic reduction (sub_1CFCBB4)**: `eff = |armor|×(1−pct) − flat` (case1 physical: pct=attr(target,11)=0xB, flat=attr(target,10)=0xA; case2 magic: pct=attr(target,19)=0x13, flat=attr(target,18)=0x12), `dmg = ((0x4000 − (|eff|<<14)/(|eff|+1638400))×raw)>>14`, coefficient clamped ≤1.0, non-negative clamp;
- ATTR enum table (sub_2C76D64, 57 registered): 0x8 ATTACK、0x9 ARMOR、0xA ARMOR_PIERCE、0xB ARMOR_PIERCE_RATE、0xC CRI_RATE、0xD CRI_DAMAGE_RATE、0x10 MAGIC、0x11 MAGIC_DEF、0x12 MD_PIERCE、0x13 MD_PIERCE_RATE、0x24 OMNIVAMP、0x26 ARPEN、0x27 MAGICPEN、0x2F GEM_EXTRA_DAMAGE、0x31 HP_PUNISH、0x32 CONTROL_CRITICAL_EXTRA、0x36 EXTRA_ARMOR_PIERCE_RATE、0x37 ACTIVEPEN;
- Penetration order: **flat first, then percent** [I] (`eff=resist×(1−pct)−flat` evidenced in sub_1CFCBB4; multi-channel merge point not pinned down record by record); resist non-negative `|armor|` [V];
- Attribute read chain: sub_20053B4(actor+480, attr_id)→sub_1F66418(+1224 slot array)→sub_20700BC (+152 modifier→sub_2126FBC effective value, else +96 base value);
- Crit: pre-crit field chain SkillUseObj.isPreCrit=+0x50 / BulletGroup.isPrecalCritByGroup=+0x78 / HurtFlags.useSkillPreCrit=+0x8 / ActorSkill.critRate=+0x110 / critDamgeRate=+0xA8 / globalCrit=+0x15; **crit_flag lands at v30+506** (sub_1FDA454, [V]); `isCrit = rand()<critRate/100` [I — RNG comparison point not statically anchored];
- Multi-target split (sub_1D08F38:597): `per_target = (total<<14)/N` (Fix14, N=number of hit targets);
- Two damage paths: entry +88<=1 fixed value (+48); otherwise sub_13E43D8 formula evaluation (parameter types 1/2/3/8 dispatched); int formula engine sub_1401468: `total = Π(1+x)×(base+Σsub)×(1+Σmod)`.

### RPN attribute engine (FrameEngine::Common::RPN)
- Compile sub_3E91004 (recursive descent, whole-string tolower) → tokenize sub_3E8FE04 (`math.` 5-char special case) → operator lexing sub_3E95384 (`<=`/`<>`→`!=`/`>=`/`==`) → math name→id sub_3E9685C (floor=13…sqrt=20);
- Lowering sub_1563234 (AST→closure pairs, prefix name→eval function pointer into node +144/+160); cache sub_1561884 (map<string,LPtr<RPN>> @ 0x726C520, public entry sub_1561828/1854); eval sub_13E43D8 (node vector +80/+88, prefix id switch 1=att,2=att_owner,3=tar,8=buff_giver…→context object→sub_15635E0 single-item eval→sub_156F53C aggregation);
- 7 std::map registries (constructed in sub_11573DC): 0x726C430 actor attribute names (incl. base_ variants), 0x726C460 skill variables 85 entries, 0x726C4C0 prefix name→id (**kill=4 string obfuscated** `aSQsdBvBgqbtyFy`), 0x726C4F0 fixed variables 41 entries (attr_init_mp=1、attr_level=2、time=21、stack=22、level=43、cd1=45、cd2=46…), 0x726C520 compile cache;
- Numeric 14-bit fixed point (×16384, int64); `attr_init_mp` exception `<<28/163840000`;
- Attribute growth: HeroBaseAttrData (case715, 19 fields, template 0x186F7F0; attackValueBase/spellPowerBase/hpBase/mpBase/armorBase/spellResistBase/hpRecoverBase/mpRecoverBase/attackSpeedBase/speedBase/criDamageRateBase) + HeroAttrLevelData (case311, 13 fields, template 0x16FADB0; hpLv/mpLv/attackLv/apLv/armorLv/magicDefLv/hpRecoveryLv/mpRecoveryLv/attackSpeedLv/moveSpeedLv); model `attr(level)=base+(level−1)×Lv` [I];
- 4 verified formula strings: `kill.adratio*att.attr_attack*3` (Ornn template), `kill.basedamage+att.attr_magic*skill.apratio`, `att.attr_max_hp*1.3/100`, `if(att.attr_level<6){20;}else{…}`.

---

## Method Steps

### Step 1: VFS decryption (.vfs → embedded resources)
```bash
python3 decoders/vfs_decrypt.py <md5>.vfs --list      # print index (count + path/rel_off/block_size)
python3 decoders/vfs_decrypt.py <md5>.vfs --out DIR   # decrypt index + all blocks, written as <idx>_<path>
# or batch: python3 decoders/batch_vfs_decrypt.py (reads the gamedata/vfs-paths.json manifest)
```
Expected: 1,206/1,206 corpus files decode successfully, 49,946 embedded resources; block payloads start with the `fFFBA ` container in plaintext.

### Step 2: fFFBA container parsing (resource → record stream)
```bash
python3 decoders/fffba_parse.py <file.bytes> --json   # envelope/header/record stream/tail/string table
python3 decoders/fffba_parse.py --scan DIR            # full validation (99.1% parse rate)
python3 decoders/fffba_parse.py --types               # TYPE_SIZES 121-entry width distribution
```
Expected: envelope (prefix+FFBA marker+version) + header (v1 common 5B / v0 5×u32) + `[type][value]` record stream + tail ASCII string table; at unknown types a `stream_stop` (fallback_records preserved).

### Step 3: Flow graph node-level parsing (flow family / hero family)
```bash
python3 decoders/flow_parse.py <flow.bytes>           # three layers: envelope+header, body extended width table, tail (schema marker u32)
python3 decoders/flow_node_parse.py <flow.bytes> --json  # L4: packed decode + node splitting + shell names
python3 gamedata/hero-flow-census/flow_hero_parse.py --scan          # stats: files/heroes/categories/modes
python3 gamedata/hero-flow-census/flow_hero_parse.py --parse-all --jobs 8   # all 17,777 files ≈28s
python3 gamedata/hero-flow-census/flow_hero_parse.py --hero 10025    # single-hero breakdown
python3 gamedata/hero-flow-census/flow_hero_parse.py --deep <file>   # single-file 0x22 pool→string association
python3 gamedata/hero-flow-census/hero_sample_summarize.py 10001 10037 10007 10027 10029 10036 10059 10064 10072 10152
```
Expected: packed records `[family:8][value16:16]` (e.g. 0x130008=family 0x13 value 8); `[0x13 X][0x1b Y]`=FlowTransition; unknown types=0.

### Step 4: Field annotation pipeline (skill/buff)
```bash
cd gamedata/skill-buff-fields && python3 scripts/extract_ldata_fields.py
# output data/skills.json (7,244 entries), data/buffs.json (423 entries), data/stats.md
```
Core: `container_prefix()` splits the container header (tagged `container_N`) → payload records aligned in order to the case805(41)/case744(49) vocabularies; `fields` keys=vocabulary prop names / unknown_N / field_N.

### Step 5: Field map rebuild (74,152 entries)
```bash
cd gamedata/field-map && python3 build_field_map.py
# output FIELD-MAP.md / README.md / field-map.json / skill-buff-files.json
```
Dependencies are read-only inputs: `../ai-cfg-recovery-2026-08-04/{full/*.json, type-fields.json, dispatcher-881-cases.tsv, decrypted-samples/vfs-extracted}` (FEProj mirror: `gamedata/{full, semantic-configs, bindings-881}`).

### Step 6: Hero→skill mapping (optional recheck)
```bash
python3 - <<'EOF'
import json
m=json.load(open('gamedata/hero-skill-map/data/hero-id-name-map.json'))
print(m['10025'])  # ['twistedfate']
EOF
# Operate-file formula recheck: slot = id − heroId×100 ∈ {0..14} (all 1,016 files)
```

### Step 7: Native-side decompilation (damage/attribute/Buff/cost address anchoring)
```bash
# IDA 9.4 headless, rttext IDB (linear address == runtime VA)
idat -A -S"$PWD/scripts/dc_scan2.py" $PWD/ida-db/libFEProj-rttext.i64   # pattern scan
idat -A -S"$PWD/scripts/dc_dump2.py"  $PWD/ida-db/libFEProj-rttext.i64   # core decompilation
# getter disassembly (8-byte leaf functions LDR W0,[X0,#imm]; RET → field offsets); jump-table decode int32 PC-relative offsets
```
Anchors: critRate getter 0x18EB3CC / critDamgeRate 0x18E9F34 / globalCrit 0x18E95C4 / isPrecalCritByGroup 0x189C610 / isPreCrit 0x18F37F4 / useSkillPreCrit 0x18D6244; reduction-formula location: Fix64 100.0 constant 0x190000 + division + resist-shift scan (5,842-hit cross-filtering).

---

## Findings

1. **LData = the Lua data cache directory** (LuaFrameDataMgr/LuaHolder, `/Res/LData/`); `.vfs` is a **per-file encrypted resource cache**, the filename is the id (md5, not a plaintext path hash); internal resources are `.bytes` configs and string caches for hero/equip/rune/skill/workflow (`lgame_stringcacheinfo.vfs` etc.).
2. `.vfs` decryption is fully broken (1,206/1,206 files, two independent implementations byte-identical): 52B header + LCSecurity v1.4.4 CBC + 5 fixed key sets; plaintext index = resource path table.
3. Inner fFFBA container = `ParsedRecordItem` record-tree serialization (RTTI `N11FrameEngine6Common16ParsedRecordItemE`); record semantics are field-by-field [I], container layer [V].
4. 74,152 fields/records, 90.3% annotated (66,990): equip/rune configs 98.2%, flow entries 87.9%, heroes 100% (84.1% type semantics + 15.9% width-only), Skill raw 84.7%, Buff raw 87.0%.
5. `skillId = heroId×100 + slot` verified across the full corpus; 123 hero names mapped with zero ambiguity.
6. WorkFlow_Hero 17,777 files parsed 100% (unknown record types=0): the 0x00–0xff vocabulary built from the equip/skill/buff families fully covers the hero family.
7. TF card-pick three-color semantics (red slow / yellow stun / blue mana restore), ordinals 01/02/03, shared joystickIndex effect node; passive gold dual-variable chain.
8. Same-name passive non-stacking is decided in the **Lua/workflow layer** (canOverlay native single read point = getter); maxStack has no native comparison point.
9. Cost jump tables: 10 branches + default + state shortcuts + effect third dispatch; cost==6=primary resource (reconciled with the historical report).
10. **Armor reduction = raw×100/(armor+100)** (Fix14 evidenced); magic resist isomorphic; penetration flat-first-then-percent [I]; crit RNG comparison point not anchored (flag lands at v30+506 [V]).
11. Formula strings compiled and evaluated by the RPN engine, 14-bit fixed point; 7 registries (prefix/fixed variables/skill variables/attr names); attribute growth = base + (level−1)×Lv two-table model [I].
12. The full chain is reproducible: vfs_decrypt → fffba_parse → flow_parse/flow_node_parse → extract_ldata_fields/build_field_map → IDA rttext decompilation anchoring.

---

## Evidence Files

(paths: relative within the FEProj clone; parentheses give the original work-slice paths)
- `gamedata/field-map/FIELD-MAP.md` — field annotation dictionary (74,152/90.3% full table) (work/ldata-field-map-20260814/FIELD-MAP.md)
- `gamedata/field-map/build_field_map.py` — field map rebuild script (work/…/build_field_map.py)
- `gamedata/field-map/field-map.json`, `gamedata/field-map/skill-buff-files.json` — machine-readable annotation dictionary + 53/423 file manifest
- `gamedata/skill-buff-fields/README.md` (work/ldata-skill-buff-fields-20260822/README.md), `gamedata/skill-buff-fields/scripts/{fffba_parse.py, extract_ldata_fields.py}`, `gamedata/skill-buff-fields/data/{skills.json, buffs.json, stats.md}`
- `gamedata/hero-skill-map/README.md`, `data/hero-id-name-map.json`, `data/tf-skill-files.json`, `data/tear-family-inventory.json` (work/hero-skill-map-20260814/: SKILL-MAP.md is the full report)
- `gamedata/hero-flow-census/README.md`, `flow_hero_parse.py`, `hero-flow-census.json`, `hero-stats.json`, `hero_sample_summarize.py` (work/hero-flow-census-20260814/HERO-MECHANISMS.md is the full mechanism library)
- `gamedata/flow-block-syntax/`, `decoders/flow_parse.py`, work/flow-node-parser-20260814/{flow_node_parse.py, MECHANISMS.md, README.md} — L4 node-semantics layer and packed decoding
- `gamedata/bindings-881/dispatcher-881-cases.tsv` — 881-class binding vocabulary (case744/805/743/823/850/852)
- work/buff-unique-20260814/{README.md, COST-TABLE.md, UNIQUE-PASSIVE.md, decompiled/01-05*.c} — buff uniqueness + cost jump tables
- work/damage-core-20260814/{README.md, DAMAGE-MODEL.md, decompiled/core-*.c} — damage core
- work/semantics-damage-20260814/{README.md, ANNOTATED-MODEL.md, annotated/core-*.c} — 37-function annotated damage model
- work/attr-system-20260814/{README.md, ATTR-MODEL.md, var-registries.json} — RPN engine
- `decoders/vfs_decrypt.py`, `decoders/vfs_codec3.py`, `gamedata/vfs-paths.json`, `gamedata/vfs-keys.json`; work/ai-cfg-recovery-2026-08-04/{vfs-format.md, fffba-format.md, full_extract.py, semantic_label.py, full/*.json, dispatcher-881-cases.tsv, decrypted-samples/vfs-extracted/} — VFS/fFFBA format and corpus
- `MANIFEST.md`, `README.md` — FEProj top-level index (the gamedata row is this slice's conclusion summary)

---

## Reproduction Notes

1. **vfs header invariants**: `B==A+0x10`, `size==len(file)`, `magic2==magic` all hold for 1,205/1,205 files; the parser is fail-closed.
2. **`magic 01 03 01 xx` is not a magic number but a descriptor**: `{flag=0x01, codec=0x03, flags=0x01, subtype=xx}`, subtype selects the key; real decryption goes through the codec vtable indirection (qemu breakpoint 0x42e9a2c can capture it live).
3. **The FFBA marker exists in the binary only in XOR-0x30 form** (0x579F978); plaintext scans always come up empty — don't assert "no read path" from that.
4. **The prefix byte is not part of the marker**: v1='f'/v0='a2','93','b1','f0 xx','f1 xx','f2 xx'; prefix and version byte correspond 1:1 (31,764 v1 vs 16,931 v0).
5. **`container_prefix()` must inherit the round-16 fix**: container-header records must be tagged separately as `container_N`, otherwise positional alignment mislabels header records as schema fields (e.g. price).
6. **The very low parse_ok for Skill/Buff flows (0.9%/0.7%) is normal**: the record stream usually stops at an unknown-type byte (unknown_type stops 7179/7244, 420/423); annotation coverage is measured by "detected container-header prefix ∩ payload alignment", not by parse_ok.
7. **"payload record i ↔ vocabulary member i" is an [I] inference** (the equip corpus was verified through the serializer; Skill/Buff were not verified field by field); `hints.vocab_hits` substring hits are recall-biased and do not prove a field exists.
8. **MR-mode flow filenames contain a literal space** (`attack01_bullet 1.bytes`); do not normalize, keep them as-is.
9. **WR slot numbering and PC action-name numbering can be misaligned** (garen skill02 flow contains the `Skill03_E` action); trust the Operate file numeric ids, don't infer slots backwards from action names.
10. **The hero-skill SkillResObject numeric tables (WorkFlow/Skill/<heroId×100+slot>.bytes) are not in the corpus** (only 53 non-hero skill samples) — GAP-1; the mapping method is unaffected.
11. **All values are Fix14**: reading a raw u32 requires ÷16384 to get the true value; 100.0=0x190000, the 1638400 constant is the Fix14 of 100.0, not a magic number.
12. **The crit RNG comparison point is not statically anchored**: crit_flag is computed by the flow evaluator/bullet path and passed in as argument a14 (lands at v30+506); `rand()<critRate/100` is an [I] canonical form, don't write it as evidence.
13. **Penetration order "flat first, then percent" is [I]**: the `eff=|armor|×(1−pct)−flat` expression is evidenced in sub_1CFCBB4, but the multi-channel (0x26/0x27/0x36/0x37) merge point is not pinned down record by record.
14. **Cost jump-table entries are int32 PC-relative offsets** (base=table start); don't treat them as absolute addresses when decoding.
15. **The IDB working copy** (≈1.4GB) requires `cp work/key-functions-20260814/ida-db/libFEProj-rttext.i64` before use; independent of the MCP live IDB, no conflict; address convention delta=0.
16. **The flow tail u32 is a schema constant, not a checksum** (three twin streams differ in content by >1KB yet share the tail 0x1CEC); don't use it for integrity checking.
17. **Reproduction order**: first run `vfs_decrypt` to produce `decrypted-samples/vfs-extracted/`, then run `extract_ldata_fields.py`/`build_field_map.py` (they hardcode that directory); in the FEProj mirror `gamedata/*` already contains the products — consume them directly.
