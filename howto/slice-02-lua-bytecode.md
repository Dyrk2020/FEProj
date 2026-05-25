# Slice 02 — Modified Lua 5.3.6 Bytecode (FETest .res and LData vfs LuaHolder Dual Formats)

> This slice covers: instruction encoding, operand layout, and the 62-opcode table of
> Tencent's modified Lua 5.3.6 (chunk format=1), the FETest `.res` container, the new
> LData vfs `WorkFlow/Scripts` format (u16-swap + 16B header), nested proto decoding,
> and decompilation results for the 22 + 25 script groups.
> Version: package/build 7.2.0.2460/7246064 · resources 7.2.55.126 · ABI arm64-v8a · package name
> com.riotgames.league.wildrift. All evidence comes from the workspace files below (relative paths,
> repository root is `feproj-clone/`; the original workspace is `<research-workspace>/`).

## Objective

Restore the two types of Wild Rift 7.2 Lua resources to readable Lua-style pseudocode and provide a reproducible static methodology:

1. **FETest 22 `.res` files** (`Res/FETest/**/*.res`, framework scripts: Loader/pprint/queue/
   safecall/BattleLogic/ConstDefine/FEEnumForLua/…) — old format (no `f6 05` wrapper,
   35B header + source + proto tree, instructions stored directly in executed order).
2. **LData vfs `WorkFlow/Scripts` 25 battle scripts** (the gameplay logic itself:
   `NEW_ACTION`/`NEW_EVALUATOR`/`NEW_CLASS`/`NEW_COMPONENT` factory registration +
   `OnEnter`/`OnTick`/`Execute`/`Awake`/`Start`/`Update`/`Reset` lifecycle) —
   new format (`f6 05` wrapper + 17B prefix + 11B delta + 16B header + **u16-swap instruction storage**
   + nested proto tail).

Core conclusion in one sentence: **opcode = `ROR(w,29) & 0x3f` (6-bit opcode at word bits
`{29..31} ∪ {0..2}`)**; main proto instructions are stored with u16 half-word swap (`executed =
((w<<16)|(w>>16)) & 0xffffffff`), nested proto instructions are native LE plain-ROR29;
strings are always XORed byte-wise with a 32B key using `i%32` cycling.

## Key Coordinates

### Binary side (libFEProj, static VA == file offset; Ghidra rtproj coordinates +0x100000)

| Item | Address/Value | Description |
|---|---|---|
| `luaU_undump` | **0x55C3B54** | Bytecode load entry: magic `1B 4C 75 61`, version 0x53, format 1, LUAC_DATA, sizes `(4,4,4,8,8)`, LUAC_INT 0x5678, LUAC_NUM 370.5 (exact fcmp) validation |
| `loadFunction` | 0x55C3EDC | Per-proto parsing |
| code reader | sub_55CAAAC | Pure buffered `memcpy(dest, src, 4*ncode)` loop → **no load-time instruction transform** (chunk words enter `Proto::code` verbatim; u16-swap is a storage-layer property, not a runtime transform) |
| `luaV_execute` | **0x55C6760** | VM dispatch main loop |
| dispatch head | 0x55CA65C | `ldr w28,[pc]` → `ror w8,w28,#0x1d`(=ROR29) → `and w8,w8,#0x3f` → `cmp w8,#0x3d; b.hi default` → `ldrsw x8,[x27,x8,lsl#2]` → `add x8,x8,x27; br x8`; `x27 = 0x58B1AFC` (ADRP 0x58B1000 + ADD 0xAFC) |
| jump table | **0x58B1AFC** | 62 entries, **XOR-0x30 encrypted**: `target = 0x58B1AFC + signext32(entry ^ 0x30303030)`; all 62 entries resolvable in-function; op23→0x55CA87C(RETURN), op50→0x55C7684(LOADK) cross-validated against chunk constants |
| constant tag table | 0x58B1748 | 0→nil, 1→bool, 3→float64, 4→loadString(short), 0x13→int64, 0x14→loadString(long), 0x23→fix64 |
| string XOR key | 0x57A2D60 | `dd 7d 18 42 44 f3 ac d6 4e 3a a7 28 2d 56 b5 b0 98 e7 a7 53 bb 76 94 6e e5 bc 8e 2e 4c 22 14 7f` (32B) |
| helper functions | luaD_poscall 0x55B4160 · luaD_precall 0x55B4320 · luaD_call 0x55B4890 · luaF_newLclosure 0x55B5CF8 · luaH_new 0x55C1BBC · luaH_get 0x55C23F0 · luaH_set 0x55C22FC · EQ 0x55C5BA4 · LT 0x55C56B8 · LE 0x55C5908 · CONCAT 0x55C5F00 · LEN 0x55C6210 · fix64 POW 0x55CD334 · import `pow` 0x1151D20 |

### File format side

- **FETest .res (old format)**: `1B 4C 75 61 53`(5B) + format `01`(1B) + `19 93 0D 0A 1A 0A`(6B) +
  sizes `04 04 04 08 08`(5B) + LUAC_INT 8B + LUAC_NUM 8B + **1B `top.source.line_shift`** +
  source LoadString + main proto (linedef/lastline i32, numparams u8, is_vararg u8,
  maxstacksize u8; code u32 array; consts; upvals; nested protos; lineinfo; locvars;
  upvalnames). Instructions stored directly in executed order (**no swap**).
- **vfs LuaHolder .res (new format)**:
  ```
  [2B wrapper f6 05]
  [17B standard prefix] 1b 4c 75 61 53 | 01 | 19 93 0d 0a 1a 0a | 04 04 04 08 08   ← constant 25/25
  [11B delta]    78 56 00 01 00 f5 ?? 28 77 40 01  (byte6 varies with source path, Scripts/** = src_n-10)
  [source LoadString](LUA_KEY XOR)
  main proto:
    [16B header](see below)
    [code: hdr[6]-2 words, 4B each, u16-swap storage]
    [2B terminator](range 00fa/01ea/…/03e2, semantics undetermined, not a checksum)
    [u32 const count][consts]
  tail(nested function body region + main proto trailer)
  ```
- **16B header full fields** (25/25 stats):
  | byte | range | semantics |
  |---|---|---|
  | b0 | 115..161 | **src_n + 14** (total on-disk length of source string 1+n plus 13), exact 25/25 |
  | b1 | 0 | constant |
  | b2 | 0xf0 | constant |
  | b3 | 35..112 | source-path related (constant within a directory group, e.g. `Scripts/`=42, `Trigger/`=27) [INFERENCE] |
  | b4 | 1 | **nupvalues = 1** (`_ENV`) |
  | b5 | 2 (24)/3 (1) | **is_vararg** (2=NEEDSARG; 3 only in luckyBoxPickup) |
  | b6 | 7/11/13/16 | **code_words + 2** (nw=5/9/11/14), exact 25/25 |
  | b7-b9 | 0 | constant |
  | b10 | 5 | **maxstacksize = 5** |
  | b11 | 0 | **numparams = 0** |
  | b12 | 0x20 | constant (suspected of forming u16 0x20e0 with b13) |
  | b13 | 0xe0 | constant |
  | b14 | 0×3/1×8/2×5/3×9 | varies per file (nested proto count or low bits of line numbers) [INFERENCE] |
  | b15 | 0x0a | constant (version/format marker) |
- **u16-swap rule** (validated on 68 instructions):
  ```
  executed_word = rev16(stored_word) = ((stored_word << 16) | (stored_word >> 16)) & 0xffffffff
  opcode        = ROR(executed_word, 29) & 0x3f
  ```
  Byte-level equivalence: stored `[b0 b1 b2 b3]` → executed `[b2 b3 b0 b1]`.
  Anchors: last word of main proto → rev16 → op23 RETURN (25/25); fixed word `0x00074000` → rev16 →
  op58 (24/25); 4B-aligned rev16-RETURN candidates in tail 19; total 68 ≥ 50 ✓.
  Counter-evidence: FETest 22 files are direct executed order (`0xea02a802 → ror29=23`, `0xc0000003 → ror29=30`
  CLOSURE), applying rev16 instead breaks decoding → **swap is a vfs storage-layer property**.
- **Nested proto (tail) layout**:
  ```
  each nested proto: [hdr5: ld u8][ll u8][np u8][ms u8][va u8]
                     [4B field](Family A: 06 00 61 00; Family B: 03|04|05 XX 00 51|52|11; Family C omits leading ld)
                     [4B u32](≠ instruction count; semantics [INFERENCE])
                     [code: N×4B, PLAIN ROR29 (no swap!)]
                     [trailing bytes 4–16 B][constant strings (tag 0x04 + marker)][locvar names (bare marker)]
                     [upvals][protos][lineinfo][locvars][upvalnames]
  tail end: [upvalnames '_ENV'][u16 X][u16 0x0000]
  ```
  Nested code region ends with the RETURN instruction word `(w&7)==2 && (w>>29)==7` (holds 25/25);
  hdr5 families: Family A (5w/3c scripts) `01 [ll] 00 10 00 | 06 00 61 00 | u32`;
  Family B (multi-function) `01 [ll] 00 20 00 | … 51`; Family C (BattleTimeTrigger/luckyBox)
  `[X1] 00 20 00 | 03 [X2] 00 51 | …`.
- **String record syntax** (same in old and new): `marker` 0→empty string, 0xff→followed by u32 long length, otherwise
  `n = marker - 1`; data decrypted byte-wise `b ^ LUA_KEY[i % 32]`, restarting from offset 0 for each string.
- **Constant tags**: old format {0 nil, 1 bool, 3 float, 4 shortstr, 0x13 int, 0x14 longstr,
  0x23 fix64}; new format **adds 0x09, 0x11** (8B LE signed numbers) and **0x20** (1 occurrence,
  FlowActionReduceCDRate tail, semantics undetermined, suspected composite value).
  - The 8B numeric three values share the 40-bit prefix `C985252754`: `128780458976894976` (0x11×2),
    `-3925690649339498496` (0x11), `-3925690649340022784` (0x09×2);
    interpreted as fix64 (14-bit fraction) ≈ µs time (91 days / -7.6 years) — consistent with
    BattleTimeTrigger's triggerTime context [INFERENCE].
- **kc anomaly**: const count u32 of FlowActionReduceCDRate / FlowActionReduceEquipBuffCD =
  `0x1ef0003c` (corrupted), falls back to 3 constants per `NEW_ACTION/<name>/OnEnter` (evidence:
  the `04 0b` record immediately following is the `NEW_ACTION` string).

## Method Steps

### A. Recover opcode semantics (VM side, DIRECT evidence)

1. Take the rttext view `work/feproj-readable-20260814/elf-views/libFEProj-rttext.so`
   (static VA == file offset), locate dispatch 0x55CA65C inside `luaV_execute` 0x55C6760:
   `ror #0x1d; and #0x3f; cmp #0x3d; b.hi default; ldrsw; add; br`.
2. Decrypt jump table 0x58B1AFC (62 entries, XOR-0x30): `target = 0x58B1AFC + signext32(entry ^ 0x30303030)`:
   ```bash
   dd if=libFEProj-rttext.so bs=1 skip=$((0x58B1AFC)) count=248 | xxd
   ```
   All 62 entries resolved in-function; op23→0x55CA87C (RETURN), op50→0x55C7684 (LOADK)
   cross-validated against chunk constants.
3. The `lsr/and/bfxil` sequence at the head of each handler is the operand extractor (simulation:
   `lsr #k; and #m` selects bits k+p, `bfxil #l,#d` then ORs in `(w>>l)&((1<<d)-1)`;
   **pitfall: `and #0x1e0` applies to the already-shifted value**, selecting bits 15..19 rather than 10..14).
   The RK (register/constant) flag is a dedicated bit; when set, the operand is a `k[]` constant index.
4. Load chain (no load-time transform): `lua_load → 0x55B50CC → luaU_undump 0x55C3B54 →
   loadFunction 0x55C3EDC → sub_55CAAAC` (pure memcpy reading the code array).

### B. Parse the FETest 22 .res files (container + tag-0x14 fix)

1. Parser: `decoders/lua_res_parse.py` (format=1 specific: full validation of magic/format/LUAC_DATA/sizes/
   LUAC_INT/LUAC_NUM; `top.source.line_shift` 1B; source LoadString;
   proto recursion: linedef/lastline/numparams/is_vararg/maxstacksize → code → consts →
   upvals → nested protos (source + recursion) → lineinfo → locvars → upvalnames;
   exact EOF validation `remaining == 0`).
2. **tag-0x14 fix (2026-08-05 Round-3, critical)**: tag 0x14 is a **long string constant**,
   **not a nested proto marker** — the loader routes it to the same loadString handler as
   tag 0x04; string length rule `0=NULL / 0xff=u32 / else N-1`. Before the fix 17/22 parsed to
   exact EOF (GlobalFunc/PathHashMap/FEEnumForLua/LuaStruct/safecall 5 files stuck),
   after the fix **22/22 exact EOF** (historical metric superseded).
3. Decompilation: `lua-bytecode/decompile_lua_res.py` (VM semantics + handler layout, for documentation)
   or `lua-bytecode/decompile_lua_res_filefmt.py` (production: file-format operand layout +
   RK keys + VM semantic names; for the out-of-bounds K problems of safecall/pprint/queue/ActionMgr,
   RK bit21 resolves most).
   ```bash
   python3 decompile_lua_res_filefmt.py Res/FETest/FrameWork/TestMain.res
   python3 batch_decompile.py                 # 22 files → rerun/*.lua + LOWCONF-STATS.md
   ```

### C. New format (vfs LuaHolder) layout validation and decompilation

1. Layout validation: `lua-bytecode/newformat/decode_layout.py` (default input
   `work/ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted/`):
   ```bash
   python3 decode_layout.py            # runs all 25 files + 16B header stats + swap validation (exit 0)
   python3 decode_layout.py --json out.json
   ```
   Validation: b0==src_n+14, b4==1, b6==code_words+2, b10==5, b11==0; last word rev16→op23
   RETURN 25/25; fixed word 0x00074000→op58 24/25; tail-aligned rev16-RETURN 19; ≥50 ✓.
2. Main proto decompilation: `lua-bytecode/decompile_lua_res.py` (vfs version; original
   `work/lua-scripts-full-20260814/decompile_vfs.py`):
   ```bash
   python3 generate_scripts.py         # 25 → scripts/*.lua (main proto + constants + tail summary)
   ```
3. Nested proto decoding: `lua-bytecode/decompile_lua_nested.py` + `batch_nested.py`:
   ```bash
   python3 batch_nested.py             # 25 → scripts-full/*.lua + nested-stats.json
   ```
   Nested code region location: from some offset after hdr5 to the first plain-RETURN instruction word
   `(w&7)==2 && (w>>29)==7`, a 4B-aligned sequence; no other RETURN inside the sequence, op∈{0,49,59,62,63}
   (NOP family) share ≤ 40% to prevent mis-anchoring; after the RETURN word come trailing bytes (4–16B)
   then the string region; strings = tag0x04/marker + XOR-k32; tail ends with `['_ENV'] + [u16][u16 0]`.

## Findings

### Instruction encoding and opcode table

- Modified Lua **5.3.6**, chunk **format=1** (byte `01` at file header offset 5).
- `opcode = ROR(w,29) & 0x3f = ((w & 7) << 3) | (w >> 29)`, 6-bit opcode at word bits
  `{29..31} ∪ {0..2}` (confirmed on-site in 3 independent ROR-29 sites).
- **62-opcode table** (number→semantic name→handler; full operand layout in
  `work/opcode-semantics-20260814/opcode-semantics.md` §3):
  | op | semantics | handler | op | semantics | handler |
  |---|---|---|---|---|---|
  | 0 | CONCAT | 0x55CA6A8 | 32 | NEWTABLE | 0x55C909C |
  | 1 | SETTABLE | 0x55C7C84 | 33 | LOADK | 0x55C9120 |
  | 2 | GETUPVAL | 0x55C7CB8 | 34 | SETTABUP | 0x55C9140 |
  | 3 | LOADKx | 0x55C7D04 | 35 | EQ | 0x55C7538 |
  | 4 | FORPREP | 0x55CA7E4 | 36 | LT | 0x55C75F0 |
  | 5 | VARARG | 0x55C7D3C | 37 | LE | 0x55C9F88 |
  | 6 | GETTABUP | 0x55C7E7C | 38 | TFORCALL | 0x55C9A7C |
  | 7 | ADD | 0x55C7EC8 | 39 | JMP | 0x55C9B04 |
  | 8 | SUB | 0x55C80A0 | 40 | TESTSET | 0x55C9AD0 |
  | 9 | MUL | 0x55C68CC | 41 | TAILCALL | 0x55C764C |
  | 10 | MOD | 0x55C828C | 42 | CALL | 0x55C9B44 |
  | 11 | POW | 0x55C6AB0 | 43 | SETTABLE | 0x55CA73C |
  | 12 | DIV | 0x55C6C80 | 44 | MOVE | 0x55C9224 |
  | 13 | IDIV | 0x55C84D8 | 45 | GETTABLE | 0x55C9248 |
  | 14 | BAND | 0x55C6E40 | 46 | GETTABLE | 0x55C9270 |
  | 15 | BOR | 0x55C8730 | 47 | GETTABUP | 0x55C941C |
  | 16 | BXOR | 0x55C7048 | 48 | GETTABUP | 0x55C9B9C |
  | 17 | SHL | 0x55C8940 | 49 | NOP | 0x55CA65C |
  | 18 | SHR | 0x55C8B58 | 50 | LOADK | 0x55C7684 |
  | 19 | UNM | 0x55C8D98 | 51 | MOVE | 0x55C9504 |
  | 20 | BNOT | 0x55C8E6C | 52 | NEWTABLE | 0x55C95DC |
  | 21 | NOT | 0x55C8F6C | 53 | SELF | 0x55C9DF8 |
  | 22 | LEN | 0x55C8FD0 | 54 | SELF | 0x55C7750 |
  | 23 | RETURN | 0x55CA87C | 55 | GETTABLE | 0x55C7838 |
  | 24 | TEST | 0x55C9000 | 56 | CLOSURE | 0x55C97F0 |
  | 25 | TESTSET | 0x55C7248 | 57 | EQ | 0x55C7538 |
  | 26 | LOADBOOL | 0x55C9054 | 58 | GETTABLE | 0x55CA770 |
  | 27 | SETLIST | 0x55C72AC | 59 | NOP | 0x55CA65C |
  | 28 | FORLOOP | 0x55C73B8 | 60 | GETTABUP | 0x55C7A88 |
  | 29 | SETUPVAL | 0x55C747C | 61 | NEWTABLE | 0x55C9FE8 |
  | 30 | CLOSURE | 0x55C9940 | 62 | NOP | 0x55CA65C |
  | 31 | LOADNIL | 0x55C74D0 | 63 | NOP | 0x55CA65C |
  Shared handlers: op35/57→EQ; op49/59/62/63→dispatch head (NOP/default); op28/39/4 share
  the JMP tail at 0x55CA644 (sBx = bits4..20 − 0x1FFFF, ×4).
  Operand layout examples (VM side): op6/45 A bits `{22..28,8}`, B `{10..14,3..7}`,
  C `{19..21,9..14}` RK=bit21; op50 A `{3..8,9..10}`, K `(w>>11)&0x3FFFF`;
  op23 RETURN A `(w>>3)&0xFF`, B `{16..17,25..26}`; op42 CALL A `{22..28,8}`,
  B=nargs+1 `{19..21,9..14}`, C `{10..14,3..7}`; op39 JMP A `(w>>18)&0xFF`,
  sBx `{3..17,26..28} − 0x1FFFF`.
- **File format vs VM layout conflict (compiler generation gap)**: the layouts measured in the
  corpus disagree with the VM handlers for op8/9/12 (CALL vs SUB/MUL/DIV), op30 (NEWTABLE vs CLOSURE),
  op35 (GETUPVAL vs EQ), op36 (GETTABUP vs LT) and table-operation A-bit positions; since
  `luaU_undump` performs no load-time transform, the corpus files were produced by a
  **different-generation compiler** (shared opcode numbering, different conflict-set assignment).
  **Disposition: use the file-format layout for decompiling the corpus; the VM supplies the semantic class
  and adjudicates the runtime format**.
- **No load-time code transform**: undump→loadFunction→memcpy, chunk instructions enter Proto::code
  verbatim and are executed verbatim at runtime (opcode-semantics.md §6 decompilation evidence).

### Decompilation results

- **FETest 22 files / 5232 instructions / 130 protos**: old LOW-CONF 1209 (23.1%) →
  new LOW-CONF **339 (6.5%)** (target <10% achieved). TestMain 28 instructions → 0 LOW-CONF.
  Per-file table in `work/opcode-semantics-20260814/LOWCONF-STATS.md`; output in
  `lua-bytecode/rerun/*.lua` (22 files) and `fetest-decompiled/**/*.res.lua`.
  Semantic validation anchors: TestMain 7×op50 LOADK → K=0,3,6,8,10,11,14 exactly hit
  `"202002211706"`/`"FrameWork/Loader"`/`"common/pprint"`/`"common/safecall"`/
  `"Logic/BattleLogic"`/`"LuaGen/LuaStruct"`/`"setpause"`; ConstDefine →
  `Fix64_ZERO = Fix64.fromInt(0)` etc. (GETTABUP `0xc0200200` → `R0=_ENV["Fix64"]`,
  GETTABLE `0xa0200405` → `R0=R0["fromInt"]`); FEEnumForLua 1777 constants:
  every SETTABLE forward/reverse enum mapping hit (BattleCamp BLUE=1…BOTH=14).
- **vfs battle scripts 25 files**: 25/25 main protos decompiled successfully (all source paths decoded to
  real paths `@Unity_proj/…/WorkFlow/Scripts/…`); 24/25 complete constant tables, 1/25
  (FlowActionReduceCDRate) kc fallback 3; output 804 lines (90.7% validated content).
  All gameplay strings extracted: `RunScript("scriptAsset")`, `GetSkillMgr():ReduceCDRate(...)`,
  `Battlefield.SearchHeros` + `IsDead/IsFakeDead`, `FlowActionSetVfx_Bind`,
  `triggerTime/SetFinish/insId`, `GetBattleTime`, `IsInSpring` etc.
  Nested: 25/25 contain RETURN-anchored code regions; 435 strings extracted (deduplicated);
  the "RETURN word + trailing bytes + first string" triple is byte-identical across ≥13 files.
  Full manifest (bytes/instruction words/constant counts/registration types) in
  `work/lua-scripts-full-20260814/MANIFEST.md` §3; per-file nested stats
  `work/lua-nested-20260814/nested-stats.json` (hdr5/field4/u32@+9/code start-end/fn_keys).
- **Scan conclusion**: signature scan of the entire corpus, 95,453 files (`1b 4c 75 61 53` + format 01,
  probed at offsets 0/2/4) hits only two places — FETest 22 (offset 0, old format) + vfs WorkFlow/Scripts 25
  (offset 2, `f6 05` new format); the 7.2.55.126 new-corpus LData vfs entries of the same name are
  `[16B new header 60 05 00 3c 5d aa …] + 7.2.46.104 body` (324/340 bytes related, tail byte-identical),
  so the nested layout applies directly.

### Outstanding items (honest list)

- The **file-format bit fields of the JMP/TEST/loop/compare opcodes are not yet recovered**
  (op39/24/25/40/28/4/37/38/3/arithmetic 13-18 etc. flagged `[LOW-CONF]`); main constituent of the new
  339 LOW-CONF entries.
- Nested code region start offsets 0x0c–0x21 vary per file; the 4B field/u32@+9/trailing bytes/trailer
  split and the tail-end `[u16 X][u16 0]` semantics are all [LOW-CONF]/[INFERENCE].
- The new-format 2B terminator is judged not to be a checksum after ruling out 14 checksum
  formulations ([INFERENCE] line numbers/debug info/random field).
- tag 0x20 semantics undetermined (1 occurrence); semantics of the 10 bytes of the 11B delta other than
  byte6 undetermined.
- Operand semantics of the main proto template words (the `0x0415xx00`/`0x00074000`/`0x0212xx80` family)
  under swap reading not closed (inter-generation layout difference of loader/registration stub instructions).

## Evidence Files

(relative to `feproj-clone/`; the `work/…` prefix refers to the original workspace; contents identical in both)

- `lua-bytecode/decompile_lua_res.py` — 62-opcode table + HANDLER address table + VM layout
  decoder (source mirror: `work/opcode-semantics-20260814/decompile_lua_res.py`).
- `lua-bytecode/decompile_lua_res_filefmt.py` — production decoder (file-format layout + RK +
  VM semantic names; mirror in the same directory).
- `lua-bytecode/decompile_lua_nested.py`, `lua-bytecode/batch_nested.py` — nested
  proto decoders (mirror `work/lua-nested-20260814/`).
- `lua-bytecode/newformat/decode_layout.py` — new-format layout validator (mirror
  `work/lua-newformat-20260814/decode_layout.py`).
- `lua-bytecode/fetest-decompiled/parse-verification-22.txt` — 22/22 exact EOF re-verification.
- `lua-bytecode/rerun/*.lua` (22 files), `lua-bytecode/fetest-decompiled/**/*.res.lua`,
  `lua-bytecode/scripts-full/*.lua` (25 nested versions), `lua-bytecode/battle-scripts/scripts/*.lua`
  — decompilation artifacts.
- `decoders/lua_res_parse.py` — strict FETest format=1 parser (tag-0x14 long-string rule).
- `work/opcode-semantics-20260814/opcode-semantics.md` — full 62-opcode table + operand
  layout + conflict adjudication + cross-validation (**authoritative source of the opcode table**).
- `work/opcode-semantics-20260814/README.md`, `LOWCONF-STATS.md` — method chain and
  22-file statistics.
- `work/lua-decompile-20260814/README.md` — first-generation FETest decompilation method (layout recovery
  evidence chain items 1-11: RETURN 130/130, LOADK constant hits, GETTABUP/GETTABLE/SETTABLE/CALL etc.).
- `work/lua-newformat-20260814/NEWFORMAT.md` — new-format byte-by-byte layout + full 16B header table
  + 68-anchor swap validation.
- `work/lua-scripts-full-20260814/MANIFEST.md` — full 25-file manifest/semantics/scan stats.
- `work/lua-nested-20260814/NESTED-FORMAT.md` — nested layout + boundary rules + evidence chain.
- `work/ai-cfg-recovery-2026-08-04/lua-res.md` — container syntax + tag-0x14 length rule +
  per-file 22-file table (nstr/nL14); `lua-vm.md` — ROR29/jump table/tag-0x14 closure record.
- `work/feproj-readable-20260814/elf-views/libFEProj-rttext.so` — rttext view
  (dispatch 0x55CA65C, jump table 0x58B1AFC, handler evidence).
- `reports/2026-08-05_wild-rift-7.2-module-logic-master.md` §statistics — 17/22 →
  22/22 (tag-0x14 fix) superseded note.

## Reproduction Notes

1. **Don't mix the two formats**: FETest `.res` does **not swap** (`0xea02a802 → ror29=23 RETURN`);
   vfs LuaHolder main proto **swaps** (`02 e4 02 88 → 0xe4028802 → ror29=23`); nested
   proto is **plain** (`02 88 02 ea → 0xea028802 → ror29=23`, swapping yields 20=BNOT, inconsistent).
   Check for the `f6 05` wrapper first, then pick the path.
2. **opcode extraction**: `((w & 7) << 3) | (w >> 29)`, not `(w >> 29)` and not
   `w & 0x3f` — the 6-bit field is split across the top 3 bits + bottom 3 bits of the word.
3. **Operand layout must be chosen by the target source**: decompile the corpus with the file-format
   layout (`decompile_lua_res_filefmt.py`); the VM layout only adjudicates semantic classes;
   op8/9/12/30/35/36 disagree between the two generations, and the wrong layout yields out-of-bounds operands.
4. **Strings**: marker 0→empty, 0xff→u32-1, else marker-1; XOR restarts from offset 0 for each string
   using `LUA_KEY[i % 32]` (`i` is the in-string offset, not the file offset).
   `tools/feproj_static/lua53.py` implements vanilla size_t semantics and is guaranteed to raise
   `struct.error` on this format — don't use it as a baseline.
5. **tag-0x14 is a long string, not a nested marker** — 5 files previously stalled on it; length rule
   `0=NULL / 0xff=u32 / else N-1`.
6. **kc out-of-bounds fallback**: const count u32=0x1ef0003c of FlowActionReduceCDRate/EquipBuffCD is
   corrupted; fall back to 3 (the following `04 0b` record is the `NEW_ACTION` string).
7. **Nested code region location**: RETURN anchor `(w&7)==2 && (w>>29)==7`; no other RETURN allowed in the
   sequence; op∈{0,49,59,62,63} (NOP family) share ≤ 40% to prevent mis-anchoring; tail ends with
   `['_ENV'] + [u16][u16 0]`.
8. **swap validation self-check**: the main proto last word must be op23 after rev16; fixed word
   `0x00074000` is op58 after rev16 (the only exception is luckyBoxPickup, where that word sits at w2).
9. **b0 == src_n + 14** and **b6 == code_words + 2** serve as parsing self-checks; b14 varies per file,
   b15=0x0a, and b12/b13=0x20e0 are format constants — don't guess semantics for them as data fields.
10. **Version correspondence**: the 7.2.55.126 new LData vfs entries = `[16B new header] + 7.2.46.104 body`
    (tail byte-identical) — this slice's nested layout applies to both versions; the real gameplay logic lives
    in the 25 WorkFlow/Scripts scripts, and the 22 FETest ones are the loading/framework layer.
