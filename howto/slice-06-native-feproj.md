# Slice 06 — libFEProj.so Native Static Reverse-Engineering Methodology (XOR-0x30 encrypted islands / runtime view / key anchors)

> This document is the "native static" slice of the FEProj public reverse-engineering methodology guide. All evidence comes from the following workspaces (read-only verification; no source files were modified):
> - Research workspace root: `<research-workspace>/` (hereafter `work/` or `reports/`; all relative paths are rooted there)
> - Archive clone root: `feproj-clone/` (hereafter `feproj-clone/`)
>
> Exclusion scope: no device-fingerprint/identity-rotation/anti-detection/account-ban/evasion content of any kind. This slice only covers "how to reconstruct logic from static binaries + metadata + emulation views" — purely static methodology.
>
> Target build: **Wild Rift 7.2.0.2460 (build 7246064, resource 7.2.55.126, arm64-v8a, package com.riotgames.league.wildrift)**.

---

## Objective

This slice answers four questions:

1. Identity, load layout, and address conventions of `libFEProj.so` (FEProj = frame-sync combat logic engine + Lua script host + luabridge class-binding layer);
2. Its core protection: the **XOR-0x30 encrypted code islands** — what they are, how large, how to identify them statically, and how to map them back to plaintext at runtime;
3. Exact coordinates and responsibilities of five key anchors: version-stamp registrar, 881-class binding dispatcher, modified Lua VM `luaV_execute`, libLNet session-key entry, damage core and RPN attribute-expression engine;
4. Two reproducible reconstruction paths: **qemu-aarch64 runtime .text dump** (authoritative plaintext view) and **a colleague's XOR-0x30 decode reproduction script** (purely static).

Target reader: another agent or engineer who needs to pick up these coordinates and commands directly without re-reading the whole corpus.

---

## Key Coordinates

### 0. Binary identity and loading

| Item | Value |
|---|---|
| File | `corpus/native-elf/decompressed-arm64/libFEProj.so` (= three copies under `work/native-container-audit/decompressed-arm64/`, `arm31-work/ram-check/xbin/` are byte-identical, md5 4e695ecf…) |
| Size | **120,283,368 B** (≈114.7 MiB; `.text` = 72,244,380 B) |
| sha256 | **`5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a`** (passes runtime verification) |
| Compiler | NDK r16b, stripped |
| Address convention | **static VA == file offset, valid only for the first LOAD (vaddr < 0x6a5ba94)**; second LOAD (data region) `vaddr = file offset + 0x10000` |
| .text | `0x1155190 .. 0x563AE2C` (0x44E5C9C B; the earlier convention writing 0x15A4F2C was an old truncated value; 0x563AE2C is authoritative) |
| Segment reconstruction | IDA 9.4 rebuilt 24 segments from PT_LOAD + self-healing sections (`.plt 0x1149F40-0x1155190`, `.rodata 0x563AE30-0x58B7340`, `.eh_frame 0x5B46980-0x6596D68`…); scrambled section headers do not affect loading |

Evidence: `reports/2026-08-04_wild-rift-7.2-feproj-xor30-island-crack.md` (Provenance key), `work/feproj-ida-20260814/REFINED.md` §1, `work/u16-semantics-20260812/QemuSim/report.md` §1.

### 1. XOR-0x30 encrypted code islands

| Item | Value |
|---|---|
| Mechanism | ≈9.55% of the 4KiB pages in `.text` are stored byte-wise XORed with the **single-byte key 0x30**; normal pages decode directly from raw bytes, island pages have raw decode density <100/1024 |
| Identification | Full `.text` decode-density map: of 17,637 4KiB blocks, **1,685 are low-density** (<100/1024); scanning each block with a 256-key single-byte XOR, **1685/1685 blocks fully decode 1024/1024 under key 0x30**, zero exceptions (next-best keys 0x31=988, 0x10=952) |
| Island size | 1,685 × 4KiB = **6,901,760 B** (≈6.58 MiB, 9.55% of .text) |
| Island catalog (two generations of convention) | **771-island catalog** (`work/static-analysis-2026-08-04/island-catalog.jsonl`, historical line set) → **enhanced 1,324 islands** (`work/ai-cfg-recovery-2026-08-04/island-catalog-enhanced.jsonl` = 771 + 553, coverage 9.55% → **25.04%**, i.e. 18,087,936 B / 72,244,380 B). **1,685 is the "encrypted page count" convention, 1,324 is the "catalog line" convention**; they answer different questions and do not conflict (catalog merges contiguous ranges, pages are counted per 4KiB) |
| Relocations | 727,616 total in the file; no entry has an offset/addend landing in an opaque page or at the 9 call sites (`work/ai-cfg-recovery-2026-08-04/relocations.json`) — from the static linker's perspective the islands are "unreferenced" |
| Islands are live code | 21,484 BL edges from normal code into islands (`island-inventory.json`; the static-analysis master report separately counts 22,883 with a different graph construction) |
| Runtime decryption | File segment is R-X with filesz==memsz, so decryption necessarily happens between mmap/mprotect inside the game's custom loader; qemu dlopen empirically confirms DT_INIT decryption (see below) |

Evidence: `reports/2026-08-04_wild-rift-7.2-feproj-xor30-island-crack.md` §1, §6; `work/ai-cfg-recovery-2026-08-04/catalog-enhanced.md`; `feproj-clone/isa-islands/MANIFEST.json` (xor_transformed_text = `feproj-text-xor30.bin`, island_count 771, text_va 18174352=0x1155190, text_size 72244380).

### 2. Runtime remapping: the 8-slot permutation P

**XOR-0x30 is only the byte layer; runtime addresses are also affected by slot/page permutation**. `R(v)=S(v-0x10000)^0x30` holds for only 92/771 islands — it is not a global rule.

| Item | Value |
|---|---|
| bulk base | **X20 = 0x1167000** (module-internal offset) |
| Group structure | every 8×0x10000 slots form a group; `group g = floor((v−X20)/0x80000)` |
| Permutation | **P = [6,2,4,5,3,7,0,1]** (dest page P[i] receives the first 0x4000 B of slot i); P_inv = {0:6, 1:7, 2:1, 3:4, 4:2, 5:3, 6:0, 7:5} |
| Mapping law | runtime v (bulk, v−X20 = 8g·0x10000 + p·0x10000 + off): `off<0x4000` → `R(v)=S(X20+(8g+P_inv[p])·0x10000+off)` (permuted source of the XOR-0x30); `off>=0x4000` → raw file bytes as-is |
| Store→execute | content S(v) stored at static v executes at `dest(v)=X20+(8g+P[i])·0x10000+off` (i.e. v+(P[i]−i)·0x10000) |
| Tail rule | each segment flushes back only floor(N/8) complete groups; the remainder block is XORed in place (S(self)) without permutation, then scalar-XOR tail |
| Verification | model vs full 72 MB runtime .text dump: **0/72,227,996 mismatches** (only the 16,384 B header region `[0x1157000,0x115B000)` is skipped; that region is handled by an independent LUT/CBC stream cipher `0x8da2fa8→0x8da3e58`, not XOR-0x30); .rodata likewise 0 mismatches |
| Decoder itself | disassembled at `0x8da2de4/0x8da31a8/0x8da2c68`, keys `0x8dc4d98/0x8dc4d9c`, perm table derived from `0x62453701` via the ushl shift table `0x8d62f40/0x8d62fc0` |

**Anchor conversion examples (the pitfall this slice hits most often)**:
- What executes at runtime `0x158853C` is S(0x157853c) (src slot) — i.e. the "registrar";
- What is stored at `0x158853c` (the old reports call it the "F4 assert cluster") actually executes at runtime **0x15A853C** (island 27, group-8 +0x20000) and is a **luabridge class-binding fragment for EquipAssetObject**;
- Runtime `0x13D8460` = S(0x13B8460) (std::string assignment routine, island 18); S(0x13D8460) itself executes at runtime 0x1378460.

Evidence: `work/ai-cfg-recovery-2026-08-04/remap-table.md` (full table, 984 rows; anchor table §2, island-header table §3, 9 plaintext BL sites §2.1); `feproj-clone/README.md` / `MANIFEST.md` key-coordinates section.

### 3. The five anchors

| Anchor | Coordinate | Responsibility |
|---|---|---|
| Version-stamp registrar | runtime **0x158853C** (= S(0x157853c)); the same raw address is island 27's storage | `FE_RegisterVersionStamp(blob, len, ctx)`: frees old cache → mirrors into globals `0x726D0C8/0x726D0D0/0x726D0D8` (ctx/g_buf/g_len); len<1 → assert + error code 0x45C(1116); **only direct BL caller 0x3EC41E8** (version validator) |
| Version validator | **0x3EC3F28** (plaintext region, raw==runtime; BL site 0x3EC41E8 is inside the function) | 4-stamp scan: encoded expected stamp (`(version[0..8)+'9'*(len-8)) ^ k32`), plaintext expected version, 13B magic `EF EF 4D 2A 72 74 C1 9E E7 7F 0D 97 1E`, plaintext `'202002211706'`; miss → 0x45B(1115); error strings built via 0x13D8460 |
| k32 key page | **0x57A2D60** (32B key `dd 7d 18 42 44 f3 ac d6 4e 3a a7 28 2d 56 b5 b0 98 e7 a7 53 bb 76 94 6e e5 bc 8e 2e 4c 22 14 7f`) | same-page string cluster: 0x57A2D80 "02002211", 0x57A2D93/0x57A2DB7 error strings, 0x57A2DDA "/Res/FETest/", 0x57A2DE7 "/Res/LData/", qword 0x57A2E20 = 12B encoded magic; consumers = XOR32 helper 0x3EC3E04, loadString 0x55C4578, 22 .res extended headers |
| Modified Lua loader | **0x55C3B54** (= luaU_undump; verification instructions 0x55C3BF8 `cmp w8,#0x53`, 0x55C3C18 `cmp w8,#1`) | header checks: magic{0x1B,'=','@'} + "Lua" + version 0x53 + format 0x01 + LUAC_DATA `19 93 0D 0A 1A 0A` + size 4,4,4,8,8 + LUAC_INT 0x5678 + LUAC_NUM 370.5; chain `lua_load`0x55AF380 → 0x55B50CC → this function → loadFunction 0x55C3EDC → loadString 0x55C4578 |
| **luaV_execute** | **0x55C6760** (not exported; located via lua_pcallk→luaD_pcall→luaD_rawrunprotected→f_call 0x55AF370→luaD_callnoyield 0x55B4910→luaD_precall 0x55B4320→this function) | main loop 0x55CA65C; `opcode = ROR(insn,29)&0x3f` (3 independent static points + runtime verification); opcode table 0x58B1AFC (64×i32, 62 valid entries, target = base + i32 entry); dispatch table in x27 loaded at prologue 0x55C6794-0x55C6798 |
| 881-class binding dispatcher | runtime **0x1589ACC**; case stubs **0x1589AF4+12·i**; jump table **file[0x56BCB50+4·i] ^ 0x30303030** | `dispatcher(L, case 0..880)`, w1≥0x372 → default stub 0x158C444 returns silently; each case stub = `bl template; ldp x29,x30,[sp],#0x10; ret`; class-name table file 0x56BD000..0x56C0000 (XOR-0x30, case order); 881/881 full rescan passes |
| NetCryptoSetKey | **libLNet.so 0x9F640** (exported; XOR-0x50 storage + control-flow flattening) | `(ctx, key, keylen)` → `ctx->vtbl[0x10]` = 0xD6EE0 (SetKey); NetCrypto object 0x128 B, ctor 0xD6AE0, vtable 0x22C878 `[0x10]=0xD6EE0/[0x18]=0xD7410/[0x20]=0xD7834`; AES-CCM-class (CRYPTO_ccm128_* @0xF24DC); **the key is a runtime input; there is no hardcoded key in the library**; flattened state slots 0x24AD38..0x24AD78, init_array CBC decryption (key 0x0A89EF32, ctor 0xA06C4 covers 0x24A3C0..0x24AE1C) |
| Damage core | see next section | ATTR enum table sub_2C76D64, Hurt executor sub_4B39FF0, full entry sub_1FDB1E8, dispatch sub_1FDA454, state machine sub_1D08F38, mitigation sub_1ADB99C/sub_1CFCBB4 |
| RPN attribute-expression engine | compiler **sub_3E91004@0x3E91004**, lowering sub_1563234, cache sub_1561884 (map global 0x726C520), **evaluator sub_13E43D8@0x13E43D8**, closure dispatch sub_15635E0 | formula strings (`kill.basedamage+att.attr_magic*…`) → AST → closure → Fix14 fixed-point evaluation |

Evidence: `work/feproj-readable-20260814/LOGIC_MAP.md` (all anchors), `work/feproj-readable-20260814/anchors/01..05-*.md`, `work/feproj-ida-20260814/REFINED.md` (IDA 9.4 dual-view comparison + symbol write-back), `work/feproj-extended-20260814/BINDINGS.md` (881 table), `work/ai-cfg-recovery-2026-08-04/lua-vm.md` + `slices/04-lua.md` (luaV_execute), `work/ai-cfg-recovery-2026-08-04/lnet-vm.md` + `feproj-clone/net-protocol/SessionKeyChain/session-key-chain.json` (NetCryptoSetKey 0x9F640).

### 4. Damage core and RPN engine coordinate details

**Numeric precision**: Fix14 (1.0 = 0x4000 = 16384; 100.0 = 0x190000 = 1638400); operations `x<<14`/`>>14`, intermediate Fix28.

| Function | Coordinate | Role |
|---|---|---|
| sub_2C76D64 | 0x2C76D64 | ATTR enum name table (0x8 ATTACK / 0x9 ARMOR / 0xA-0xB armor penetration flat/percent / 0xC CRI_RATE / 0xD CRI_DAMAGE_RATE / 0x10 MAGIC / 0x11 MAGIC_DEF / 0x12-0x13 magic pen / 0x26 ARPEN / 0x27 MAGICPEN / 0x36 bonus armor-pen rate / 0x37 ACTIVEPEN) |
| sub_4B39FF0 | 0x4B39FF0 | FlowActionHurt executor: iterates targets a1+184/192, crit_flag = *(flow+232), delivered via a14 |
| sub_1FDB1E8 / sub_1FDB908 | 0x1FDB1E8 / 0x1FDB908 | full damage entry (19 args) / delivery dispatch |
| sub_1FDA454 | 0x1FDA454 | damage unit dispatch: **crit flag v30+506 = a14&1**, HurtFlags attached at v30+328 (sub_22BC89C), damage value v30+216 |
| sub_1D08F38 | 0x1D08F38 | damage unit state machine: multi-target split `(total<<14)/N` (:597) |
| sub_1DC7094 | 0x1DC7094 | hurt entry parsing: type≤1 fixed value (+48); >1 goes through formula sub_13E43D8 |
| sub_13E43D8 | 0x13E43D8 | formula-driven (same evaluator as the RPN engine) |
| sub_1ADB99C / sub_1CFCBB4 | 0x1ADB99C / 0x1CFCBB4 | resistance mitigation: `0x4000 − (armor<<14)/(armor+1638400)` ≡ `100/(armor+100)`; generic version clamps coefficient at 1.0 |
| sub_20053B4 / sub_1F66418 / sub_20700BC | 0x20053B4 / 0x1F66418 / 0x20700BC | attribute read chain: `(actor+480, attr_id)` → array slot → effective value (+152 modifier → sub_2126FBC) |
| RPN compiler | sub_3E91004@0x3E91004 (9.3 KB, recursive descent) | tolower → tokenize (sub_3E8FE04 / operator lexer sub_3E95384 / math name→id sub_3E9685C floor=13…sqrt=20) → AST nodes 0x30/0x38/0x50/0xB0 |
| RPN registry | 7 std::maps (constructed sub_11573DC) | 0x726C4C0 prefix→id (att=1…skillgem=12), 0x726C4F0 fixed variables→id (41 entries, attr_level=2, level=43, time=21…), 0x726C430 actor attribute names, 0x726C460 skill variables (85 entries), 0x726C520 compile cache |
| Lowering/evaluation | sub_1563234 / sub_15635E0 / sub_156222C / sub_156F53C | AST→closure pointer pairs (node+144/+160); closures dispatch by prefix id, return `int<<14` fixed point |

Evidence: `work/damage-core-20260814/DAMAGE-MODEL.md`, `work/attr-system-20260814/ATTR-MODEL.md`, `work/crit-rng-pin-20260814/CRIT-RNG.md` (isCrit write point +506 cross-validated).

### 5. qemu-aarch64 runtime .text dump (authoritative plaintext view)

| Item | Value |
|---|---|
| Toolchain | qemu-aarch64 11.0.1 (linux-user) + gdb-multiarch 17.2 + NDK r26d (aarch64-linux-android21) + real-device bionic sysroot (SDK 35, 8 bionic libs + linker64) |
| Result | **full dlopen of the real 120 MB libFEProj.so succeeds**: DT_INIT=0x8D6A064 (CBC-XOR .data decryptor + island decryption), all 49,056 B of init_array (~6k entries) executed, dlopen returns OK |
| Base anchor | exported symbol `AES_options` (VA 0x5492428): `bias = dlsym(AES_options) - 0x5492428` |
| Dump command | `./src/probe-dlopen dump ./dump/text_runtime.bin 1155190 44e5c9c` → **72,244,380 B** (from `bias+0x1155190`) |
| Authoritativeness | compared against raw per 4B: 45,186,095/18,061,095 words differ (= island regions), i.e. **~25% of .text is encrypted in the file**; the catalog covers only 771 pages and StaticLocate's 1,109 segments still miss regions (e.g. 0x1A5700C/0x42E9BF4) → **the runtime dump is the only authoritative decoded view** (md5 `944e7154716e41b7a652b29ba316ad5f`) |
| Usage | ① replace .text to build the rttext-view ELF (`dd if=text_runtime.bin of=libFEProj-rttext.so bs=1M count=69 seek=$((0x1155190)) conv=notrunc`) → full-address decompilation in IDA/Ghidra; ② disassemble the dump directly to consume the chain; ③ qemu+gdb single-step (`-g 12345` → `target remote` → break call_va → break *$x0) into real FrameEngine code |

Evidence: `work/u16-semantics-20260812/QemuSim/report.md` (§1/§2), `feproj-clone/qemu-sim/src/probe-dlopen.c`, `feproj-clone/qemu-sim/dump/text_runtime.bin`, `work/feproj-readable-20260814/README.md` (three-view construction).

---

## Method Steps

### A. Identify XOR-0x30 encrypted islands (purely static, rerunnable)

```bash
# Prerequisites: capstone; ELF = corpus/native-elf/decompressed-arm64/libFEProj.so
# Step 1: page forensics — relocation check + 256-key XOR scan + entropy + full .text decode-density map
python3 work/ai-cfg-recovery-2026-08-04/page_forensics.py
#   → relocations.json (no entry lands on island pages/call sites), xor-scan.json (key 0x30 uniquely fully decodes 1024/1024),
#     text-decode-map.json (17,637 blocks / 1,685 low-density blocks)
# Step 2: XOR island inventory — ^0x30 decode-density confirmation of low-density blocks + per-word disassembly of sample page 0x1588000
python3 work/ai-cfg-recovery-2026-08-04/xor_islands.py
#   → xor-islands.json (xor30_full=1685), xor30-page-disasm.txt (1024/1024), raw/xor-key30-page.bin
# Step 3: island-edge statistics — scan all BLs (imm26) in .text, count normal-code→in-island-target edges
python3 work/ai-cfg-recovery-2026-08-04/island_edges.py
#   → island-inventory.json (21,484 BL edges; merged island ranges)
```

### B. Reproduce the colleague's XOR-0x30 decode (patchgen.py, the most reused method)

```bash
# feproj-clone/wr-mod/patchgen.py — converts "plaintext patch at runtime address" into "XOR-0x30 write-back at file offset"
# Core: the mapping function mapping(v) replicates remap-table's 8-slot permutation + island determination
#   d = v - X20(0x1167000); g = d//0x80000; rem = d%0x80000
#   p = (rem>>16)&7; off = rem&0xffff
#   off<0x4000 → island slot: file_off = X20 + (8g + PINV[p])*0x10000 + off, file bytes must == runtime bytes ^0x30
#   off>=0x4000 → raw slot: file_off = v, file bytes == runtime bytes
python3 wr-mod/patchgen.py 0x158853c <orig_hex> <new_hex> --out patch.txt
#   → patch.txt, one `FILEOFFSET HEXBYTES` per line (contiguous runs merged); on write-back, island slots get new^0x30, raw slots get new as-is
# Device-side write-back: wr-mod/apply_patch.sh (per-byte drift check + dd notrunc)
```

Key point: patchgen's `mapping()` treats `off<0x4000` as island (permute back to the source slot, then write back ^0x30) and `off>=0x4000` as plaintext direct write — byte-identical to remap-table's mapping law; its `P/PINV` and `X20/BASE` constants are exactly the §2 coordinates.

### C. Build the three-view ELFs (Ghidra 12.1.2 headless targeted decompilation)

```bash
# View 1 raw: as-is; View 2 rttext: .text replaced with the runtime dump; View 3 slayer: .text replaced with feproj-text-xor30.bin (S layer)
dd if=text_runtime.bin      of=libFEProj-rttext.so bs=1M count=69 seek=$((0x1155190)) conv=notrunc
dd if=feproj-text-xor30.bin of=libFEProj-slayer.so bs=1M count=69 seek=$((0x1155190)) conv=notrunc
# Note: import with -noanalysis + targeted post-processing (full default analysis is infeasible on 120MB/58k functions, and the XOR view triggers AddressMap segment explosion)
/usr/share/ghidra/support/analyzeHeadless ghidra-projects rtproj -import elf-views/libFEProj-rttext.so -noanalysis \
  -scriptPath scripts -postScript DecompileAt2.java \
  "168853c:registrar;16a853c:f4_assert_cluster;14d8460:register_routine;…" "$PWD/decompiled/rttext" "573b3a2;…"
# Coordinates: Ghidra program address = static VA + 0x100000 (image base 0x100000, consistent across all blocks)
```

### D. IDA 9.4 headless refinement (raw + rttext dual IDBs)

```bash
idat -A -S scripts/refine.py   -L logs/refine-raw.log  -o libFEProj.i64        corpus/native-elf/decompressed-arm64/libFEProj.so
idat -A -S scripts/refine_rt.py -L logs/refine-rt.log  -o libFEProj-rttext.i64 elf-views/libFEProj-rttext.so
idat -A -S scripts/verify.py  -L logs/verify2.log     libFEProj.i64            # read-only re-verification
# raw view: 5 anchors delta=0; 01/04 (encrypted islands) Hex-Rays failure = expected (fallback hexdump); 02/03 clean C; 05 data page
# rttext view: 01/04 decompile successfully (authoritative C)
```

### E. qemu-aarch64 runtime dump (authoritative plaintext view)

```bash
qemu-aarch64 -L sysroot ./src/hello                      # bionic sysroot smoke test
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen probe
#   → dlopen OK  base=… anchor@…(AES_options anchors bias)
./src/probe-dlopen dump ./dump/text_runtime.bin 1155190 44e5c9c   # 72,244,380 B authoritative plaintext
# Call any VA function: probe-dlopen call <va> <nargs> <args...>; callframe/callframe2/callfix feed real frame bytes
# Single-step: qemu-aarch64 -g 12345 -L sysroot ./src/probe-dlopen call 1a5d400 1 0x41 (background) → gdb-multiarch target remote :12345
```

---

## Findings

1. **libFEProj.so = FEProj's frame-sync combat logic engine** (FrameEngine), not an anti-cheat component; its Lua host is a modified Lua 5.3 (format 1, 62-opcode custom encoding `ROR(insn,29)&0x3f`), with luabridge-style 881-class registration (dispatcher 0x1589ACC).
2. **XOR-0x30 is the binary's own protection**, not a chunk/resource transform: 1,685 low-density 4KiB pages fully decode 1685/1685 under key 0x30 (zero exceptions), 9.55% of .text (6,901,760 B); the enhanced catalog extends the island set to 1,324 lines / 25.04% coverage (including corrected island sizes: 769/771 islands are actually larger than the catalog records, 403 cases of 0x3000→0x4000).
3. **Runtime address = double transform of XOR + 8-slot permutation**: P=[6,2,4,5,3,7,0,1], base X20=0x1167000, bulk region `off<0x4000` must be permuted back to the source slot; the `-0x10000` translation holds for only 92/771 islands. The model has 0 mismatches against 72 MB of runtime text.
4. **Static decompilation of encrypted islands from the raw ELF failing is expected** (anchor 0x158853c first bytes `c3 23 30 c9`, 0x13d8460 first bytes `30 00 76 c9`, Hex-Rays `halt_baddata`/fallback); **the rttext view (runtime dump replacing .text) is the only view decompilable at all addresses**.
5. **Version-stamp chain is closed**: `.res` header (`1B 4C 75 61 53 01 …`, shared by 22 FETest .res files) → 0x55C3B54 undump (version 0x53/format 1/modified LUAC_DATA/LUAC_INT 0x5678/LUAC_NUM 370.5) → version stamp '202002211706' (12B magic at TestMain.res 0x160: `ef 4d 2a 72 74 c1 9e e7 7f 0d 97 1e` = stamp ^ k32[0..12)) → 0x3EC3F28 validator (4 stamps) → 0x158853C registrar (mirror cache 0x726D0C8/D0/D8).
6. **881 dispatcher fully solvable**: `file[0x56BCB50+4i]^0x30303030` table entries → `0x565CB50+entry == 0x1589AF4+12·i`, 881/881 pass; case 164 = EquipAssetObject (= old "F4 assert cluster"), case 0 = GainDeckAssetObject, case 399 = FEInterfaceConfig (63 props), case 880 = FixTransform.
7. **NetCrypto key is a runtime input**: `NetCryptoSetKey(ctx,key,keylen)@0x9F640` → `vtbl[0x10]=0xD6EE0`; no hardcoded key in the library; AES tables (Te0@0x1E2D0C etc.) plaintext. libLNet itself uses XOR-0x50 + control-flow flattening (state slots 0x24AD38.., CBC decryption key 0x0A89EF32).
8. **Damage model**: mitigation `100/(armor+100)` (`0x4000−(armor<<14)/(armor+1638400)`, Fix14) empirically confirmed; crit flag write point `v30+506 = a14&1`; penetration is flat→percent order (latter [INFERENCE]); RPN formula engine 7 registries + fixed-point (×16384).
9. **Statically unreachable boundaries (honestly labeled)**: crit-decision RNG comparison points (flow evaluator indirect-call layer), message instance construction/injection points, 741-entry wrapper-table indirect-call sources, LOG_ID's log-side consumption — all require the dynamic surface; bare qemu dlopen cannot construct the match-time object graph (consumer-chain function 0x42E9874 etc. crash points already located; the object graph is tightly coupled).

---

## Evidence Files

(research workspace root = `<research-workspace>/`; clone root = `feproj-clone/`)

- `reports/2026-08-04_wild-rift-7.2-feproj-xor30-island-crack.md` — XOR-0x30 crack master report (1,685 pages/9.55%, 771→1324 conventions, 0x158853c boundary attribution, TestMain.res hit)
- `reports/native-module-role-map-7246064.md` — native module role map (responsibility boundaries of libFEProj/libLNet/libtdr/libRiotGamesApi)
- `work/feproj-readable-20260814/LOGIC_MAP.md` + `README.md` + `anchors/01..05-*.md` — full Ghidra C for the five anchors + correction records (dual views, 0x30000 twin not valid, FE_TN* family attribution)
- `work/feproj-readable-20260814/elf-views/libFEProj-{raw,rttext,slayer}.so` — three-view ELF artifacts
- `work/feproj-ida-20260814/REFINED.md` + `decompiled/01..05-*.c` + `scripts/refine*.py` — IDA 9.4 refinement (vaddr conversion, 0x7263078 flag-pointer slot, 0xBFFE4DF LOG_ID, LUAC_NUM artifact fix)
- `work/feproj-extended-20260814/BINDINGS.md` + `bindings/dispatcher-881-cases.tsv` + `LOADER-CHAIN.md` — 881 class-binding table + loader chain
- `work/key-functions-20260814/KEY-FUNCTIONS.md` + `anchors/01..06-*.md` — key combat templates (castSkill/buff/FlowActionUseMultiSkillTrigger)
- `work/damage-core-20260814/DAMAGE-MODEL.md` + `decompiled/core-*.c` — damage core (Fix14, mitigation formula, crit write point +506)
- `work/attr-system-20260814/ATTR-MODEL.md` + `work/crit-rng-pin-20260814/CRIT-RNG.md` — RPN attribute engine / crit channel
- `work/ai-cfg-recovery-2026-08-04/remap-table.md` — full 8-slot permutation table (0-mismatch verification)
- `work/ai-cfg-recovery-2026-08-04/{xor_islands.py,page_forensics.py,island_edges.py,xor-scan.json,xor-islands.json,text-decode-map.json,island-inventory.json,catalog-enhanced.md,island-catalog-enhanced.jsonl}` — rerunnable island-identification scripts and artifacts
- `work/ai-cfg-recovery-2026-08-04/lua-vm.md` + `slices/04-lua.md` + `lnet-vm.md` — luaV_execute location chain, opcode encoding, LNet flattening
- `work/u16-semantics-20260812/QemuSim/report.md` + `src/probe-dlopen.c` + `dump/text_runtime.bin` — qemu-aarch64 runtime dump
- `feproj-clone/README.md` + `MANIFEST.md` — key-coordinate quick reference (P permutation, dispatcher, NetCryptoSetKey 0x9F640, 10001 anchor)
- `feproj-clone/wr-mod/patchgen.py` + `apply_patch.sh` — XOR-0x30 write-back reproduction
- `feproj-clone/isa-islands/MANIFEST.json` + `island-catalog.jsonl` — 771-island catalog (S-layer view)
- `feproj-clone/qemu-sim/` — qemu probe source + text_runtime.bin copy
- `feproj-clone/net-protocol/SessionKeyChain/session-key-chain.json` + `NetCryptoCipher/netcrypto-cipher.json` — NetCryptoSetKey 0x9F640 call surface (incl. the il2cpp DllImport side)

---

## Reproduction Notes

1. **The address-convention triad**: corpus coordinates default to static VA == file offset (first LOAD); IDA/Ghidra linear addresses are ELF vaddrs (second-LOAD region vaddr = file offset + 0x10000); Ghidra program addresses = static VA + **0x100000** (image base 0x100000). Missing a conversion step by one notch is guaranteed to bite — 0x725d0c8 (file offset) = 0x726d0c8 (vaddr) = Ghidra 0x736d0c8.
2. **`-0x10000` is not a global rule**: it holds for only 92/771 islands. To fetch runtime plaintext by address, you must use remap-table's P permutation (or directly consult the src/dest columns of `island-catalog-enhanced.jsonl`); the most robust way is to take `index = VA − 0x1155190` directly from `text_runtime.bin`.
3. **raw-view decompilation failure ≠ analysis failure**: Hex-Rays reporting halt/failure at 0x158853C/0x13D8460 under raw is precisely evidence of an "encrypted island"; switch to the rttext view (.text replaced with the runtime dump) to get clean C. In the slayer view, in-island BL targets resolved by storage coordinates land on zero-filled addresses — use it only for static-attribution cross-validation, never as semantic evidence.
4. **LUAC_NUM artifact**: in the raw view the double at 0x58B1740 displays as `7.17092125e232` (= 370.5's stored bytes ^0x30); the runtime comparison target is still 370.5; the rodata 0x58AF6E8 region is likewise stored ^0x30 on the file side (`\x1bLua` + modified LUAC_DATA are only visible at runtime).
5. **XOR-0x30 operates on the byte layer only**: on write-back, `patchgen.py` must write `new^0x30` to island slots and write raw slots directly; on the device, `backup.sh` must run first, plus per-byte drift checking (`apply_patch.sh` has it built in), aborting on hash drift.
6. **1,685 vs 1,324 coexist**: the former is the low-density page count (page granularity), the latter the enhanced-catalog line count (range granularity, including 769 size corrections); state the convention when citing, never mix them. The cross-range BL-edge statistics also come in two numbers — 21,484 (crack slice) vs 22,883 (master report) — again a graph-construction convention difference.
7. **luaV_execute is not exported**: don't grep for the symbol; locate it along the internal BL chain `lua_pcallk → luaD_pcall → luaD_rawrunprotected → f_call → luaD_callnoyield → luaD_precall`. Its main dispatch loop is a crash path statically (raw); you need the runtime dump or unicorn emulation to see the real site (`tools/imported-probes/emu_luav.py` already has a synthetic lua_State emulation precedent).
8. **qemu limitations**: bare dlopen can run DT_INIT decryption + init_array + simple function calls, but functions that depend on the match-time runtime object graph (global singletons/trees/player predicates) cannot get a legal context constructed — the crash points (e.g. 0x461F32C) have been precisely located with qemu+gdb and are an expected boundary; if needed, patch in-page mprotect to simulate runtime gating (probe-dlopen callfix demonstrates: patch `bl 0x22262f8`@bias+0x461F0DC → `mov w0,#1` + mprotect to force TB invalidation).
9. **Exclusion-scope note**: directories and reports involving qimei/device-identity/zygisk-hide/ban-forensics are out of scope for this methodology; the qemu techniques are governed by the `feproj-clone/qemu-sim/` slice.
