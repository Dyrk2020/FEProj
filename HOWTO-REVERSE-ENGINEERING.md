# Wild Rift 7.2.0.2460 Reverse-Engineering Methodology Guide (How-to)

> **Version identity**: package/build **7.2.0.2460 / 7246064** · resource **7.2.55.126** · ABI **arm64-v8a** · package `com.riotgames.league.wildrift`
> **Nature**: This document organizes the **static reverse-engineering methodology** from the `wild-rift-research` workspace (`<research-workspace>/`) and the FEProj archive into a reproducible how-to. It covers only how to recover logic from binaries / metadata / resources / protocols — static methodology throughout, containing no anti-detection, ban-evasion, device-fingerprint, or identity-rotation content.
> **Evidence discipline**: every claim carries an evidence grade — `[V]` = byte/file/decompile evidence, `[I]` = inference, `NOT_ESTABLISHED` = not established; gate states (G0/G1/G2 etc.) are preserved verbatim. Facts first; no speculative "how it probably works" narrative.
> **Address coordinates**: `coordinate: file offset | static VA | runtime VA` · `image base` · `view: raw ELF | XOR-0x30 view | AES-decoded view | runtime remapped view` · `sample SHA-256`. When the three coordinate systems (static VA == file offset / runtime VA / Ghidra = VA+0x100000) are mixed, convert first.

---

## 0. Overview: Six Recovery Paths from Zero to Readable

| # | Path | Input | Key Output | Evidence Level |
|---|---|---|---|---|
| 1 | IL2CPP metadata decryption | `global-metadata.dat` + `libil2cpp.so` | 48,642-class / 395,966-method dictionaries | S (+E verification) |
| 2 | Lua bytecode decoding | FETest `.res` + LData vfs scripts | 22 framework + 25 battle script decompiles | S |
| 3 | 881-class Lua binding mapping | `libFEProj-rttext.so` | 881-class API, member offsets | S |
| 4 | LData game-data decoding | `.vfs` + `fFFBA` containers | 74,152-field map, 17,777 flow census | S |
| 5 | Match network protocol | pcap + `libLNet.so`/`libtdr.so` | AES-256-GCM params, 26,690 frames 100% decrypted | H + offline recompute |
| 6 | Native engine & emulation | `libFEProj.so` | XOR-0x30 island decode, `text_runtime.bin` runtime plaintext | E (qemu) |

Dependency order: **1 → 3** (metadata supplies il2cpp-side class names; binding table provides the Lua↔C++ bridge); **2 → 4** (Lua scripts are the consumers of LData fields); **5** independent; **6** runs through 2/3/4 (all native coordinates land inside FEProj).

### 0.1 Evidence Hierarchy (S/E/H/R, must travel with every conclusion)

| Level | Meaning | Example Cases |
|---|---|---|
| S (synthetic harness) | self-built harness/probe runs | 881 binding registration, TestMain/QuickTest/BattleLogic rc=0, Lua execution, metadata header decryption unicorn verification |
| E (emulation/QEMU) | qemu-aarch64 + Android linker/Bionic sysroot | text_runtime.bin runtime view reconstruction, init-chain verification |
| H (helper APK) | `dev.wildriftresearch.logicharness` + Frida | A1/A2/A3/A4/A4C1/B1 (A4C1 H1 fd alias PASS) |
| R (real Android client) | inside the official package | none currently (project constraint: no attach to official package) |

Without R-level evidence, S/E/H results must not be presented as official-client behavior, server-authoritative state, or real online protocol facts. evidence_level enum: OBSERVED / DERIVED / INFERENCE / NOT_ESTABLISHED / SUPERSEDED.

### 0.2 Unified Gate States (authoritative; re-ruling requires named resource provenance + real loader timing + canonical input binding)

| Gate | State | Boundary & Meaning |
|---|---|---|
| G0 | PASS | artifact identity locked (package/lib/resource SHA-256 frozen) |
| G2-open-operational | PASS | canonical metadata `open` and fd-alias mapping observed (helper APK layer) |
| G2-FMN-semantic-bridge | NOT_ESTABLISHED | transform/parser (T1) and registration (881 classes) observed; consumer gateway OBSERVED but member-level consumption (K2) NOT_OBSERVED (empty-shell proxy crash reproducible) |
| G1-resource-to-Lua-dispatch | NOT_ESTABLISHED | resource→loader and loader→execution controlled edges observed; spontaneous chain F1/F2/F3 all 0, full edge not closed |

### 0.3 Key Coordinate Quick Reference (FEProj authoritative values)

- `libFEProj.so`: 120,283,368 B, sha256 `5e608f2d…b8a02a`; static VA == file offset (VA < 0x6a5ba94); runtime islands use 8-slot permutation `P=[6,2,4,5,3,7,0,1]` over 0x10000 slots from X20=0x1167000
- 881 dispatcher: runtime `0x1589ACC`; case stubs `0x1589AF4+12i`; jump table `file[0x56BCB50+4i]^0x30303030`, stub base 0x565CB50
- Class name table: file `0x56BD000..0x56C0000`, XOR-0x30, case-ordered
- `NetCryptoSetKey`: `libLNet.so 0x9F640` (authoritative hook point); match UDP anchor `*.row-release-pub*.game.wr.pvp.net:10001`
- Match metadata: `global-metadata.dat` 58,401,572 B, sha256 `5bd0f8b0…fde45d`; `libil2cpp.so` 215,681,928 B, sha256 `6e8e7002…11dc6`
- qemu runtime plaintext: `text_runtime.bin` 72,244,380 B, sha256 `271b0205…86c2`; index `index = VA − 0x1155190`

---

## 1. IL2CPP Metadata Decryption (global-metadata.dat FMN! v31)

*Full section in `slice-01-metadata.md`. Highlights:*

- Two-layer decryption: ① ChaCha20-variant CTR covers only header pairs 0-3 (file 0x08..0x27, 32 B); ② two index-dependent 256B XORs — stringLiteral pool (0x6F9D8..0x20621C) + name table (0x20621C..0xF45970).
- ChaCha params: constant `libil2cpp.so 0x1615550` (16B `e6 3d ae 01 …`); key `0xCDAFAB4` (32B `2e 32 8a 4b …`); nonce = first 8B of key; 20 rounds; counter+1 per 64B block; `counter = file offset // 64`.
- The two XOR formulas:
  - Pool: `start = ((di*len+idx)&0xF)<<4`; `out[i] = raw[i] ^ ks[(start+i)&0xFF]`, ks@`0x1E42BA8` (di=dataIndex, idx=table index).
  - Name table: `pos = 0x20621C+idx`; `state = ((0xD3F754*pos)&0xFFFFFFFF) % 0x11D53`; `nib = (state&0xF)<<4`; `out[i] = D[pos+i] ^ ks[(nib+i)&0xFF]`, ks@`0xCDAF980`.
- Fixed layout: stringLiteral table@0x100 (57,115×8B) → pool@0x6F9D8 → name table@0x20621C → events@0xF45970 (362×24B) → properties@0xF47B60 (44,173×20B) → methods@0x101F664 (**double-spaced** 197,983×72B = 2 36B slots → 395,966 methods) → parameters@0x24D8DD8 (380,621×12B) → fields@0x2933F74 (483,741×12B) → typeDefinitions@0x31AC9CC (**48,642×88B**) → images/assemblies@0x35C1A7C/0x35C283C (88 each).
- Reproduce: `python3 work/metadata-bulk-20260814/decrypt_metadata.py all` (~40 s, input hash-locked `5bd0f8b0…`); `python3 work/il2cpp-readable-20260814/extract_metadata.py` → types/methods/strings/battle/stats JSON.
- Pitfalls: Ghidra coordinate = static VA + 0x100000; .data file offset = VA − 0x8000; CTR only on 0x08..0x27 (0x20B is the runtime buffer length, not ciphertext extent); method table is a modified layout (rid=2×idx+1), do not apply stock v31 48B records.
- Known boundary: field types use a second index space (38,193 values), not statically mappable → `F<idx>`; generics/interfaces/vtable not decoded. No `FMN!`-referencing handler exists (Riot removed magic/version checks), so offline decryption works.

## 2. Lua Bytecode Decoding (modified Lua 5.3.6)

*Full section in `slice-02-lua-bytecode.md`. Highlights:*

- Two on-disk formats share one VM: ① FETest `.res` (legacy, no wrapper, instructions in executed order, ROR29 opcode); ② LData vfs LuaHolder `.res` (`f6 05` wrapper + 17B prefix + 11B delta + 16B header; main-proto code words stored u16-halves-swapped; nested protos plain ROR29).
- Load chain: `luaU_undump 0x55C3B54 → loadFunction 0x55C3EDC → sub_55CAAAC` (plain memcpy, no load-time transform); dispatch `luaV_execute 0x55C6760` via XOR-0x30 jump table 0x58B1AFC (62 entries).
- Opcode mapping: `opcode = ROR(insn, 29) & 0x3f` (62-opcode table; authoritative table in `work/opcode-semantics-20260814/opcode-semantics.md`).
- FETest `.res` container: tag-0x14 long-string rule (0=NULL / 0xff=u32 / else N-1); 22/22 exact-EOF parsing (Round-3 fix).
- Outputs: 22 framework + 25 battle scripts (with nested function bodies) decompiled; 7.2.55.126 new format (u16-swap + 16B header) cracked; 62-opcode semantic table (LOW-CONF 6.5%).
- Reproduce: `decompile_lua_res_filefmt.py` (production FETest decoder), `decompile_lua_nested.py` (nested protos), `decode_layout.py` (new-format layout validation, exit 0 on 25 files).

## 3. 881-Class Lua Binding Mapping

*Full section in `slice-03-lua-api.md`. Highlights:*

- Mechanism: dispatcher 0x1589ACC → case stubs 0x1589AF4+12i → template factories (881, 0x158C558..0x1649C84) → member handles (16B userdata `{fn_ptr, tagged_offset}`) → dispatch closures → native field offsets.
- Class name table: file 0x56BD000..0x56C0000, XOR-0x30 (dec=raw^0x30, NUL encoded as 0x30), case-ordered; decode verified 881/881.
- Template = class registration factory: `lua_atpanic → lua_getglobal(_G) → gate_check 0x164AA04 → beginClass(name, typeinfo 0x736d101) → member registration`.
- 16B handle semantics: `pc = *ud; if (ud[1]&1) pc = *(pc + *(this + (ud[1]>>1)))`; tag carries 'sm'-family message magic (0x736d2xx).
- Typical offsets ([V]): case5 castSkill=+0x10; BuffManager/SkillManager {actor=+0x8, list=+0x10}; Actor {+0x10/+0x18/+0x20}; case37 all 39 attributes (+0xF008..+0xF13C, useACK=+0xF12C); case865 double-buffered delegate {+0x8/+0x9/+0x10/+0x18}; 86 [V] findings recorded in CASE-MODELS.md.
- Coordinate pitfall: **Ghidra address = runtime VA + 0x100000**; CASE-MODELS.md member-handle/closure addresses are Ghidra coordinates (subtract −0x100000 to disassemble against the ELF), while heading-line template_fn values are runtime VA — the two number classes are interleaved in the same tables.
- Reverse lookup from a Lua name: `GLOBAL-NAMES.md` table B (class name) / table A (case); class-name rules Msg/ResObject/Mgr/_DC/Lgc etc.; hit rate is low (FETest is a framework shell; battle scripts are the real consumers).
- Authoritative tables: `bindings-881/dispatcher-881-cases.tsv` (881 rows); `lua-api/fe-lua-api.json` (machine-readable).

## 4. LData Game-Data Decoding

*Full section in `slice-04-ldata.md`. Highlights:*

- `.vfs` container 52B header: magic `01 03 01 xx` (xx = key select 0..4); u32 A = end of encrypted first block R1, B=A+0x10 = block-stream start (holds exactly for 1,205/1,205 files); 32B K key block; R1 encrypted region.
- Crypto LCSecurity v1.4.4: S-box@0x5843fc8, RC 32 words@0x58440c8; CBC form `P[i]=E(C[i])^C[i-1]`; PKCS#7. 5 subtype keys in `.data 0x72677b0` (`gamedata/vfs-keys.json`).
- Inner `fFFBA` container: marker `46 46 42 41 20 00` (XOR-0x30 form@rodata 0x579F978); TYPE_SIZES 121-entry width table; terminator type 0xf0; tail = ASCII string table + offset table.
- Field map: 74,152 records (90.3% labeled); container-header invariant `[27|19:6312]` + payload label `[4:40]` cuts the header, never mixed with schema fields; payload record i → S1-class field table field i (position alignment).
- Skill mapping: `skillId = heroId×100 + slot` (slot 0=base, 1-4=Q/W/E/R, 5-8 extra, 11-14 variants); 1,016 `Operate_SkillOperate_<id>` fully verified with zero counterexamples.
- Flow census: 17,777 files / 146 heroes / 428,267 nodes / 0 errors; TF card-pick red=01/yellow=02/blue=03 (joystickIndex effect node id=0xf00).
- Buff uniqueness (native): `DynamicPassiveSkill.canOverlay` u8@+0x774 (single LDRB hit in whole binary = 0x17bc88c); `ActorBuff.maxStack` u32@+0x30 (getter 0x18cc754/setter 0x18cc75c).
- Damage core: armor mitigation `raw*100/(armor+100)`; RPN attribute engine (see slice-07 and ATTR-MODEL.md).

## 5. Match Network Protocol (NetCrypto / LNet / TDR / state sync)

*Full section in `slice-05-net-protocol.md`. Highlights:*

- Match UDP anchor: `*.row-release-pub*.game.wr.pvp.net:10001` (delivered by server config, not hardcoded in the library); measured Tencent Cloud `101.32.106.120:15031/15034`.
- Crypto: **AES-256-GCM (no tag, no AAD; effectively GCM-CTR)**; first 32B of key blob + 0..16B nonce material; `nonce = MD5(nonce_material[:keylen-0x24] ‖ rev(header4B))[:keylen-0x20]`; measured keylen=48 → 16B nonce. Integrity = plaintext CRC32 (IEEE, big-endian, zlib-equivalent) @ out[hlen:hlen+4].
- Key channel B **cannot be recomputed offline** (il2cpp C# assembles buf1+buf2, source OPEN) → must hook `NetCryptoSetKey@0x9F640` (one call yields the 48B blob: 32B key + 16B nonce material).
- Transport chain: send `NetSend(0x94cfc) → 0x71078 → 0xccf34 → [LZW 0xe511c] → [Encrypt vtbl+0x18 @0xd0d80] → sendto 0xbec9c`; receive symmetric. LZW dictionary cap 0x4000, but **this build measured compression OFF** (payload entropy 1.7-2.9 bits/byte).
- TDR wire: all-big-endian positional, no self-describing markers; metalib entry @ meta+0x130 (stride 0x130); Metalib never stored as plaintext, loaded at runtime via `tdr_load_metalib_buf`.
- type=07 state sync: 14.7fps, 14-unit sliding window (7 old 7 new), 5B records `03 01 [u16 position][u8 player]`, focus player excluded; 0e block = game-frame-number × 2³² fixed-point clock.
- u16 position Fix32: `pos = base + ((u16<<14|0x2000)·speed)>>14`; 1 LSB = 1875/16384 ≈ 0.11444 game units (=7500/65536); 32768=mid lane, 0xffff=death sentinel.
- Uplink ch=06 (91.1%): primary 010301 = per-frame position report (8,274 messages); end-match ch=2d = 58 unique messages resent in two batches + per-frame ACK.
- Reproduce: attach first (before SetKey) → capture → `DecryptFlowA/decrypt_a.py` (hlen blind-guess [4,64], first CRC pass wins; GCM keystream is buffer-aligned, each candidate must be decrypted independently as a whole) → **26,690/26,690 frames 100% CRC pass**, byte-identical to hooked plaintext 11,132/11,132.
- Pitfall: TCP 10001 is a separate self-encrypted TCP control protocol (header signature `3366000b`), **not NetCrypto** — don't waste compute.

## 6. Native Engine & Emulation (libFEProj.so / XOR-0x30 islands / qemu)

*Full sections in `slice-06-native-feproj.md` and `slice-10-harness-qemu.md`. Highlights:*

- XOR-0x30 islands: 1,685 4KiB pages of `.text` stored XORed with single-byte key 0x30 (9.55%); per-block 256-key scan **1685/1685 decode 1024/1024 under key 0x30** (next-best 0x31=988, 0x10=952). enhanced catalog 1,324 islands (25.04%, contiguous-range merged view; not contradictory with the 1,685-page view).
- Islands are live code: normal→island BL edges 21,484; statically "unreferenced" from the linker's view (none of 727,616 relocations land in an island).
- Runtime decryption: file segments R-X, filesz==memsz → decryption happens between the game's custom loader mmap/mprotect; qemu dlopen proves DT_INIT=0x8d6a064 decrypts.
- Key anchors: version-stamp registrar 0x158853C (runtime slot 0x15a853c, R(v)=S(v−0x10000)^0x30); 881 dispatcher 0x1589ACC; luaV_execute 0x55C6760; luaU_undump 0x55C3B54; damage-core / RPN engine coordinates in slice-07.
- qemu path (E level, only authoritative runtime plaintext): bionic sysroot (pull `/apex/com.android.runtime/lib64/bionic/*` real files + linker64 + libc++.so) → `aarch64-linux-android21-clang -O2 -pie -o probe-dlopen probe-dlopen.c -ldl` → `env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen {probe|call|callframe|callframe2|callfix|dump}`; `dump ./dump/text_runtime.bin 1155190 44e5c9c` → 72,244,380 B plaintext.
- `text_runtime.bin` index `index = VA − 0x1155190`; ~25% of .text is file-encrypted, static catalog decoding unreliable; this dump is the only authoritative view.
- Environment pitfalls: arm64 AVD cannot boot on x86_64 host (P8 ENV-AVD-FAIL); JDK 25 incompatible with Gradle 8.13 (must use JDK 21); Frida hard-locked 17.15.5 (host+gadget); `--remote-gadget` requires `--attach-pid`.

## 7. Crit & Damage Adjudication

*Full section in `slice-07-crit-damage.md`. Highlights:*

- Event registry: 792 entries (455 registrars, hash map 0x82E72A8); 31 crit candidates eliminated via closed-loop negation.
- isCrit write point 0x1FDAF40; FixRandom chain; Fix14 fixed-point.
- Armor formula `raw*100/(armor+100)`; damage-core coordinates in slice-06.
- Adjudication flow: input → dispatcher → handler → local sink (G4 gate not formally established; only 3 end-to-end traces).

## 8. Flow Parsing & End-to-End Traces

*Full section in `slice-08-flow-e2e.md`. Highlights:*

- Flow files = WorkFlow/Scripts; flow node parser fully parses 17,777/17,777 (146 heroes / 428,267 nodes / 0 errors).
- Flow block syntax: pool single-file conversion formula negated (build-time global mirror coordinates; same-version copies Jaccard 0.9765); tail inc32 table = global string-pool offsets (delta == string length); tail table is really 5B records `[0x22][u16 A][u16 B]`.
- 3 end-to-end link traces (input→dispatcher→handler→local sink).
- Remaining gaps: B-column semantics, exact meaning of a2 constants (need runtime).

## 9. VFS/EIFS Containers & Oodle

*Full section in `slice-09-vfs-eifs.md`. Highlights:*

- VFS header boundary audit of 1,206 files; `puffer_res.eifs` classification (HET/BET slice decode, puf/flc/cures file tables, vfs keys).
- Oodle: 5 compressed `_cp.so` containers + offline decompressor + host SHA-256 validator (`oodle-extractor/`).
- Basic vs PAD difference: 22 FETest `.res` same-name different bytes (Basic files 1 B smaller each) — always cite source corpus + SHA-256 when referencing resources.

## 10. Static Toolchain (logic-harness APK + qemu probe)

*Full section in `slice-10-harness-qemu.md`. Highlights:*

- logic-harness: `dev.wildriftresearch.logicharness` debuggable APK, separate UID, embedded Frida Gadget 17.15.5 (listen 127.0.0.1:27042), four actions canary/stage/status/loadfeproj; asset staging with SHA-256 fail-closed validation (7 anchors).
- Use: H-level I/O edge observation (A1/A2/A3/A4/A4C1) without attaching the official package; large ELFs go via adb push + run-as cp into files/incoming (not baked into the APK).
- qemu probe six modes: probe / call / callframe / callframe2 / callfix / dump; ANCHOR_SYM="AES_options" VA 0x5492428 resolves bias.
- Evidence contract: `tools/research_schema/research.schema.json` (environmentLevel S/E/H/R, addressRecord, dynamicProof); every address claim must carry binary_sha256/source_path/coordinate{view,kind,value}/image_base/sample_sha256.

---

## Appendix A: Immutable Anchors (SHA-256, G0 frozen)

| Artifact | SHA-256 |
|---|---|
| `libtdr.so` | `94c3b45384d810c9136084eefabe6ab6ef5e1808017af67ffc9c53fc3876495d` |
| `libLNet.so` | `55c2879f7acdd0c64fb308ce3a0a1007d308417e475b431dabd9c5e0f8ab5a86` |
| `libFEProj.so` | `5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a` |
| `libil2cpp.so` | `6e8e7002169bc658fbe64be4c6e216e22c4bf719a620940e77890b9e57211dc6` |
| `libunity.so` | `6dfbec920ddd0539de4ab2f1d5aef783f203399ab46939daa46b51f1b8c215ac` |
| `global-metadata.dat` | `5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d` |
| Basic `BattleLogic.res` | `347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5` |
| PAD `BattleLogic.res` | `906b1b19f3adab6c59ffb129834d3bbb8be03129420089aabe81f1b229d84c29` |
| `text_runtime.bin` (qemu dump) | `271b02057be91cd542b9727c8da899f002d3318ec2fe9aee1278828a1dbc86c2` |

## Appendix B: Reproduction Checklist

1. [ ] All input hashes match (hash_anchors.py expects `all_ok: true`)
2. [ ] Metadata: `decrypt_metadata.py all` → `extract_metadata.py` prints types=48642 methods=395966
3. [ ] Lua: 22/22 FETest + 25 battle scripts exact-EOF (`parse-verification-22.txt`)
4. [ ] 881 bindings: `dispatcher-881-cases.tsv` 881 rows cross-validated 0 mismatch
5. [ ] LData: `vfs_decrypt` → `extract_ldata_fields.py`/`build_field_map.py` (field map 74,152 / 90.3%)
6. [ ] Network: attach NetCryptoSetKey first, then enter match → `decrypt_a.py` 26,690/26,690 CRC OK
7. [ ] qemu: probe-dlopen dump → text_runtime.bin sha256 match → island 27 re-dump byte-identical
8. [ ] Gates: G1/G2 stay NOT_ESTABLISHED (no re-ruling without R-level evidence)
9. [ ] Sensitive surface: no anti-detection/ban-evasion/fingerprint-rotation content; all address claims carry a view

## Appendix C: Full Slice Index

Each slice = a complete self-contained section (Objective / Key Coordinates / Method Steps / Findings / Evidence Files / Reproduction Notes), stored under `howto/`:

| Slice | File |
|---|---|
| 01 metadata | `howto/slice-01-metadata.md` |
| 02 Lua bytecode | `howto/slice-02-lua-bytecode.md` |
| 03 881 bindings | `howto/slice-03-lua-api.md` |
| 04 LData | `howto/slice-04-ldata.md` |
| 05 net protocol | `howto/slice-05-net-protocol.md` |
| 06 native FEProj | `howto/slice-06-native-feproj.md` |
| 07 crit damage | `howto/slice-07-crit-damage.md` |
| 08 flow/E2E | `howto/slice-08-flow-e2e.md` |
| 09 VFS/EIFS/Oodle | `howto/slice-09-vfs-eifs.md` |
| 10 toolchain | `howto/slice-10-harness-qemu.md` |
