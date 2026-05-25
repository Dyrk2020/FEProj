# Slice 08 — flow parsing and end-to-end chains (WorkFlow node parsing / flow block syntax / E2E tracing)

> Version baseline: package/build 7.2.0.2460/7246064 · resource 7.2.55.126 · arm64-v8a
> Source slices: `work/flow-node-parser-20260814/`, `work/flow-block-syntax-20260822/`, `work/e2e-trace-20260814/`, `work/hero-flow-census-20260814/`, `work/game-logic-guide-20260814/GUIDE.md` (all under `<research-workspace>/`); FEProj decoders `feproj-clone/decoders/`.
> Evidence markers carried over from the source: [V]=one-click reproducible count/byte evidence, [V-reader]=decompiler implementation fact, ✅=direct observation, [I]=inference, [GAP]=missing evidence.
> Scope: purely static RE methods (binary/metadata/Lua/LData/network protocols). Contains no anti-detection evasion, device fingerprinting, account/ban, stealth/honeypot, device-ID, Zygisk hiding, proxy rotation, or any similar content.

---

## Objective

This slice answers three parts of "how to statically read Wild Rift 7.2 gameplay mechanics":

1. **What hero flow files are**: `.bytes` files in the VFS such as `Assets/ABPack/Resources/WorkFlow_Hero_<heroId>_<rest>` are **binary flow-graph containers** (fFFBA envelope + container-header record stream + flow-node record stream + trailing string/offset-table/schema marker), read by libFEProj.so (FrameEngine) into `FrameEngine::Common::{Flow, FlowNode, FlowNodeEvaluator, FlowTransition}` objects; `WorkFlow/Scripts/**` is **another kind of thing** — the Lua combat-script bodies (25 `.res`, NEW_ACTION/NEW_EVALUATOR/NEW_CLASS/NEW_COMPONENT factory registrations + OnEnter/OnTick/Execute/Awake lifecycles), and the two complement each other.
2. **flow node parsing method** (flow_node_parse.py L4 layer): full body record stream across 0xf0 segments, packed `[family][value16]` value decoding, node segmentation, varShell naming, il2cpp field-table naming.
3. **flow block syntax settlement** (FLOWBLOCKS.md four questions) and **3 end-to-end gameplay chains** (input → 881 dispatcher → case template/message class → local landing point).

## Key Coordinates

### Version and address baseline
- `libFEProj.so`: 120,283,368 B, sha256 `5e608f2d…d1b8a02a`; **static VA < 0x6a5ba94 == file offset**; Ghidra rtproj = static VA + 0x100000; IDA rttext IDB == runtime VA (GUIDE.md §2).
- 881 class bindings: dispatcher runtime **0x1589ACC**; case stubs **0x1589AF4 + 12·case**; dispatcher jump-table base runtime **0x565CB50**.
- Class-binding name table: file offset **0x56BDBA0..0x56BE400**, same order as the cases, **XOR-0x30 stored** (`dec = raw ^ 0x30`); 0x565D000..0x5675xxx is the mixed region of all class names + member names (E2E-TRACE.md §0.3).
- FFBA marker rodata: libFEProj **0x579F978** (XOR-30 obfuscated, no static xref; the reader dispatches indirectly via a hash registry — round-23 §8.1).
- stringcacheinfo loading function: **sub_191F28C** (libFEProj.i64 session d0ddea50, located via the `Assets/ABPack/Resources/Tables/stringcacheinfo.txt` string xref).

### flow container grammar coordinates
- Envelope: prefix + `FFBA \x00` + version byte (v1 prefix `f`; v0 prefixes `a2/93/b1` or `f0/f1/f2+subtype`); `find_marker` searches for the marker within [0,3) (fffba_parse.py).
- Record width table: `TYPE_SIZES` **121 entries** (fffba_parse.py); body extension `FLOW_EXTRA_TYPES` (~120 3-byte types) + `TAIL_TYPES` (~19 types); `TERMINAL_TYPES = (0xF0,)`.
- Header anchors: config-type id **6312 = 0x18A8** (rides on 0x1b/0x13/0x1c records); payload tag **0x04:40**; 0xa2/0x62 = container-header size/count records (0xa2 width 4; 0x62 header width 4/body width 3).
- Record roles: 0x13 = u24 node/instance id (insId, dense range 0x0800-0x2000); 0x1b = u24 paired id (`[0x13 X][0x1b Y]` = FlowTransition{myNode,toNode}, il2cpp type 37376, 28% of 0x13 directly followed by 0x1b, 3,622 of 12,826); 0x22 = u32 value, **0x080000–0x09FFFF range = string-pool (pool) reference**; 0x5f/0x6f = 5-byte asset/variable hashes (0xF3FCB74A etc., shared across flows); 0x48 = 6-byte object hash; HASH_TYPES=(0x41,0x47,0x48,0x5F,0x6F,0x79,0x83).
- **Packed types carry values**: the high byte of a u24 value is itself a known record type ⇒ `[family-tag:8][value16:16]` (e.g. 0x130008=[0x13][0x0008], 0x840030=[0x84][0x0030]×213, 0x220101=[0x22][0x0101]×95); SUBSTANTIVE_FAMILIES 30 families; equip body 81,469/607,564 records (13.4%) [V]. 0xd0/0xd8/0xe0/0xe8/0x70/0x7c… are schema-variant spellings of records in the same family.
- Tail (L3): embedded printable strings (shell names/action names/formulas/asset paths) + offset table + zero padding + **final 4-byte schema marker u32 LE** (not a content checksum; three twin flows with content differing by >1KB share tail 0x1CEC, all five QuicksilverSash_buff end in 0x0F12).
- il2cpp field table: `flow_classes_fields.json` **1115 Flow\* classes**, fields in declaration order (S1 convention); node classes: FlowNode{stopping,tickCount,flow,m_customFlow,position,originPos,transitions,_status,nextNode}, FlowNodeEvaluator{evaluators}, FlowNodeDuration{duration,infinity,tracks,actions,elapsedTime}, FlowActionSISApplyBuff{sharedTarget,buffID,sharedBuffEntity}, FlowActionSISCreateBullet{bulletID,bulletFlowPath,sharedEmitPos,joint,offset,emitType,…}, FlowNodeResObject{id,outputNewVariableList,position,ignore,name}, ParallelFlowTransition{name,enable,current,nextNodes}.

### flow block syntax (FLOWBLOCKS.md) coordinates
- Tail dual tables: **dec24** (u24 LE strictly decreasing, step ≈ small struct size, judged to be the global varshell object-arena addresses, [I pending reader confirmation]) + **inc32** (u32 LE strictly increasing, **adjacent differences == corresponding string lengths ⇒ global string-pool offset table**).
- Canonical anchor: `ownergiverbuffLayerCount` (CANON, 3 names with lengths 5/5/14); canonical check `deltas[:3]==(5,5,14)`, afterwards only `deltas[3:]` is consumed for forward splitting.
- Tail table true grammar: **5-byte record `[0x22][u16 A][u16 B]`** (run22), A column increasing (3 non-strict violations in the stored data).
- Reader facts: sub_191F28C = getline line-by-line → split(`,` delim=44) → `atoi(fields[0])` as id → remaining columns stitched back verbatim into `std::map<int,string>`; **inline blocks have no grammar**; 16B prefix = first line `\xfb\x3c`+BOM+`0` producing a benign garbage entry with id=0; **no id-generation algorithm exists at runtime** (ids are literal decimal data); switches `useStringCacheMode`/`logicUseStringCache`.

### Census coordinates (hero-flow-census)
- **17,777 files / 146 heroes / err=0 / 428,267 node blocks / 6,009,785 body records / 682,920 strings / 902,598 packed (15.0%) / 383,183 transition edges / unknown types=0** (100% type annotation).
- Categories: base 1,441 / flow 9,389 / operate 1,016 / skin 5,931; modes: BASE 12,681 · MR 2,288 · CHERRY 692 · HEXARAM 659 · ARUSB 243 · OLDHEXA 243 · DOG 180 · QUICK 150 · TIGER 149 · ARAM 142 · DS 130 · SUM 129 · URF 86 · BULL 5.
- TF (10025) card picking: the three-color card flows share a joystickIndex effect node **id=0xf00**, card index embedded in the effect asset names (red=01/gold=02/blue=03, `01_01e_topV` etc.); `skill02_bt` 29 nodes/589 records carry the card-picking decision tree, node **0x5e830 = `Play_Twistedfate_Skill02_Bluecard_Select`**; red=jiansu (`FX_public_jiansu_hold01` + slowrate P+0.05, red_radius 2.75 + actorlist AoE), yellow=xuanyun (`DeBuff_YunXuan`+stun), blue=mana; `skill02_buff01..03` three-color icons (wllIcon/ + p02_Flip), buff04 Mark caster.
- TF passive chain: passive(26 nodes, deadActor/caster) → loadeddice_e_proc(10 nodes, GoldValue=tf_e_gold_total) → addmoney(20 nodes, **tf_passive_gold_total** accumulator); dual gold variables coexist [V strings/I division of labor].
- Skill id formula: **skillId = heroId×100 + slot** (zero counterexamples across 1016 Operate files, slot∈{0..14}); TF W=1002502.

### E2E chain coordinates
- Chain ① skill cast: case5 → stub 0x1589B30 → template **sub_158D8D0** (BattleActorUseMultiSkillMsg, class name@0x56BDC7A, member castSkill@0x56BDC96); mangled `FrameEngine::Logic::BattleActorUseMultiSkillMsg`@0x568E230, `LgcMsg_EVENT_USE_MULTI_SKILL`@0x568E200; FlowActionUseMultiSkillTrigger@0x57F95A0 (5 callbacks OnUseMultiFire/Split/Scatter/Ghost/AutoCastSkill @0x57F94A0..0x57F9562); sync interface IFlowActionUseMultiSkillTriggerSync@0x5748520; SkillManager(case15 sub_158EE34), ActorSkill(case850 sub_163EA54 48 props), SkillResObject(case805 sub_16342D0 41 props), SkillUseObj(case852 sub_16403A8).
- Chain ② BUFF: case9 ApplyBuffMsg → **sub_158E210** (name table@0x56BDD00), case6 RemoveBuffMsg → **sub_158DB18** (@0x56BDCA0); mangled @0x56956B0/@0x5695640; BuffManager(case14 sub_158EADC, buffList@0x56BDD60), ActorBuff(case823 sub_163841C 29 props), BuffResObject(case744 sub_162787C 49 props), BuffLevelData(case743); FlowActionRecordStateData_OnApplyBuff/OnHurt type-name registrations (CALLERS.md §2.3 / rr_caller_12c5304.c).
- Chain ③ type=07 sync: 14,725 frames / 14.7fps / 94.6% of downlink; `[head4][CRC32][cmd=07][seq][12B message-body header][5B record×N][0d/0e event block]`; msgseq = low 28 bits of head4 − 43; 12B header = [u32 frame seq][02][00][u8 density tier][u8 focus]; 5B record = `03 01 [u16 value][u8 player index]`; focus=X = {0..10}−{X} (verified per tier over all 14,725 frames); 14-unit sliding window (7 old + 7 new, adjacent-frame overlap ≥6 cells, 7,693 pairs exhaustive); 0e block `0e 65 03 00 00 [6B counter] ff ff ff ff`, counter = frame number × 2³², rate 63.15e9/s ≈ 2³²×14.7fps, median frame interval 68ms; receiving side `BattleNetworkRevMsgBuffer`@0x56797CB, FrameData@0x56793A0, FEDataSyncMsg@0x5677F40, FEMsg_FrameSync_OnFramesMiss@0x5761EB0/OnFramesPushed@0x5761EF0, UnityHook_OnBattleAwake_FrameData@0x5761F30/NonFrameData@0x5761F80, IDataFrameSync@0x56B9080, DataFrame(case397 sub_15DE540, fns battle/tmpSyncObjs/actorEventMgr/…), LuaFrameDataMgr(case26 sub_1590930, structMaker/luaMap@0x56BDE9C/0x56BDEA8), LuaStructMaker(case25 sub_1590690); LuaStruct.res.lua:26 layout string `"1,0,4,field1,2,4,8,field2,…"`; il2cpp CSRoomSyncFrameS{dwFrameSeq,nPlayerInputNum,astPlayerInputData}, SyncMsgC{construct/pack/unpack}.
- Network uplink (UplinkDecode): ch=06 subtypes `010410` level-up (12 records `[u16 id][u16 level×2][00 00][crc]`, ids 8,578..9,724 incrementing +1 per level), `0104cd` entity interaction (90 records, X=0..10 players + 36/50/68/78/84 monsters/lanes), `010301` position (8,274 records, u16 LE vertical position + 0xffff death sentinel); downlink echo `04 cd` 90/90, `0d 0c` byte-identical; 0d block = `0d 0c 06 XX 01 YY 09 65 ZZ 06 00 00 00 00`, u24 counter = 615,550+2×seq; 1 LSB=0.11444 units, walking 327 u/s, sprinting 817 u/s, player 0 = local client (six independent evidence strands), uplink/downlink 400ms match 13.8%, median latency ~86ms.
- Key quantitative-rejection numbers: Jaccard mean **0.9765**/median 1.0/93.55% identical (byte-identical 0/400); owner→986 distinct ids (2,230 files); gcd≤64 for 98.92%; run22 detected **26,053/48,695 (53.5%)**; tailrun four candidates: T1 5.48% (63,630/1,162,107), T2 102/24,529, T3 0.04%/0.06%/0.13%, T4 median 1.857/1.5; a2 constant cluster 62 sites, preceding byte 0x04 ×62, ±3 signature 36/49 identical; inc32 anchored 255/1,367, deltas∈[1,64] 255/255, names_ok 49/255.

## Method Steps (Reproducible)

### 1) Single-file flow node parsing (flow-node-parser slice)
```bash
cd work/flow-node-parser-20260814
python3 flow_node_parse.py <flow.bytes>              # human-readable: size/nodes/records/strings
python3 flow_node_parse.py --json <flow.bytes>       # full JSON (body records+node blocks+transitions+pool refs)
python3 flow_node_parse.py --census <...>/full/equips.json   # full census
# Expected: flows_total=2043 parsed=2043 err=0 nodes_total=35274 records_total=607564
#       strings_total=17088 packed_total=81469 (same values in census-cli.json)
```
Parsing pipeline: `parse_bytes()` (L1-L3 reusing flow_parse.py) → `full_body_records()` (full record stream across 0xf0 segments, extended width table FLOW_TYPE_SIZES) → `classify_record()` (packed [family][value16] decoding + TYPE_SEMANTICS semantic labels) → `segment_nodes()` (is_node_start: 0x13 kind∈{0x01..0x08,0xE0} or kind=0 with low16∈0x0800-0x5000, or packed family∈{0x13,0x17}) → `shell_names()` (string table; 0x22 pool reference 0x08xxxx appearance order ↔ string-table order [V]).

### 2) Full hero-flow census (hero-flow-census slice)
```bash
cd work/hero-flow-census-20260814
python3 flow_hero_parse.py --scan                         # count files/heroes/categories/modes
python3 flow_hero_parse.py --parse-all --jobs 8          # 17,777 files, ~28s/8 processes
python3 flow_hero_parse.py --hero 10025                  # single-hero detail (TF)
python3 flow_hero_parse.py --deep <vfs file name>        # single-file pool refs → string association
python3 hero_sample_summarize.py 10001 10037 10007 10027 10029 10036 10059 10064 10072 10152
# Expected: hero-stats.json total = files 17777 / parsed 17777 / err 0 / nodes 428267 /
#       records 6009785 / strings 682920 / packed 902598 / unknown 0 / transitions 383183 / heroes 146
```
Filename metadata: `(?:DataLayerCombined_<MODE>_)?WorkFlow_Hero_<heroId>_<rest>`; category judged by `Flow_|ParallelFlow_`/`Operate_`/`Skin_`/bare heroId; flow suffix split by longest prefix from hero-id-name-map.json (123 names).

### 3) flow block syntax four questions (flow-block-syntax slice, post-2026-08-23-audit baseline)
```bash
cd work/flow-block-syntax-20260822/scripts
VD=../../ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted   # 49,946 decrypted VFS files
python3 scan_flows.py "$VD/" -o ../data/scan.jsonl    # full-corpus scan, ~6 min (scan.jsonl ships with the slice; can be skipped)
python3 analyze_duplicates.py --corpus "$VD"          # expected: jaccard_mean=0.9765, frac_identical=0.9355,
                                                     #       owner->986 ids/2230 files, gcd_le64_fraction=0.9892
# (a)/(b) tail anchoring statistics (equip subcorpus)
ls "$VD" | grep 'Resources_NewFlows_Skill_Equip_' > /tmp/eq.txt
python3 - "$VD" <<'EOF'
import os, sys
vd = sys.argv[1]
files = [os.path.join(vd, l.strip()) for l in open('/tmp/eq.txt')]
sys.argv = ['tailref.py', '--stats'] + files
exec(open('tailref.py').read())
EOF
# Expected: anchored=255/1367, all_delta_1_64=255(100%), names_ok=49
python3 tailref.py --names "$VD/16cb8fc9f0bb1e3df75ed148e5a2e3a7.vfs__133_Assets_ABPack_Resources_NewFlows_Skill_Equip_DeadmansPlate_buff3.bytes"
# Expected: [owner, giver, buffLayerCount, flow, attacker]
python3 tailref.py --names "$VD/acb53cf72066ac2291553a83f646fbae.vfs__001_Assets_ABPack_Resources_NewFlows_Skill_Equip_8903_DeathsDance_ForeverYordle_remove.bytes"
# Expected: null (deltas=(5,14) does not satisfy the (5,5,14) canonical form, so pool-interval files are rejected by the reduction — correct behavior after the fix)
python3 scripts/tailrun_tests.py        # all four candidates rejected: 5.48% / 102-24529 / ≤0.0013 / 1.857·1.5
python3 scripts/dump_reader_evidence.py # sub_191F28C disassembly evidence to disk: asm_lines≈197, resolved_calls=4
# (d) a2 constant-cluster full-corpus count (expected token=62, preceding byte 0x04 ×62)
python3 - "$VD" <<'EOF'
import os, sys, collections
vd = sys.argv[1]; pat = bytes.fromhex('a201222804'); n = 0; pre = collections.Counter()
for f in os.listdir(vd):
    d = open(os.path.join(vd, f), 'rb').read(); i = d.find(pat)
    while i != -1:
        n += 1; pre[d[i-1]] += 1; i = d.find(pat, i+1)
print('token count:', n, 'preceding byte:', dict(pre))
EOF
```

### 4) E2E chain tracing (e2e-trace slice, 5-step method)
1. Define the chain: starting point = Lua script symbol (skill cast/Buff/frame sync).
2. Lua-side location: `grep -n 'BattleActor\|Skill\|Buff\|FrameEngine\|Adapter' work/lua-decompile-20260814/**/*.lua` (FrameEngine read at 12 sites, LgcEventManagerAdapter/ActorEventManagerAdapter registrations, OnAction\* hooks, PathHashMap.res.lua:56 workflow path).
3. Binding mapping: `work/feproj-extended-20260814/BINDINGS.md` §1 (881 case table) + `bindings/dispatcher-881-cases.tsv` (member-name column) map Lua symbols to case → stub → template function; close the class-name↔C++-type loop against read-only strings:
```python
d = open('corpus/native-elf/decompressed-arm64/libFEProj.so','rb').read()
print(bytes(b ^ 0x30 for b in d[0x56bdc7a:0x56bdc7a+27]))  # -> b'BattleActorUseMultiSkillMsg'
print(d[0x568e230:0x568e230+50])  # -> b'N11FrameEngine5Logic27BattleActorUseMultiSkillMsgE...'
```
4. Numeric layer: `work/ai-cfg-recovery-2026-08-04/full/equips.json` (EquipResObject 1,369 items already annotated with paradigms) + `vfs-paths.json` (WorkFlow/Skill 53, WorkFlow/Buff 423 file manifests); field-level annotation in `work/ldata-skill-buff-fields-20260822/` (C3 closed: Skill 7,244 + Buff 423 all hit on disk).
5. Network layer: `reports/2026-08-12_wild-rift-7.2-type07-sync-parse.md` + `work/type07-parse-20260812/` + `work/match-dataflow-20260812/UplinkDecode/` + `work/il2cpp-readable-20260814/classes.md` (TDR protocol class signatures). Mark each link ✅/[V]/[I]/[GAP].

### 5) FEProj decoders (feproj-clone/decoders/)
```bash
python3 flow_parse.py FILE... | --json FILE | --validate CORPUS_DIR   # --validate walks the flow members of full/{equips,runes,heroes}.json
python3 fffba_parse.py FILE... | --scan DIR | --types                  # --types prints the 121-entry width table
```
`feproj-clone/gamedata/flow-block-syntax/` (scripts/ + tailrun-tests.json + demo-names-\* + evidence/) and `gamedata/hero-flow-census/` (hero-flow-census.json / hero-stats.json / flow_hero_parse.py) are in-repo copies of this slice's outputs, directly reusable.

## Findings

### A. What hero flow files are
- `WorkFlow_Hero_*` (17,777 files): **binary flow graphs**, one set of skill/passive/skin/operate flows per hero, parsed C++-side into Flow/FlowNode/FlowNodeEvaluator/FlowTransition objects; `WorkFlow/Skill` (53) and `WorkFlow/Buff` (423) are the same family; `NewFlows/Skill/Equip` (2,043 flows) shares the grammar.
- `WorkFlow/Scripts/**`: **Lua combat-script bodies** (25 .res, what E2E gap C2 refers to), factories such as `NEW_ACTION("AddComponentToActor")` + OnEnter/OnTick/Execute lifecycle; 7.2.55.126 new format (16B header: b0=srcLen+14, b4=nup, b6=code_words+2, b10=maxstacksize, b11=numparams; instructions u16-swapped `executed=(w<<16)|(w>>16)` then ROR29; nested function bodies plain ROR29 + 5B hdr5(ld/ll/np/ms/va) + RETURN anchor; const tags 0x09/0x11 = 8B LE signed; strings XOR-k32).
- flow file = envelope(fFFBA) + container-header record stream + body node record stream + tail (string table/dec24/inc32/run22/u16 small arrays/zero padding/final 4B schema marker).

### B. Node-parser method (L4)
- Full body record stream read across 0xf0 segments (flow_parse.py only reads the first segment); packed value grammar `[family-tag:8][value16:16]` fully consistent (equip 81,469 records), interprets all variant type bytes.
- Node segmentation: 0x13-family id records anchor; transition edges `[0x13 X][0x1b Y]` = FlowTransition; field names = il2cpp Flow\* class field declaration order; varShell names = tail string table (order ↔ 0x22 pool reference group order, evidenced by Chargeblade 6 refs↔6 names, BotRK 19 names, Youmuus 10 names).
- Unknown-type closure: 0xa2/0x62 = container-header size/count records (v1 header 0xa2, v0 header 0x62/0x93); 0x90 = body variant carrying packed records.
- Coverage: equip/skill/buff 2,519 files 100% parsed (39,587 nodes/648,456 records), hero family 17,777 files unknown types=0.

### C. flow block syntax (four questions, three states)
- **(a) 0x22 pool references ↔ in-file string table: no single-file static formula** (content-keyed/fixed-slot-grid/in-file-linear three model classes quantitatively rejected); the coordinates are products of the **build-time global mirror layout**, deterministically reproducible per content version (Jaccard 0.9765, 93.55% identical, whole-file bytes 0/400 identical); tail **inc32 table = global string-pool offsets** (anchored by in-file adjacent differences == string lengths), enabling delimiter-free name-table splitting (canonical check deltas[:3]==(5,5,14)). Applicable to: NewFlows/Skill/Equip, WorkFlow_Hero, DataLayerCombined variants; **the 423 WorkFlow_Buff files lack anchored structure and were moved out**.
- **(b) Tail increasing-offset runs: true grammar = 5-byte record `[0x22][u16 A][u16 B]`** (A column increasing); the four semantic candidates (node sizes/node offsets/pool offsets/edge tables) **all rejected** by reproducible checks (T1 5.48%, T2 102/24,529, T3 ≤0.13%, T4 1.857/1.5); tail tables between same-version copies are almost always deterministically reproduced (≥3 copies: 634 groups identical/5 different) → consistent with the build-time global mirror.
- **(c) stringcacheinfo: inline blocks have no grammar** — the reader goes line by line, splits on `,`, `atoi(id)`, remaining bytes stored verbatim into `std::map<int,string>`; the 16B prefix is just a benign garbage id=0 entry; no runtime id-generation algorithm exists ([V-reader] sub_191F28C).
- **(d) 0xa2:0x4282201 = fixed constant cluster inside the shared evaluator template** (all 62 sites in buff-family flows, preceding byte always 0x04, ±3 record signature 36/49 identical; size/count candidates rejected); 0x90:0x2 is a small counting value (prev∈{0x06,0x07}, next=0x05, 7 occurrences).

### D. Three end-to-end chains (input→dispatcher→handler→local landing point)
- **① Skill cast**: Lua (FlowAction.res.lua:72 and 12 other sites read FrameEngine; event_manager.res.lua:32-34 registrations) → dispatcher 0x1589ACC case5 → sub_158D8D0 → `BattleActorUseMultiSkillMsg`/`LgcMsg_EVENT_USE_MULTI_SKILL` (FrameEngine::Logic) → FlowActionUseMultiSkillTrigger 5 callbacks + Sync interface → SkillManager/ActorSkill(48 props)/SkillResObject(41 props) → LData WorkFlow/Skill 53 files → network uplink 010410/0104cd/010301 + downlink echo.
- **② BUFF add/remove**: Lua workflow-script registration (PathHashMap.res.lua:56) → case9/case6 (ApplyBuffMsg/RemoveBuffMsg) → BuffManager/ActorBuff(29 props)/BuffResObject(49 props)/BuffLevelData → WorkFlow/Buff 423 files → network 0d block echo (entity XX + u24 counter = 615,550+2×seq; 0e block frame clock = frame number × 2³²).
- **③ type=07 position sync**: server frames (14,725 frames, 12B header + 5B records + focus exclusion + 14-unit sliding window) → BattleNetworkRevMsgBuffer/FrameData/FEMsgQueue.msgSeq → DataFrame.tmpSyncObjs → LuaFrameDataMgr.structMaker/luaMap + LuaStruct layout strings → Lua reads; cross-checked against uplink 010301 (player 0 = local client, six evidence strands).
- Gap closure status (2026-08-23 wrap-up note): C1/C5 → case-template-decomp-20260822 (19 templates + 813 closures; castSkill accessor = +0x10, buff accessor = +0x10, tmpSyncObj getter-only @+0x18); C3 → ldata-skill-buff-fields-20260822; C2 → lua-scripts-full-20260814. **Only remaining C4 = runtime Metalib / BattleNetworkRevMsgBuffer memory layout**.

### E. Open gaps
1. Tail-table `[0x22][u16][u16]` **B-column semantics** (four candidates rejected; conjectured global-mirror index pair, needs C++ reader/runtime).
2. **Exact meaning of 0xa2:0x4282201** (packed numeric constant inside the shared template; bytes 01 22 28 04 suspected to be a multi-field mini-payload, needs runtime breakpoint); 0x90:0x2/0x6 counting objects undetermined.
3. 0x22 pool id → string-name conversion: not statically closable (needs replay of build-time global varshell/string-mirror allocation).
4. Node-boundary semantics need reader-level confirmation (0xf0 segment-stream leading id table, packed field meanings; FFBA marker has no static xref).
5. 0x5f/0x6f/0x48 asset-hash algorithm unverified (not CRC32/FNV/DJB2/SDBM/JS/ELF/31; xxhash32/murmur2/FNV-1a-64 untried).
6. inc32 occasional ±1 drift (castSkillIds length 12 vs delta 11), 0xf0 prefix u16 markers (f0 07/f0 03), XOR-masked string (MU~N family) key derivation, dec24 object sizes (hand-checked step vs full dominant-value difference ×0x100, [I]).
7. Physical semantics of type=07 5B-record u16 values (3-G1), frame-by-frame identity of uplink 010301 and downlink record u16s (3-G2, pairing script missing), 0d/0e block events ↔ Buff/skill correspondence (2-G3/3-G4).

## Evidence Files (relative paths)

### Research area (<research-workspace>/)
- `work/flow-node-parser-20260814/README.md` — vocabulary extensions/method/leftovers (§6)
- `work/flow-node-parser-20260814/MECHANISMS.md` — three mechanism chains node-level expansion + unknown-type conclusions + coverage + full statistics tables
- `work/flow-node-parser-20260814/flow_node_parse.py` — L4 node-level parser (full_body_records/classify_record/segment_nodes/shell_names/census)
- `work/flow-node-parser-20260814/census-summary.json` / `census-cli.json` — equip 2,043/skill 53/buff 423 statistics and per-family packed distributions
- `work/flow-node-parser-20260814/chain1-chargeblade.json` / `chain2-botrk.json` / `chain3-youmuus.json` — three chains full node expansion
- `work/flow-node-parser-20260814/flow_classes_fields.json` — il2cpp Flow\* class field table (1115 classes)
- `work/flow-block-syntax-20260822/FLOWBLOCKS.md` — four-question three-state conclusions + audit errata summary (including all corrected numbers)
- `work/flow-block-syntax-20260822/README.md` — reproduction commands and expected outputs
- `work/flow-block-syntax-20260822/scripts/{scan_flows.py, tailref.py, analyze_duplicates.py, tailrun_tests.py, dump_reader_evidence.py}` — scan/anchor/copy-determinism/four-candidate-check/reader-evidence generators
- `work/flow-block-syntax-20260822/data/scan.jsonl` (48,695 ok rows), `data/tailrun-tests.json` (four-candidate numbers), `data/demo-names-{blackcloak-buff1,deadmansplate-buff3,deathsdance-remove}.json`
- `work/flow-block-syntax-20260822/evidence/sub_191F28C.asm` / `sub_191F28C.json` — stringcacheinfo reader disassembly evidence
- `work/e2e-trace-20260814/E2E-TRACE.md` / `README.md` — 3 chains per-link evidence tables + gap list + 5-step method
- `work/hero-flow-census-20260814/README.md` / `HERO-MECHANISMS.md` — 17,777-file census + TF card-picking/passive node-level semantics + leftovers §5
- `work/hero-flow-census-20260814/hero-stats.json` (total block), `hero-flow-census.json` (per-file), `flow_hero_parse.py`, `sample-heroes.json`, `hero_sample_summarize.py`
- `work/game-logic-guide-20260814/GUIDE.md` — master index (§4 artifact table, §5 gap #3 reconciliation, §7 batch history)
- `work/lua-scripts-full-20260814/MANIFEST.md` + `scripts/*.lua` (25 WorkFlow/Scripts combat-script decompilations)
- `work/ldata-skill-buff-fields-20260822/` (C3: skills.json/buffs.json/stats.md) and `work/case-template-decomp-20260822/CASE-MODELS.md` (C1/C5)

### FEProj repo (feproj-clone/)
- `decoders/flow_parse.py` — flow container parsing v2 (round-23; L1-L3 + byte accounting complete/accounting_delta + parse_flow node inference)
- `decoders/fffba_parse.py` — fFFBA container parsing (TYPE_SIZES 121 entries, five-way ok decomposition, candidate flow-start heuristic)
- `gamedata/flow-block-syntax/` (scripts/ + tailrun-tests.json + demo-names-\* + evidence/sub_191F28C.\*) — block-syntax output copies
- `gamedata/hero-flow-census/` (hero-flow-census.json / hero-stats.json / flow_hero_parse.py) — census output copies

## Reproduction Notes (pitfalls)

1. **Numbers follow the post-2026-08-23 audit**: run22 detected 39,053→**26,053/48,695 (53.5%)**; names_ok 92→**49/255** (old values came from a defective segmentation baseline); dec24 object-size determination downgraded to [I]; the §b.2 rejection table must be rebuilt with `tailrun_tests.py` (files_used=24,529).
2. **tailref off-by-one**: the `ownergiverbuffLayerCount` anchor covers the first three names (deltas[:3] must ==(5,5,14)), only `deltas[3:]` may be consumed; pool-interval/drift files are **rejected for splitting** (deathsdance outputting null is correct behavior, not a bug).
3. **Counting baselines must not be mixed**: MECHANISMS §6.1 (container-header record stream 561/4,780/26,876) and §6.2 (full body record stream 5,036/35,856/607,564) are two different baselines; census-summary.json uses the §6.2 baseline.
4. **MR-mode filenames contain literal spaces** (`Flow_twistedfate_attack01_bullet 1.bytes`); the parser keeps them verbatim without normalization — beware when grouping across modes.
5. **Marker reading**: the tail schema marker must be the final 4 bytes as u32 LE (marker_width=4); the historical `u24()` read is SUPERSEDED. `complete` holds only when intervals exactly cover [0,len); `residual==0` does not mean semantically complete.
6. **run22 A column** is a "non-strictly increasing" criterion (3 corpus violations), not strictly monotonic; inc32 occasional ±1 drift (suspected terminator/length prefix) is not settled.
7. **Address baseline**: static VA < 0x6a5ba94 == file offset; Ghidra rtproj = +0x100000; IDA rttext IDB == runtime VA; libil2cpp-reported coordinates = static VA + 0x100000; class-name table file offset = runtime VA + 0x60000. Name table/member strings are ^0x30 stored.
8. **E2E evidence grading**: the 22 .res are scaffolding (47-59% [LOW-CONF], only constant/register-level trustworthy); the combat-script bodies live in WorkFlow/Scripts (25 decompiled); keep the ✅/[V]/[I]/[GAP] distinction when citing, never treat [I] as evidence.
9. **Applicability boundary**: pool/inc32 formulas apply only to NewFlows/Skill/Equip, WorkFlow_Hero, DataLayerCombined variants; WorkFlow_Buff (423) has no anchored structure; the legacy WorkFlow/Equip family references varShell via the tail u32 table (no 0x08xxxx), not applicable.
10. **Corpus location**: the decrypted VFS corpus is at `work/ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted/` (49,946 files); feproj-clone holds output copies (gamedata/) without the 130MB scan.jsonl or the raw corpus — rerun in the research area when needed.
11. **Exclusion boundary**: this digest contains no anti-detection evasion/device fingerprinting/account-related content; qemu dynamic-execution techniques are in the qemu-sim FEProj slice, not here.