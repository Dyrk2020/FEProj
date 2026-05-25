# Slice 07: Crit Adjudication and Damage Core (crit adjudication / damage core)

> Audience: colleagues doing static RE on Wild Rift 7.2.0.2460 (build 7246064 / resource 7.2.55.126 / arm64-v8a / package `com.riotgames.league.wildrift`).
> This slice explains thoroughly how "crit adjudication is located": conclusion first — **the Fix14 comparison instruction `rand < critRate` cannot be pinned to a single function on the static side**, but every link of the adjudication chain (event registry, candidate handlers, isCrit write point, RNG shape, armor formula) has an empirical anchor. Everything below comes from read-only research; each conclusion is followed by its evidence file (path relative to the repo root).
> Coordinate convention: all addresses = runtime VA == static VA (IDB `libFEProj-rttext.i64`, delta=0 calibrated); numeric precision is **Fix14** (14 fractional bits: 1.0 = 0x4000 = 16384, 100.0 = 0x190000 = 1638400).

---

## Objective

The RE targets of this slice: Wild Rift 7.2.0.2460's **crit adjudication** and **damage core**:

1. Full enumeration of the event-name hash registry (global `std::map<uint64,uint64>`, event name→handler) — 792 entries, 455 registrars;
2. One-by-one decompilation of the crit-related candidate handlers (31 entries) and three-channel verification (RNG calls / ATTR_CRI_RATE reads / isCrit write point);
3. Pinning the isCrit boolean flag's **write point** in the damage pipeline (`sub_1FDA454` @0x1FDAF40, offset +506);
4. Random source shape (in-house `FrameEngine::FixRandom`, zero libc rand calls);
5. Empirical armor mitigation formula (`raw × 100/(armor+100)`, Fix14 implementation);
6. The complete "input→dispatch→handler→sink" adjudication flow, and how colleagues reproduce the registry enumeration.

Evidence grading follows the upstream convention: `[V]`=verified by decompilation/bytes/enumeration; `[INFERENCE]`=inferred.

---

## Key Coordinates

### Registry (event name hash → handler)

| Item | Address | Description |
|---|---|---|
| Name hash function | `sub_1B13498` @0x1B13498 | Computes 16 offset hashes over (name, len) (sub_1B13634 ×16), registers after combination |
| Table write function | `sub_42F2580` @0x42F2580 | `map[hash]=handler` + reverse map `map2[handler]=hash`; when `qword_82E72A0≠0`, switches to hook `sub_5413D24` |
| Table lookup function | `sub_42F28C4` @0x42F28C4 | RB-tree node lookup by hash; on hit returns the **node+0x28** slot (verified in disasm `LDR X0,[X9,#0x28]` @0x42F29A4) |
| Global map tree roots | **0x82E72A8** (forward map) + **0x82E72B0** (reverse map) | Tree head `qword_82E72A0`; disasm `ADRL X21, qword_82E72A0`, `LDR X8,[X21,#(qword_82E72A8 - 0x82E72A0)]` |
| Registrar full set | 455 | = callers of xrefs(sub_1B13498) ∩ callers of xrefs(sub_42F2580) (the two sets are exactly equal) |
| Total registry entries | **792** (deduplicated) | 743 event handlers + 49 TDBHelper type-name entries; 784 unique handler addresses |

### Crit adjudication chain

| Item | Address | Description |
|---|---|---|
| Evaluator class | `FlowEvaluatorActionNromalAttackPreCrit` | RTTI name @0x57F3CD0, descriptor **0x6EC4438**, TypeId **36317 = 0x8DDD** (sub_4956FFC returns 36317; depth 8); accompanied by `NromalAttackHurtCanCri` @0x57F5350 |
| Descriptor vtable code direct refs | **0 hits** | Full ADRP+ADD reference scan of cri_scan5/6/7 (incl. self-check); 0x6EC4438/0x6EC4450/0x6EC4490 etc. have no direct code refs — data-driven registry entries |
| Attacker event | `FlowActionTriggerBeforeCalcCritForAttacker_OnBeforeCalCritHandler` (plaintext string @0x5804FE3) | Registrar `sub_12DB068`: `sub_1B13498(name,65)` → `sub_42F2580(hash, sub_4AFFB60)` |
| Target event | `…ForTarget_OnBeforeCalCritTargetHandler` (@0x5804390 family) | Registrar `sub_12DA2E8`: `sub_42F2580(hash, sub_4AF3DD4)` |
| Registration wrappers | `sub_4AFFB60` / `sub_4AF3DD4` | One-line forwarders: `return sub_4AFF7A8(a2)` / `return sub_4AF3B9C(a2)` |
| Inner handlers | `sub_4AFF7A8` (@0x4AFF7A8) / `sub_4AF3B9C` | After validating the flow-context +56/+58 byte flags, forward event data to each slot's vtable+32 callback (+264/+272/+280/+288/+296), finish with `sub_4B067C0` |
| Event dispatch core | `sub_1E8CD34` @0x1E8CD34 | Event ID vector dispatch → `sub_1A844A4` (sub_1A844A4 decompilation failed, archived as disasm) |
| Flow step engine (pre-sink) | `sub_4B067C0` @0x4B067C0 | Reads the **flow-context +232** byte flag (`v34 = *((u8*)a1 + 232)`, isCrit upstream) → iterates the event vector, calling `sub_1FDB908` per entry |
| Flow node execution | `sub_1FDB908` @0x1FDB908 | Dispatch per target |
| Deep execution (isCrit write point) | `sub_1FDA454` @0x1FDA454 | **@0x1FDAF40: `STRB W9,[X27,#0x1FA]`** = `*(u8*)(v30+506) = a14&1` (v111 = v129 & 1, LABEL_173) |
| +232 write points | 1992 functions | Functions in full .text scan writing offset +232 (offset shared across multiple object types; cannot statically distinguish isCrit writers) |
| +506 write points | 24 total in .text | Of these, the execution-path write point is unique = sub_1FDA454 @0x1FDAF40 |

### RNG (random source)

| Item | Address | Description |
|---|---|---|
| `FrameEngine::FixRandom` | RTTI name `N11FrameEngine9FixRandomE` @0x56BA2A0; typeinfo @0x6ADB350; vptr 0x720A800 | Lua case 409, template 0x175307C; registration function sub_15E2B00 |
| fix_seed getter/setter | 0x1752E00 / 0x1752E08 | Field **+16** (initial seed) |
| useed getter/setter | 0x1753050 / 0x1753058 | Field **+24** (used count) |
| battle property | sub_1753A9C | Lua userdata wrapper |
| getter code refs | **0** | xrefs(fix_seed getter)=0, xrefs(useed getter)=0, typeinfo/RTTI-name code refs=0 (final-evidence.json `fixrandom_refs` all empty) |
| libc rand/srand | imports @0x8DDA050 / @0x8DDA038 | **Zero calls** (only thunk self-refs + GOT slot 0x7222608) |
| Standard RNG constants | full .text byte scan | splitmix64/xorshift64*/PCG/wyhash/xxhash/murmur/common LCG **all 0 hits** (0x85EBCA77 1 coincidental hit, no context) |

### Attribute channel (crit input)

| Item | Value | Description |
|---|---|---|
| ATTR enum | ATTR_CRI_RATE = **0xC**, ATTR_CRI_DAMAGE_RATE = **0xD** | Name table sub_2C76D64 (57 entries, 0x0..0x38) |
| Read chain | `sub_20053B4(actor+480, id)` → `sub_1F66418(attr_obj+1224, id)` → `sub_20700BC(entry)` | +96 base value / +152 modifier → sub_2126FBC |
| 0xC consumption points | 9 call sites / 8 functions | All attribute snapshots (`*(float*)(buf+N) = (float)sub_20053B4(actor+480, 12/13) * 3445.9`, written to AI/display buffers), **not adjudication** |
| 0xD consumption points | 7 call sites (7 of 8 functions) | Same as above |
| Equipment fields | `EquipResObject.criRate = +124` (getter sub_16A948C), `criDamage = +128` (sub_16A949C) | `LDR W0,[X0,#0x7C/#0x80]` |
| Skill fields | `ActorSkill.critRate = +0x110` (getter 0x18EB3CC), `critDamgeRate = +0xA8` (0x18E9F34), `globalCrit = +0x15` (0x18E95C4) | Fix14 |
| Pre-crit carriers | SkillUseObj.isPreCrit = +0x50 (0x18F37F4), BulletGroup.isPrecalCritByGroup = +0x78 (0x189C610), HurtFlags.useSkillPreCrit = +0x8 (0x18D6244), critEventName (0x18D6914) | Resolved from 8-byte leaf getter disassembly |

### Damage core

| Item | Address | Description |
|---|---|---|
| FlowActionHurt executor | `sub_4B39FF0` | `a14 = *(flow+232)!=0` (crit_flag); assembles 19-arg call to the full entry |
| Full damage entry | `sub_1FDB1E8` (19 args, a14=crit_flag) | → gating/hit cap → sub_1FDA454 |
| Simple entry | `sub_1FDB714` | No crit channel |
| Unit dispatch | `sub_1FDA454` | Hit count, HurtFlags attachment (sub_22BC89C → v30+328), **v30+506 = a14&1**, v30+216 = damage value |
| Unit state machine | `sub_1D08F38` | Type dispatch; multi-target split `(total<<14)/N` (@:597); settle sub_1D0A684 / finish sub_1D0A090 |
| Damage value resolution | `sub_1D09F20` → `sub_1585E60` → `sub_1DC7094` (fixed value +48 / formula sub_13E43D8) / int formula sub_1401468 | Formula param types 1/2/3/8 |
| **Armor mitigation** | `sub_1ADB99C` (multi-target) / `sub_1CFCBB4` (single-target generic) | See formula below |
| Attribute reads | `sub_20053B4` / `sub_1F66418` / `sub_20700BC` | See attribute channel |

### Armor formula (empirical)

```c
// sub_1ADB99C (core-mitigation_phys-0x1ADB99C.c):
armor_atk = sub_20053B4(*(attacker+480), 9);   // ATTR_ARMOR
armor_def = sub_20053B4(*(defender+480), 9);
factorA   = 0x4000 - (armor_atk << 14) / (armor_atk + 1638400);   // Fix14(1 − armor/(armor+100))
factorD   = 0x4000 - (armor_def << 14) / (armor_def + 1638400);
dmg_mit   = (raw_dmg * factor) >> 14;                            // = raw × 100/(armor+100)
// sub_1CFCBB4 (single-target, clamped ≤1.0): dmg = ((0x4000 − (|eff|<<14)/(|eff|+1638400)) × raw) >> 14;  |eff| takes absolute value
```
I.e., the standard LoL shape **mitigation coefficient = 100/(armor+100)**, `damage_taken = raw × 100/(armor+100)` [V].
0x4000 = Fix14 1.0; 1638400 = Fix14 100.0. Penetration channels: flat armor pen 0xA / percent armor pen 0xB / flat magic pen 0x12 / percent magic pen 0x13 (verified in sub_1CFCBB4 case 1/2); "flat before percent" order [INFERENCE].

---

## Method Steps

### A. How colleagues enumerate the registry (crit-handler-enum method, reproducible)

```bash
# 0) Prepare an IDB working copy (≈1.4GB, rttext view, delta=0):
#    work/feproj-ida-20260814/libFEProj-rttext.i64 → work/crit-handler-enum-20260814/ida-db/

# 1) Registrar enumeration + entry extraction (outputs registry-raw.json + decompiled/registrar-*.c ×455)
idat -A -S"$PWD/scripts/crit_handler_enum.py" "$PWD/ida-db/libFEProj-rttext.i64"
```

Internal steps of script `scripts/crit_handler_enum.py` (v2):

1. **Registrar location**: take `xrefs(sub_1B13498 name hash)` ∩ `xrefs(sub_42F2580 table write)`, resolve the function containing each code ref → 455 (the two sets are exactly equal, 0 write-only / 0 hash-only).
2. **Entry extraction**: Hex-Rays decompile of each registrar, regex pairing:
   - `sub_1B13498("EventName", len)` (name tokens: string literals / `unk_`/`off_`/`loc_` symbols / `aLabel[off]` pool refs);
   - `sub_42F2580(v0 ^ HIWORD(v1), handler_fn)` (composite-hash registration; handler is `sub_`/`loc_` or a dereferenced data pointer).
   - When Hex-Rays yields no entry, fall back to pure disassembly extraction (manual decoding of ADRP/ADR/ADD/MOV immediates).
3. **String decoding** (`resolve_str_token` + `island_decode` + `name_score`):
   - Plaintext preferred (literal=624 entries); island encoding fallback `delta sweep (−0x80000..+0xA0000 step 0x10000) × {plaintext, XOR-0x30303030}` (island=130 / xor30=30); `label+off` groups scored by name-likeness for a consistent delta (8 entries).
   - Verified hit example: `AnniesBearRegression_OnActorHurt` group @0x581D1B5 uses delta −0x20000 + XOR-0x30.
4. **crit filter**: name contains `Crit|PreCrit|Critical|NormalAttack|Attack` (case-insensitive) → **31 candidates**.
5. **Candidate decompilation** (`scripts/decompile_candidates.py` / `decompile_candidates2.py`) → `decompiled/candidate-*.c`; the 4 Hex-Rays failures are archived as `decompiled/disasm-*.asm` (0x4A5450C, 0x1A844A4, 0x42F28C4, 0x4844D44 are `__break` trap stubs).

```bash
# 2) Closing evidence (isCrit strings / FixRandom zero refs / map lookup disasm / RNG shape candidates)
idat -A -S"$PWD/scripts/crit_scan_final.py" ida-db/libFEProj-rttext.i64
# 3) +232/+506 write-point full .text scan
idat -A -S"$PWD/scripts/crit_scan_232.py" ida-db/libFEProj-rttext.i64
```

Four checks of `crit_scan_final.py`: ① iterate `idautils.Strings()` collecting strings containing `isCrit`/`Crit` (27 entries); ② `collect_callers` for FixRandom getter/typeinfo/RTTI-name code refs (all empty); ③ short-function heuristic for RNG-core candidates that "read +16/+24 and contain arithmetic" (352, zero intersection with the 31 candidates and the 8 attribute consumption points); ④ disassemble the `sub_42F28C4` map lookup.

### B. RNG shape exclusion (crit-rng-pin method)

```bash
# 7 rounds of headless scans (scripts/cri_scan1..7.py, debug_adrp.py; results results-cri*.json)
idat -A -S"$PWD/scripts/cri_scan1.py" ida-db/libFEProj-rttext.i64   # ATTR consumption points (X1 immediate backtrack, 833 call sites)
idat -A -S"$PWD/scripts/cri_scan4.py" ida-db/libFEProj-rttext.i64   # class-name strings / 0x8DDD refs
idat -A -S"$PWD/scripts/cri_scan7.py" ida-db/libFEProj-rttext.i64   # descriptor/vtable refs (self-check passed)
```
- libc rand/srand: import-table xref scan (zero calls).
- Standard RNG constants: full .text LE byte scan of 20+ magic numbers (all 0 hits).
- ATTR_CRI_RATE consumption points: scan all 833 call sites of `sub_20053B4`/`sub_1F66418`, backtrack X1 immediates → 0xC ×9 / 0xD ×7.

### C. Damage core location (damage-core method)

```bash
# Pattern scan / caller scan / core decompilation
idat -A -S"$PWD/scripts/dc_scan2.py"  ida-db/libFEProj-rttext.i64   # Fix64 100.0(0x190000)+division+resist shift → mitigation formula functions
idat -A -S"$PWD/scripts/dc_dump2.py"  ida-db/libFEProj-rttext.i64   # BL caller scan → full damage pipeline
```
- Anchors: 8-byte leaf getters `LDR W0,[X0,#imm]; RET` resolve field offsets; getter xrefs only point to the class registry (proving the core reads fields directly).
- All 36 core functions dumped to `decompiled/core-*.c`; the `semantics-damage` slice adds semantic comments to 37 of its files (`annotated/core-<NN>-*.c`).

---

## Findings

1. **Registry full enumeration [V]**: 455 registrars = callers of `sub_1B13498` = callers of `sub_42F2580` (sets equal); 792 registry entries (743 event handlers + 49 type-name entries), names 792/792 decoded, handlers 792/792 resolved; global map tree root 0x82E72A8 + reverse map 0x82E72B0; lookup returns node+0x28. Known registrars sub_12CFAFC/sub_12DB068/sub_12DA2E8 verified; sub_15E2B00 (FixRandom Lua registrar) correctly excluded (negative control, calls neither hash nor table write).
2. **All 31 crit candidates are "orchestration shells" [V]**: none contains a FixRandom call (getters have zero code refs), none reads ATTR_CRI_RATE(0xC) (the full set of 8 functions / 16 consumption points are all attribute snapshots), none intersects the RNG shape candidates (352); all are orchestration functions forwarding to per-node vtable+32 callbacks, uniformly finishing through the `sub_4B067C0` flow step engine. Of the 31, 3 (handlers of `ne5Logic14AttackerRecor`/`c32INpcAttackAuxiliaryProces`/`r29SummonedYordleHeraldAttackingE`) are type-name pool fragments hitting "Attack"; retained per convention and faithfully decompiled.
3. **isCrit write point pinned [V]**: `sub_1FDA454` @0x1FDAF40 `STRB W9,[X27,#0x1FA]` (= `v30+506 = a14&1`), byte-identical to damage-core's `v30+506 = a14&1`; the upstream flag comes from flow context **+232** (`sub_4B067C0` reads `*(u8*)(a1+232)`). +506 has 24 write points total in .text; the execution-path write point is unique.
4. **Closed-loop negation evidence (why "enumeration complete" = "no static anchor exists") [V full chain + INFERENCE positions]**:
   ① registry full enumeration (455 registrars, 792 entries, all with handlers) → ② crit candidates full enumeration (31) → ③ all candidates decompiled, none contains RNG calls/attribute reads → ④ no RNG consumption points outside the registry (FixRandom getters zero code refs → `Next()` has no symbol table/no constants/no direct refs) → ⑤ isCrit write point unique inside the execution engine → ⑥ conclusion: **the `rand < critRate` comparison lives in the flow evaluator's interpreted path** (data-driven node vtable+32 dispatch, invoked at runtime through `sub_5413D24` hooks/event-registry indirection), with no static symbol, no standard RNG constant, and no descriptor direct ref to anchor.
5. **Closest static evidence [V]**: `FlowEvaluatorActionNromalAttackPreCrit` (TypeId 0x8DDD, descriptor 0x6EC4438) + `NromalAttackHurtCanCri` (0x57F5350) + the event chain (register→dispatch→handler) + the isCrit landing point (+232→+506).
6. **RNG shape [V class/fields + INFERENCE algorithm]**: in-house deterministic RNG `FrameEngine::FixRandom` (dual fields fix_seed+16 / useed+24, frame-sync deterministic design); libc rand zero calls, standard RNG constants zero hits; `Next()` core algorithm not recovered (zero refs/zero constants/no symbols).
7. **Crit semantics enumeration [V]**: SkillCritType (NO_CRI=0 / CRI_RATE_ADDITIONAL=1 / CRI_RATE_NO_ADDITIONAL=2 / FORCE_NO_CRI=3); SkillCritDamageType (NO_CRI_DAMAGE_RATE_CHANGE=0 / ADDITIONAL=1 / REPLACE=2 / MULTIPLY=3); ActorVarEnum (CurDamageIfCrit=5, SubAttackerCritRate=6, VisiCrit=146, CurDamageIgnorePreCrit, GuinsoosCritRate). Formula shape: trigger `isCrit = RNG() < critRate` (Fix14, 1.0=0x4000, 100%=0x190000); damage bonus `damage × (1 + critDamageRate/100)` [INFERENCE formula shape + V enum and channels].
8. **Armor mitigation formula [V]**: `damage_taken = raw × 100/(armor+100)`; Fix14 implementation `0x4000 − (armor<<14)/(armor+1638400)`, `(raw×factor)>>14`; negative armor/over-cap break coefficient clamped ≤1.0 (sub_1CFCBB4 takes `|eff|` absolute value); penetration "flat before percent" [INFERENCE], effective resistance feeds the same formula.
9. **Complete adjudication flow (input→dispatch→handler→sink) [V]**:
   ```
   Input: event name (e.g. "…TriggerBeforeCalcCritForAttacker_OnBeforeCalCritHandler")
     → sub_1B13498 name hash → sub_42F2580 write map (tree root 0x82E72A8)
     → runtime sub_42F28C4 lookup node+0x28 by hash → handler
   Dispatch: sub_1E8CD34 (event ID vector dispatch) → sub_1A844A4 (indirect table lookup)
   handler: sub_4AFFB60 → sub_4AFF7A8 (attacker context hook, slot vtable+32 callbacks)
            sub_4AF3DD4 → sub_4AF3B9C (target context hook)
   sink: sub_4B067C0 (flow step engine, reads +232 isCrit upstream flag)
     → sub_1FDB908 (flow node execution) → sub_1FDA454 (deep execution)
        @0x1FDAF40: v30+506 = a14&1   ← isCrit boolean landing point
     → sub_1D08F38 (damage unit state machine, split/settle) → sub_1D0A684/sub_1D0A090
   Resist: sub_1ADB99C/sub_1CFCBB4 (100/(100+armor)) → damage_taken
   ```

---

## Evidence Files

(relative to the repo root; `work/` = `<research-workspace>/work/`)

- `work/crit-handler-enum-20260814/README.md` — slice overview, artifact manifest, method, boundaries
- `work/crit-handler-enum-20260814/CRIT-HANDLER.md` — 31-candidate list table + per-class decompilation conclusions + three-channel checks + closed-loop negation evidence (§4) + closest static evidence (§5) + boundaries (§6)
- `work/crit-handler-enum-20260814/REGISTRY.md` — enumeration method (§1), full 792-entry table (§2), statistics (§3), boundaries (§4), reproduction (§5)
- `work/crit-handler-enum-20260814/registry.json` — 792 structured entries (event-handler=743 / type-name=49, incl. name_mode decode method)
- `work/crit-handler-enum-20260814/registry-raw.json` — raw enumeration (all entries per registrar, decode method)
- `work/crit-handler-enum-20260814/final-evidence.json` — 27 isCrit strings, fixrandom_refs (all empty), fixrandom_shape_candidates 352, map_lookup_disasm
- `work/crit-handler-enum-20260814/isCrit-flag-scan.json` — +232/+506 write-point full .text scan
- `work/crit-handler-enum-20260814/candidates-decompiled.json` / `candidates2-decompiled.json` — candidate decompilation manifests
- `work/crit-handler-enum-20260814/scripts/crit_handler_enum.py` — registry enumeration script (reproducible)
- `work/crit-handler-enum-20260814/scripts/crit_scan_final.py` / `crit_scan_232.py` / `decompile_candidates.py` / `decompile_candidates2.py` / `disasm_remaining.py` — closing-evidence scripts
- `work/crit-handler-enum-20260814/decompiled/registrar-*.c` (455), `candidate-*.c` (31+4 inner), `chain-*.c` (dispatch/trigger/map chains), `disasm-*.asm`
- `work/crit-rng-pin-20260814/CRIT-RNG.md` — RNG shape, ATTR consumption points, indirect dispatch chain, formula recovery, differences from DAMAGE-MODEL
- `work/crit-rng-pin-20260814/README.md` — 7-round scan method
- `work/crit-rng-pin-20260814/decompiled/core-crit_dispatch-0x12DB068.c` — FixRandom fields + event registration + sub_1E8CD34 dispatch decompilation
- `work/crit-rng-pin-20260814/decompiled/crit-evaluator_descriptor-0x4956FAC.c` — descriptor TypeId 0x8DDD + zero-code-direct-ref annotations
- `work/crit-rng-pin-20260814/decompiled/crit-attr_consumers-0x1B62A04.c` / `core-attr_read_chain-0x20053B4.c`
- `work/crit-rng-pin-20260814/scripts/cri_scan1..7.py` / `results-cri*.json`
- `work/damage-core-20260814/DAMAGE-MODEL.md` — attribute table, crit adjudication, damage formulas, penetration/mitigation, data-flow overview
- `work/damage-core-20260814/README.md` — 5-step method + boundaries
- `work/damage-core-20260814/decompiled/core-mitigation_phys-0x1ADB99C.c` — armor formula evidence (`0x4000−(armor<<14)/(armor+1638400)`)
- `work/damage-core-20260814/decompiled/core-mitigation_generic-0x1CFCBB4.c` — single-target clamp ≤1.0, penetration channels
- `work/damage-core-20260814/decompiled/core-hurtunit_dispatch-0x1FDA454.c` (and the other 111 core-* in the same directory)
- `work/semantics-damage-20260814/ANNOTATED-MODEL.md` — 37-function semantically annotated damage model (§5 quick-reference table)
- `work/semantics-damage-20260814/annotated/core-06-hurtunit_dispatch-0x1FDA454.c` and 36 more
- `work/e2e-trace-20260814/E2E-TRACE.md` — end-to-end chain (skill/Buff/type=07), for cross-referencing the coordinate convention
- FEProj slice mirrors: `feproj-clone/crit-damage/crit-handler/` (registry.json etc. + decompiled/ with full registrar/candidate/chain/disasm), `feproj-clone/crit-damage/crit-rng/decompiled/` (4 evidence functions)

---

## Reproduction Notes

1. **Do not mix coordinate conventions**: `libFEProj-rttext.i64` linear address == runtime VA == static VA (delta=0); Ghidra rtproj coordinates = static VA + 0x100000 (this slice does not use Ghidra coordinates).
2. **IDB working copy is independent of the MCP instance**: headless `idat -A -S"script.py" idb` runs a fresh process each time, about 1–15 min/round; scripts output JSON + archived .c; do not run directly on the live MCP IDB.
3. **Core of registry enumeration**: the registrar full set = **function-set equality** of `xrefs(sub_1B13498)` ∩ `xrefs(sub_42F2580)` (this is the "full enumeration" criterion); negative control sub_15E2B00 (FixRandom Lua registrar) calls neither hash nor table write and must be excluded.
4. **String decoding pitfalls**: island-encoding delta sweep range −0x80000..+0xA0000 step 0x10000 × {plaintext, XOR-0x30303030}; `name_score` heavily penalizes all-`0` fill (XOR-0x30 NULs); `label+off` (`&aN11frameengine_4048[4549]`) groups are scored per group for a consistent delta. Type-name entries (49) are mostly pool mid-string truncations; partially unreadable names are normal.
5. **Scope of "31 candidates" vs "8 consumption functions"**: the 31 candidates are filtered by name keyword (incl. 3 type-name pool-fragment false hits, faithfully retained); the ATTR consumption full set = 8 functions / 16 points (0xC×9 / 0xD×7), all attribute snapshots `×3445.9` written to AI/display buffers — do not mistake snapshot functions for adjudication points.
6. **How to confirm the isCrit landing point**: `+506` has 24 write points total in .text, but the execution-path write point is unique (sub_1FDA454 @0x1FDAF40); the `+232` 1992 write points are a shared offset across multiple object types, and the semantics are anchored jointly by the chargeblade-chain string `flowisCrittargetGUIDold` and the +506 landing point — do not draw conclusions from write-point counts alone.
7. **FixRandom `Next()` cannot be statically recovered**: getters have zero code refs, no symbol table, no standard RNG constants — this is by design (frame-sync deterministic RNG called through an indirection layer); do not waste time hunting its magic numbers in .text; report honestly as [INFERENCE].
8. **Armor formula constants**: 0x4000 (Fix14 1.0) and 1638400 (Fix14 100.0) appear as a pair; `(x<<14)/(x+1638400)` is `x/(x+100)`; in sub_1CFCBB4, taking the absolute value `|eff|` and the clamp `if (v34 >= 0x4000) v34 = 0x4000` are the key to "negative armor does not produce negative mitigation".
9. **Upstream discrepancy correction**: damage-core says "OnBeforeCalCritHandler → sub_4AFF7A8 directly"; crit-rng/crit-handler correct it to registration wrapper sub_4AFFB60 (Target: sub_4AF3DD4) → inner sub_4AFF7A8/sub_4AF3B9C → sub_1E8CD34 dispatch. Cite the corrected version.
