# Slice-03: 881-class Lua binding (dispatcher / template factories / member handles / global name mapping)
> Version 7.2.0.2460/7246064 · resource 7.2.55.126 · arm64-v8a · target binary `libFEProj-rttext.so` (120,283,368 B, file offset == static VA). Pure static RE methodology; no anti-detection/ban/fingerprint content.

## Objective
Explain how the 881 C++ classes in FEProj are exposed to Lua: dispatcher → case stubs → template factory → member handle (16B userdata) → dispatch closure → native field offsets; and how to go from a single name on the Lua side (class name or member name) back to the case number, template function address, and C++ struct offset.

## Key Coordinates
(Unless noted otherwise, runtime VA == rttext file offset; Ghidra rtproj = runtime VA + 0x100000; IDA rttext IDB == runtime VA)

### Dispatcher and jump table
- dispatcher entry: `0x1589ACC` (first instruction `fd 7b bf a9` = stp x29,x30,[sp,#-0x10]!)
- case stubs: `0x1589AF4 + 12·case` (case0=0x1589AF4, case880=0x158C434), 12 bytes/stub, branch to template function
- jump table (file offset): `file[0x56BCB50 + 4·case] ^ 0x30303030 → table entry`; `stub table base = 0x565CB50` (adding the table entry to 0x565CB50 yields the runtime target; differs from the file offset by 0x60000 [INFERENCE, ADRP reference reconciliation])
- template function range: `0x158C558 .. 0x1649C84`, 881 entries, sizes 256..1984 B (TSV fn_size column)

### Class name table (case order)
- File range `0x56BD000 .. 0x56C0000`, XOR-0x30 (dec = raw ^ 0x30, encoded NUL=0x30), 0x30-terminated XOR stream; in the same order as the case numbers
- Template ADRP+ADD references land in runtime `0x565D000..0x5676000`; `GainDeckAssetObject`: reference 0x565D9EC ↔ file 0x56BD9EC (delta 0x60000); dispatcher table likewise 0x565CB50 ↔ 0x56BCB50
- Plaintext pool also saved: `ActorBuff`@0x56726BE, `SkillUseObj`@0x567356C, `FixTransform`@0x56740F1, mangled `N11FrameEngine15FEBattleContextE`@0x5676690

### Registration chain / helpers (file offset == Ghidra display coordinate)
- Registration chain: `lua_atpanic(L,handler)` → `lua_getglobal(L,"_G")` → `gate_check` → `beginClass(class name,typeinfo)` → member registration
- GOT trampolines (runtime): lua_atpanic 0x114BA40, lua_getglobal 0x1151AA0, refcount 0x114C4D0, registration helpers 0x114CBA0/0x114EC90/0x114F120 (16B veneer; real implementation resolved at runtime via GOT [INFERENCE])
- Gating `gate_check`: runtime 0x164AA04 / Ghidra 0x174AA04 (case0 call site gate_check(&uStack_40); error branch bl 0x1250920 + 0x56FEBD8/0x571B104 cluster)
- beginClass template: Ghidra `beginclass_tmpl` 0x174AB04 (4 args, 4th arg typeinfo == `0x736d101` is the recognition anchor); beginClass instances runtime 0x164AB04/0x16A8A28 cluster
- Member registration helpers: Ghidra 0x174A684 (props, 6 args (class,name,getter,0[,setter,0])), 0x174CBA0 (fn closure slot allocation), 0x174EC90, 0x174F120 (method name registration, 2× per method name)

### 16-byte member handle and dispatch closure
- Member handle = `lua_newuserdata(L, 0x10)`: `{member_fn_ptr, tagged_offset}` (*ud = fn; ud[1] = 0 or tag)
- lv2 dispatch body semantics (case5 ..._lv2_1752ba4): `pc = *ud; if (ud[1]&1) pc = *(pc + *(this + (ud[1]>>1)))` — the second word is a tagged value of "whether this-adjustment applies" (when tag&1 is set, the function pointer is fetched indirectly through this+offset)
- Shared host-resolution helper: Ghidra 0x174B938 (lua_getmetatable + rawgetp(0xc07/0xdad) validation chain; result dereferences *(obj+8) to obtain the target this)
- Host-outer-closure fetch (case5 sub1752b30): `luaL_check args → 0x174B938(L,1,get_tag 0x736d206,set_tag 0x736d205,1) → *(lVar2+8) = this`; message class get/set tags are 'sm'-family magic (0x736d2xx, [I])
- Return wrapping: `func_0x0174cd64(L, val, 0x736d207)` (wrap pushes tag back), null → lua_pushnil

### Typical class offsets ([V], all from single-line accessor bodies in closures/*.c)
- case5 `BattleActorUseMultiSkillMsg.castSkill` (method, get+set double registration): handle fn 0x1752764 → `return *(this+0x10)` — castSkill @ +0x10
- case6 `BattleActorRemoveBuffMsg.buff`: fn 0x1752c54 → this+0x10 pointer; if non-null goes through func_0x01E0466C (release/detach); case9 `BattleActorApplyBuffMsg.buff`: fn 0x1753f64 same +0x10 (all three fn_size 484, same message-layout template)
- case14 `BuffManager`: actor=+0x8 (fn 0x175655C), buffList=+0x10 (fn 0x1756564); case15 `SkillManager` isomorphic actor=+0x8 / skillList=+0x10 (same CRTP template instantiation)
- case16 `Actor`: battleActor=+0x10, skillMgr=+0x18, buffMgr=+0x20 (contiguous pointer-array style)
- case25 `LuaStructMaker`: typeUseIndex=+0x8 u32, structAllocIndex=+0xC u32, structMap=embedded in object at +0x10 (returns sub-object address)
- case26 `LuaFrameDataMgr`: structMaker=+0x8 pointer, luaMap=embedded +0x10
- case397 `DataFrame`: battle=+0x10, tmpSyncObj=+0x18 (getter-only), lgcEventMgr=+0x20, actorEventMgr=+0x28, aiLgcEventMgr=+0x38; large offsets +0x3D0/+0x3D8/+0x3E0/+0x418
- case398 `FEMsgQueue`: msgSeq=+0x8 (8-byte monotonic counter)
- case865 `ActorEventMgr_EventDelegateMP`: dirty=+0x8 u8, inInvoke=+0x9 u8, handlers=+0x10 ptr, swapHandlers=+0x18 ptr (double-buffered event delegate)
- Data objects: case743 BuffLevelData 8×8B slots (+0x60..+0x98); case744 BuffResObject dense bitfields +0x18..+0x1E, u32 group +0x20..+0x58, starting +0xA0; case805 SkillResObject contiguous byte fields +0x18..+0x2B; case823 ActorBuff 74 accesses (+0x10..+0x40, +0x48, +0x58, +0x60..+0xB0); case850 ActorSkill 114 accesses (+0x10..+0xE0); case852 SkillUseObj +0x38..+0xA8 15 accesses

### case37 FEBattleContext 39-property offset table ([V], get/set pairs read/write the same address)
| Property | Offset | Property | Offset |
|---|---|---|---|
| roomInfoSerilizeUsedLength | +0xF008 | useACK | +0xF12C |
| isLogicThreadEnabled | +0xF00C | expectSec | +0xF130 |
| useDataSyncObject | +0xF00D | missIntervalShort | +0xF134 |
| useLogicNetwork | +0xF00E | missIntervalMiddle | +0xF138 |
| isEnableFrameDump | +0xF00F | missIntervalLong | +0xF13C |
| isReEnterRoom | +0xF010 | inBattleTutorialID | +0xF09C |
| isMemoryLogOpen | +0xF011 | visiFocusRoleId | +0xF0A0 |
| visiFocusHeroId | +0xF094 | myGuid | +0xF0A8 |
| session | +0xF098 | frameRateType | +0xF0B0 |
| visiFocusCamp | +0xF0C0 | agentGid | +0xF0E0 |
| visiMyCamp | +0xF0C4 | memoryRecoveryMode | +0xF0E8 |
| localMemoryRecoveryType | +0xF0E9 | repalyMemoryRecovery | +0xF0EA |
| isDisableLiteFowCut | +0xF0EB | tutorialExtraHeroUsedLength | +0xF114 |
| isForceOffMemoryRecovery | +0xF118 | isExpandFEMsgQueueBuff | +0xF119 |
| FEMsgQueueBuffSize | +0xF11C | skillNonUpdateParam | +0xF120 |
| isOfflineBattle | +0xF121 | forceOpenMemLog | +0xF122 |
| isLowMemoryDevice | +0xF123 | releaseTDBMemOnLMDevice | +0xF124 |
| releaseFrameMemOnLMDevice | +0xF125 | enableMemoryStatTag | +0xF126 |
| reserveAllFrameMemory | +0xF127 | enableFEMemoryMmap | +0xF128 |
| roomInfo (special method, cclosure 0x1763FB0, not a get/set pair) | — | | |

Trailing useACK→missIntervalLong is a contiguous u32 run (+0xF12C..+0xF13C step 4), frame-sync ACK/timeout parameter group [I]. TSV has 38 columns + roomInfo = 39 (name order matches TSV).

## Method Steps

### A. Locate the dispatcher and the 881-entry table
1. Open `bindings-881/dispatcher-881-cases.tsv` (authoritative 881-row table): columns = case / stub_va / table_va / table_delta / template_fn_va / fn_size / class_name / prop_members / fn_members.
2. Verify the jump table: read the u32 at file offset `0x56BCB50 + 4·case`, ^ 0x30303030 to get delta, `stub = 0x565CB50 + delta`; 881/881 recheck passes (dispatcher table reference 0x565CB50 ↔ file 0x56BCB50).
3. Verify the case stubs: `0x1589AF4 + 12·case` disassembles to a single b/br to the template function (case0=0x1589AF4→0x158C558).
4. Disassemble the dispatcher `0x1589ACC` to verify first instruction `fd 7b bf a9` (stp x29,x30,#-0x10).

### B. Decode the class name table (case order)
5. For a target name n: `enc(n) = bytes(b ^ 0x30 for b in n)`, search the binary for `enc(n)+b'\x30'` (exact) or `enc(n)` (substring); plaintext names searched directly as ASCII. Check both.
6. Class name table region `0x56BD000..0x56C0000` follows case order (case0..58 = 59 classes contiguous/alignment; `case_zone_alignment.json` contains (skip?) slots: case1/case4 have `(skip?)`, because adjacent class names are registered merged in the table).
7. In-template name references: resolve aarch64 `ADRP xN, page` + `ADD xN, xN, #imm` (or LDR) → target rodata address → decode using that island's delta (delta varies per island: +0x60000/−0x10000/−0x20000/0/−0x30000…; requires full delta sweep −0x80000..+0xA0000 step 0x10000 × {plaintext, ^0x30}).

### C. Decompile the template factories (all 881)
8. Coordinate conversion: **Ghidra address = TSV template_fn_va (runtime VA) + 0x100000** (DYN ELF load base 0x100000; feeding TSV values in directly lands in the rodata data islands and decompiles into garbage C — the headless-run1 lesson).
9. Batch: `analyzeHeadless ghidra-projects rtproj -process libFEProj-rttext.so -noanalysis -scriptPath scripts -postScript DecompileAt2.java "168c558:case0-GainDeckAssetObject;..." outdir`, 109-110 seeds per batch, 9 batches ≈94s, 881/881 rc=0 (lua-api-reference-20260814/README.md §2; run_batches.sh).
10. String resolution: `&UNK_<addr>` landing in the string pool → rewrite as `&"<string>"` (8865 instances; 2 refs unresolved: case148/732 name pointers are in the compact-offset-table island, not decodable at the S layer).
11. Template recognition: calls with 4 args whose 4th arg == `0x736d101` are beginClass; class name = 2nd-arg string; props = 4/6-arg registration calls `(class,name,getter,0[,setter,0])`; fns = `alloc closure slot(0x10) → *p=&code ptr → register`.

### D. Extract member offsets (19 core case methods, wrapped up under C1/C5)
12. Core seeds in `case-models/bindings/core-seeds.tsv` (case5/6/9/14/15/16/25/26/37/339/397/398/743/744/805/823/850/852/865; template_fn_va is runtime VA).
13. Per member: the `*ud = &<fn>` written by `lua_newuserdata(0x10)` in the factory is the member handle function → decompile that small function (mostly single-line `return *(this+off)` / `return *(u32*)(this+off)`), and the offset is obtained.
14. Dispatch-chain verification: outer closure (host fetch) → shared helper 0x174B938 → lv2 dispatch body (tagged_offset semantics); use the 171 lv2 helpers in headless-lv2.log to verify tag values (e.g. case5 get 0x736D205 / set 0x736D206, wrap 0x736D207).
15. Coordinate-caliber warning: member handle/closure addresses in CASE-MODELS.md (0x1752764 family) are **Ghidra display coordinates**; to disassemble directly against the rttext ELF you must **−0x100000**; only the per-case title-line template_fn (0x158D8D0 family) is already runtime VA == file offset. The two number families are mixed in the same tier; convert before referencing.

### E. Reverse-lookup class/method from Lua names (colleague daily workflow)
16. `Foo.bar(...)` / `_G.Foo` / `FrameEngine.<constant>` in Lua scripts → first check `GLOBAL-NAMES.md` table B (by class name) or table A (by case), get case → template function → stub address → API-INDEX entry.
17. Class-name rules assist reverse lookup: Msg/ResObject/AssetObject/Mgr·Manager/Object suffixes, FE prefix (FrameEngine direct), Shared/Variable prefixes (Lua scalar wrappers), _DC suffix (DataComponent variants), Lua-side `Lgc<X>` → class X (LgcEventManagerAdapter → EventManagerAdapter case339).
18. Method-name lookup: within API-INDEX.md entries, `fns: name → 0x.., 0x..` (two addresses = get/set double-registration thunks); props entries `name(g=0x..,s=0x..)` give getter/setter runtime addresses (g=PTR@0x7xxxxxxx is a data-region function pointer).
19. To get a C++ offset: take the member handle fn address (from `*ud = &UNK_0x...` in the factory .c or the API-INDEX getter address) → find the matching sub*.c under `feproj-clone/case-models/bindings/closures/` and read the single-line accessor; or decompile directly.
20. Machine-readable paths: `feproj-clone/lua-api/fe-lua-api.json` (881-class JSON incl. namespaces and registration helper addresses), `merged_cases.json` (case→class name/template/stub/props/fns/name-evidence xor/plain offsets).

## Findings
1. **881-dispatcher mechanism closed**: dispatcher 0x1589ACC → case stubs 0x1589AF4+12i → template functions; jump table `file[0x56BCB50+4i]^0x30303030`, stub base 0x565CB50; 881/881 entries cross-checked consistent (BINDINGS/TSV cross-validation 0 mismatch).
2. **All 881 template functions decompiled successfully** (881/881, 0 failures); covering 4701 property registrations (635 classes) + 2404 method registrations (2× per name → 1202 unique methods, 503 classes); all 881/881 classes have member entries.
3. **Every template is a class-registration factory**: lua_atpanic → lua_getglobal(_G) → gate 0x164AA04 → beginClass(name, 0x736d101) → member registration; classes registered into `_G`, accessed on the Lua side as global names; `FrameEngine.<constant>` is the bound-constant value-fetch pattern.
4. **Class name table XOR-0x30 case-order** @ file 0x56BD000..0x56C0000; decode verified 881/881 (XOR exact 204, XOR substring 381, plaintext exact 291, plaintext substring 5); random 100/100, case 0..149 = 150/150 all word-for-word identical to BINDINGS; TSV member names 3601/3688 have evidence.
5. **String-island encoding**: member/class strings use per-island delta + dword-XOR 0x30303030 (template ADRP reference region runtime 0x565D000..0x5676000 differs from file offset by 0x60000 [INFERENCE]); plaintext pool and XOR pool coexist — query both.
6. **16B member handle = {fn_ptr, tagged_offset}**: second word tag&1 decides `pc = *(pc + this + (tag>>1))` indirection (this-adjustment type); the tag also carries 'sm'-family message magic (0x736d2xx, [I] FrameEngine internal msg subsystem).
7. **Member offsets live in the small handle-fn bodies**: case5 castSkill=+0x10, case6/9 buff=+0x10, BuffManager/SkillManager {actor=+0x8, list=+0x10}, Actor {+0x10/+0x18/+0x20}, FEMsgQueue.msgSeq=+0x8, case37 full 39-property table (+0xF008..+0xF13C), case865 double-buffered delegate {+0x8/+0x9/+0x10/+0x18}; 86 [V] conclusions recorded in CASE-MODELS.md.
8. **Global-name reverse-lookup hit rate** (FETest 22-script corpus): direct class-name hits 1 (GameAPI), prefix 1 (LgcEventManagerAdapter), member-name 6, fragment 6 → 2/182 (1.1%) direct hits, 14/182 (7.7%) with fragments; low hit rate because FETest is a framework shell (Loader/ScriptTemplate/PathHashMap/FrameEngine/FE… are not inside the 881 dispatcher), battle scripts WorkFlow/Scripts are the main consumers.
9. **Naming rules** (generalized from the actual 881 names): Msg/ResObject/AssetObject/Mgr/_DC/Lgc prefixes etc. (see Method Step E.17).
10. **0x60000 island displacement is inferred**: needs a runtime rodata dump (Frida reading process memory 0x565D000..0x5676000) for proof; project constraints forbid attaching to the official package — a known gap.

## Evidence Files (relative to FEProj clone or work root)
- `bindings-881/dispatcher-881-cases.tsv` — authoritative 881-row table
- `lua-api/fe-lua-api.json` — 881-class machine-readable API (namespaces, registration helpers 0x164A684 family)
- `lua-api/decompiled/case0-GainDeckAssetObject.c` — three-stage template instance
- `lua-api/API-INDEX.md` / `BATTLE-API.md` — full 881-class API / 381-battle subset (case5 castSkill → 0x1652764,0x1652B30; case37 all properties)
- `lua-api/README.md` — coordinate conversion, 9-batch decompilation, full-delta string pool sweep
- `lua-api/probes/gate_check.asm`, `beginclass_tmpl.asm` — gate 0x174AA04 / beginClass 0x174AB04
- `work/lua-global-names-20260814/GLOBAL-NAMES.md` — 881×2 full mapping + naming rules + hit rates
- `work/lua-global-names-20260814/README.md` — XOR-0x30 decode formula, ADRP+ADD, 0x60000
- `work/lua-global-names-20260814/merged_cases.json`, `case_zone_alignment.json`, `lua_strings.json`
- `work/case-template-decomp-20260822/README.md` — 19 cases + ~810 closure methods, PLT import restoration
- `work/case-template-decomp-20260822/bindings/CASE-MODELS.md` — 86 [V] offset conclusions
- `work/case-template-decomp-20260822/bindings/core-seeds.tsv`, `closure-seeds.txt`, `lv2-seeds.txt`
- `work/case-template-decomp-20260822/logs/headless-closures.log`, `headless-lv2.log` (171 lv2 helpers)
- `work/case-template-decomp-20260822/bindings/case5_BattleActorUseMultiSkillMsg.c` and closures/case5_..._sub1752764.c, sub1752b30.c, sub1752b30_lv2_1752ba4.c, case397_..._lv2_174b938.c, case37_..._sub1763514.c, case14_..._sub175655c.c
- `work/game-logic-guide-20260814/GUIDE.md` — three-layer coordinate system, 881 quick reference, gaps
- `feproj-clone/README.md`, `MANIFEST.md` — authoritative coordinates and slice index

## Reproduction Notes
1. **Three coordinate systems**: static VA==file offset; runtime VA (used by rttext/TSV/BINDINGS); Ghidra rtproj = runtime VA + 0x100000. **Pitfall**: member handle/closure addresses in CASE-MODELS.md are Ghidra coordinates (must −0x100000 to disassemble against the ELF), while the title-line template_fn is runtime VA — the two number families are mixed in the same tier; convert before referencing.
2. **Do not feed TSV values straight to Ghidra**: the DYN ELF is loaded at base 0x100000; omitting the base lands in .rodata/.eh_frame data islands and decompiles into plausible-looking but garbage C (the headless-run1 lesson).
3. **String-pool delta varies per island**: you cannot try just one offset; must do a full delta sweep (−0x80000..+0xA0000, step 0x10000 × {plaintext, ^0x30}) plus member-name hint validation (prefer consistency with TSV registration order). Plaintext and XOR coexist; query both.
4. **TSV member counts can be undersized**: 26/24 classes due to TSV truncation (case640 actually 326 props, case330 actually 142 methods); trust the decompiled code, not TSV numbers.
5. **Two class names cannot be decoded from file bytes** (case148 ButtonTemplateResObject, case732 MonsterStageBuffApplyNode): name pointers are in the compact-offset-table island, not decodable at the S layer; names taken from BINDINGS, API-INDEX marked ⚠, fully provable only with a runtime rodata dump.
6. **`* >` suffix**: 55 classes' registration strings are template-type strings (e.g. `SkillComboResObject* >`@0x56BE556); display names strip the suffix, [raw=...] keeps the original; these are std::vector<T*> registrations.
7. **fn_members double-writes are a getter/setter artifact**: `track;track` in TSV means the same method name registered twice (get/set or overload pair), not two distinct methods.
8. **Ghidra version**: rtproj was created by an older version; Ghidra 12.1.2 headless opens it directly with no upgrade notice; the fallback route (fresh project -import -noanalysis) produces output identical to the main route.
9. **Import-name restoration**: `.plt` base file VA 0x1149F40 (+0x20 header, 16B/entry) corresponds to dynsym names in `.rela.plt` order, restoring func_0x0124xxxx into lua_atpanic/lua_getglobal/lua_newuserdata/lua_pushcclosure/lua_rawgetp/lua_pushstring/lua_rawset/lua_settop etc.
10. **Known gaps**: runtime-rodata vs file 0x60000 delta is [INFERENCE] (requires Frida reading process memory for proof; project constraints forbid attaching to the official package); the `FE`/`FrameEngine` constant-table registration source is not inside the 881 templates (bootstrap side), source undetermined.
