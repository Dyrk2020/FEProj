# Slice 09: VFS Header Boundary Audit / puffer_res.eifs Classification / Oodle Container Reconstruction

> Objective: static reverse-engineering methodology slice for Wild Rift 7.2.0.2460 (build 7246064, resource 7.2.55.126, arm64-v8a). Read-only research, no modifications. This digest covers only binary/metadata/resource containers and static methodology; it does not touch any anti-detection/ban/device-fingerprint topics.

## Objective

This slice reverse-engineers three families of local container/resource formats and provides a reproducible extraction methodology:
1. the 52-byte header structure, index region, and block stream of `DynamicDownload/Res/LData/*.vfs` (including the new `DynDL-LData/` layout);
2. NIFS(IFS) container classification of `puffer_res.eifs` and its family `*_cures.ifs.res` / `filelistcheck.res`: envelope, `nifs` header, HET/BET blocks, Region B, file tables (puf/flc/cures), and bet records;
3. `_cp.so` native library containers: Oodle compression, four-byte output length prefix, JNI decompression contract, reconstruction of the 5 containers, and host-side SHA-256 validation;
4. byte-level difference findings for 22 `Res/FETest/*.res` files between the Basic and PAD corpora.

## Key Coordinates

### VFS Header (LData family, 52 bytes, all little-endian)
| Offset | Field | Value/Meaning |
| --- | --- | --- |
| 0x00 | u32 magic | bytes `01 03 01 xx`, LE u32 `0x00010301..0x04010301`; xx=0..4 selects the key (subtype) |
| 0x04 | u32 A | encrypted first-block end offset (= end of region R1; A ≥ 0x34) |
| 0x08 | u32 B | block stream start offset, always B = A + 0x10 |
| 0x0C | u32 size | total file size (must equal actual file size) |
| 0x10 | u32 magic | repetition of the magic at 0x00 |
| 0x14 | u8[32] K | key/digest block (16B group key + 16B per-block material; also serves as key-schedule/IV source) |
| 0x34..A | R1 | encrypted first block (index region): `u32 count` + count×`{u8 len[, u8 flag if len&0x80], path[len], u32 rel_off, u32 block_size}`, PKCS#7-padded to 16 |
| A..B | 16B F | keyed MAC over R1 ([INFERENCE], unclosed) |
| B..EOF | block stream | `{u32 magic, u8[32] K', data}`; each block = 4B magic + 32B key block + ciphertext (36B block header), block ciphertext = file content (FBAU/binary/string table) |

### VFS Subtype Keys (libFEProj.so .data 0x72677b0 table; obfuscated ASCII)
| subtype | magic | seed (16B) | IV (16B) |
| --- | --- | --- | --- |
| 0 | 01 03 01 00 | `!@#2017LsGame201` | `ddAXmIDSo*Ay3Y!N` |
| 1 | 01 03 01 01 | `lgame))x0smnvjdh` | `xmlks*76ssPOPjsB` |
| 2 | 01 03 01 02 | `mxlkadj*&jjweGGJ` | `Msh%$osp97#sjm-8` |
| 3 | 01 03 01 03 | `XXpso09]][\xcmss` | `hh%&*6ss922MZuAP` |
| 4 | 01 03 01 04 | `mad9102kjhdyct&^` | `sml@ASS!js7$op#l` |

### VFS Cipher (LGameSecurity::LCSecurity v1.4.4, FEProj codec-3)
- key_schedule at 0x53fe978 / block_transform at 0x53fed70 / decode at 0x53fc6dc (static VA == file offset); S-box 0x5843fc8 (256B), RC table 0x58440c8 (step 0x34343434);
- key_schedule(seed16): `w[i]=rev32(seed[i]) ^ {b9b7ed68,71750a9f,a6070525,3aa8c2c5}`; 32 rounds `t=sub(s1^s2^s3^RC[r]); s[i]=t^s[i]^ror(t,19)^ror(t,9)`;
- block_transform: 32 rounds `t=sub(s1^s2^s3^sched[31-r]); s[i]=t^s[i]^rol(t,2)^ror(t,22)^ror(t,14)^ror(t,8)`; output `BE(s3..s0)`;
- mode: `P[i] = E(C[i]) XOR C[i-1]`, `C[-1]=IV` (CBC style, previous block's ciphertext as the chaining value).

### 1206-File Header Boundary Audit (container-audit)
- `vfs-header-summary.json`: `all_observed_relations=1206`, `resolved_records=1206`, `anomalies=[]`; all three relations 1206/1206: `word1_word2_in_bounds` (A and B in bounds), `word2_equals_word1_plus_16` (B=A+0x10), `word3_equals_file_size` (size field == file size).
- `container-fingerprint.json` family: `eifs` (1 sample, 68,399,245 B, header `c0 61 34 01...`), `ifs_descriptor` (2 samples, incl. cures and the pad1.apk member `first_source.ifs.res.png`), `vfs` (3 samples, bytes 232/10,376/7,680,296; `word1`-to-`word2` relations: `length=B-100`, `offset=100`, etc.).
- sample sources: `artifacts/device-backups/wild-rift-google-play-7.2.0.2460-7246064-20260711/external-data-basic/files/DynamicDownload/Res/LData/` and `files/Res/LData/`; `eifs` source `external-data-basic/files/DynamicDownload/puffer_res.eifs` (sha256 `9a2cc740f7d6bf3512b191e1146376cce25582178325c7b0837578c063ab302b`).

### puffer_res.eifs / NIFS(IFS) Classification
- envelope: `01-envelope-000000-0001F8.bin` (504B, 0x00..0x1F8); `nifs` header `02-nifs-header-0001F8-0002A4.bin` (172B, 0x1F8..0x2A4, `nifs` magic in the 0x60 area).
- HET block: `03-HET-block-0002A4-0004AA55.bin` (297,913 B, 0x2A4..0x4AA55); BET block: `05-BET-block-0004AB85-0038BF30.bin` (3,341,739 B); data region: `06-data-region-0038BF30-003F5E874.bin` (59.8 MB, 0x38BF30..0x3F5E874); tail: `08-tail-003FA91F9-EOF.bin` (1.6 MB).
- decoded artifacts (`eifs-config/decoded-eifs/`): `puf_HET.decrypted.bin` 297,869 B, `puf_BET.decrypted.bin` 3,341,727 B, `HET.decrypted.bin`/`BET.decrypted.bin` same sizes, `cures_HET.decrypted.bin` 3,589 B, `cures_BET.decrypted.bin` 50,444 B, `flc_HET.decrypted.bin` 3,684 B, `flc_BET.decrypted.bin` 50,354 B, `nifs-table-0x500.bin` (5,120 B, runtime table of 0x500 u32s).
- table block keys (when patch-list is empty): HET `0xC3AF3770`, BET `0xEC83B3A3`; when patch-list is non-empty, the key = byte sum of that list (0x6680FC/0x6682BC, unused).
- additive stream cipher (libgcloud.so): 0x657A6C (aligned) / 0x657A08 (simple) variants; runtime table built by 0x657880 at 0xB54010; cipher reads 0x400..0x4FF (0xB55010), string hash reads 0x300..0x3FF.
- string hash (per-file piece key, 0x657804): `h=0x7FED7FED; acc=0xEEEEEEEE`; per byte, after `toupper(c)`: `h=acc+h; acc=acc+(acc<<5)+3+c; h=h^T[(c+0x300)%0x500]; acc=acc+h`.
- verification anchor: after decryption the first u32 == the block's own size field (SDK checks at 0x6681E4/0x6683B8) — cures HET 0xE0D, cures BET 0xC50C, flc HET 0xE5C, flc BET 0xC4B2, puffer HET 0x4A7A5, puffer BET 0x34139F, all exact.
- BET records (`bet-records-cures.json`): count_declared=1116, stride=305, index_stride=56; field layout offset@0x8(29b)/size@0x1c(26b)/stored@0x20(26b)/flags@0x24(32b)/md5@0x28(128b)/fill@0x70(64b); tiling_ok=true; count_parsed=1116; het_linked=1116; flist_matched=1103; records contain `raw_bits` (56B) and name (md5-hex).
- file table JSONs: `puf-filetable.json` (first record offset 16384/size 334,573,185/stored 334,238,811), `flc-filetable.json` (first record offset 172/size 10,172,953), `cures-filetable.json` (first record offset 172/size 340,298/stored 321,560); flag `0x200`=compressed, `0x80000000` high bit=presence bit (`2147484160 = 0x80000200`).
- `index-join.jsonl` (2,310 rows): per-record cross-table of `basic_public_member` / `pad_member` / `logical_path` / `record=filelist_member`.

### Oodle Containers (_cp.so)
| Input | Input bytes | Declared output (first u32 LE) | Output SHA-256 |
| --- | ---: | ---: | --- |
| libtdr_cp.so | 786,503 | 1,774,368 | `94C3B45384D810C9136084EEFABE6AB6EF5E1808017AF67FFC9C53FC3876495D` |
| libLNet_cp.so | 943,288 | 3,130,648 | `55C2879F7ACDD0C64FB308CE3A0A1007D308417E475B431DABD9C5E0F8AB5A86` |
| libFEProj_cp.so | 16,781,562 | 120,283,368 | `5E608F2DA59371A583929AED90E4EC4985BC8EE12FC0D44124000B94D1B8A02A` |
| libil2cpp_cp.so | 46,667,615 | 215,681,928 | `6E8E7002169BC658FBE64BE4C6E216E22C4BF719A620940E77890B9E57211DC6` |
| libunity_cp.so | 9,103,653 | 26,607,568 | `6DFBEC920DDD0539DE4AB2F1D5AEF783F203399AB46939DAA46B51F1B8C215AC` |

Input SHA-256 (`oodle-extractor/build-artifacts/source-hashes.txt`): `541AD8A5...`, `65FD6F39...`, `11F0632E...`, `8DEDD827...`, `7FF77219...`; `libOodler.so` `3B006499561DC56B427AAC74A25401902BC565B52793AFE836FD71A88CC9BAE9`.
- JNI contract: `com.tencent.utils.RowFileUtils.OodleDecompressFile(String,String)` → `libOodler.so`: read the entire file; first 4 bytes as LE u32 = decompressed length; bytes at offset 0x04..EOF go to `OodleLZ_Decompress(..., decoder=8)`; write output only when the returned length == the first word. No key/account/crc parameters (the JSON `crc` field is not consumed by this path).
- pitfall: the `7F 45 4C 46` at offset 0x0C is inside the Oodle stream, **not** a strippable 12-byte ELF header.
- config: `assets/oodle_compress_config.json`, `NativeAssets.library.arm64-v8a[5]` (size=declared output size; crc field unused).

### FETest 22 .res: Basic vs PAD Byte Differences
- Basic directory: `artifacts/device-backups/wild-rift-google-play-7.2.0.2460-7246064-20260711/external-data-basic/files/Res/FETest/`; PAD directory: `work/7.2.0.2460-7246064/apks/pad1.apk!/assets/assetpack/Res/FETest/`.
- 22 relative paths match exactly; **every Basic member is exactly 1 B smaller than the same-path PAD member**.
- all 44 start with the same 33B Lua-5.3-shaped header: `1b 4c 75 61 53 01 19 93 0d 0a 1a 0a` + sizes 4/4/4/8/8 + LUAC_INT 0x5678 + LUAC_NUM 370.5; `LUAC_FORMAT = 0x01`; main upvalue count at 0x21 = 1; root Proto starts at 0x22. stock Lua 5.3 rejects 0x01.
- BattleLogic exact alignment: Basic 1,479 B / PAD 1,480 B; `[0x00,0x22)` identical; at 0x22 PAD source marker 0xC3 / Basic 0xC2; `PAD[0xe5:] == Basic[0xe4:]` 1,251 B; structure 6 proto / 5 root children / 69 instruction words / opcode 0–52 (2 >46).
- structural shapes (per pair): e.g. ActionMgr 10/9/182 (0–63, 20); TestMain 1/0/28 (0–44, 0); safecall 4/3/351 (0–63, 84); FlowAction 12/11/411 (0–63, 72).
- version stamp (attributed 2026-08-04): the 12B magic `ef 4d 2a 72 74 c1 9e e7 7f 0d 97 1e` at 0x160 of `TestMain.res` (Basic 698 B), XORed with k32 (`dd7d184244f3acd64e3aa7282d56b5b098e7a753bb76946ee5bc8e2e4c22147f` @0x57A2D60), yields version string `202002211706`.

## Method Steps

### A. VFS Structure Audit and Full Boundary Validation
1. Enumerate `external-data-basic/files/DynamicDownload/Res/LData/*.vfs` + `files/Res/LData/*.vfs` (legacy layout) or `DynDL-LData/*.vfs` (new 7.2.46.104 layout) and count them (1206/1207/1208 varies with resource version).
2. For each file read 0x00..0x10: verify magic ∈ {0x00010301..0x04010301}, magic2==magic, A ≥ 0x34, B==A+0x10, size==len(file). Write per-item counts to `vfs-header-summary.json`; 0 anomalies means the full set passed.
3. Reproduce via `container-fingerprint.json`: for each sample read `u32_le[16]` and `in_bounds_adjacent_u32_pairs` (in-bounds check of adjacent word pairs) to obtain the vfs family `word1→word2` `length/offset` relations (e.g. 232B file: word1=100 in bounds, word2=116=word1+16).
4. Boundary validation (`decoders/vfs_parse.py`): `validated_block_offsets()` runs length+alignment(B mod 4)+next-header checks on each magic hit; only `confirmed` counts as a block boundary; fake magic inside payloads is downgraded to `candidate` and reported (remediation 2026-08-09, to prevent false block splits).

### B. VFS Decryption and Extraction
1. `python3 decoders/vfs_decrypt.py <file.vfs> --out OUT --list`: prints subtype/A/B/file count; with `--out`, decrypts block by block and writes `NNN_<path>`.
2. Internals: `cbc_decode(data[0x14:B], seed[subtype], iv[subtype])` decrypts the index region → `parse_index` strictly validates count/path/rel/block chain (first record rel==0; `rec[j].rel == rec[j-1].rel+size`; last block `rel+size == len(data)-B`; tail must be valid PKCS#7).
3. Block decryption: `extract_block` requires `size ≥ 36`, block-head magic==file magic, ciphertext 16-aligned, PKCS#7 stripping.
4. Batch: `python3 decoders/batch_vfs_decrypt.py` (legacy corpus root) or `batch_vfs_decrypt_device.py` (20260812 device corpus root); pre-generate round keys per subtype, parallelize with an MP pool, print `subtypes:` counts and `decrypted ok:`.
5. qemu cross-validation (historical evidence): codec-3 per-round state matches the game (`vfs_codec3.py` header comment; vector key `f8158e88...`, IV `9270ac3f...`).

### C. puffer_res.eifs Classification and HET/BET Decoding
1. Slicing (the `eifs-config/decoded-eifs/` names are the commands): `dd` extracts envelope 0x0..0x1F8, nifs header 0x1F8..0x2A4, HET block 0x2A4..0x4AA55, HET gap, BET block 0x4AB85..0x38BF30, data region 0x38BF30..0x3F5E874, tail 0x3FA91F9..EOF.
2. `python3 decoders/eifs_decrypt.py <file> <HET_off> <HET_size> <BET_off> <BET_size> --out decoded-eifs/`: take data from `block_header_off + 0xC`, run `additive_crypt(data, key)` (key=HET 0xC3AF3770 / BET 0xEC83B3A3), verify first u32 == size field (cures HET 0xE0D etc.).
3. Table file: `nifs-table-0x500.bin` (0x500 u32s, qemu dump) is the shared runtime table for the additive cipher and name_hash; `additive_crypt` steps 4B at a time: `acc += T[0x400+(key&0xFF)%256]; o=(acc+key)^v; key=0x11111111+((~key)<<21)|(key>>11); acc=(acc+3)+(acc<<5)+o`.
4. Block/file tables: `bet-records-cures.json` and `cures-filetable.json`/`flc-filetable.json`/`puf-filetable.json` are the BET record parse results (field layout above).
5. Scope statement: Region B content transform and IFS RSA signatures are unclosed (plan 4.1) — successful decode ≠ the whole cures archive is done.

### D. Oodle Container Reconstruction and Validation (host side)
1. Take the 5 `lib/*_cp.so` inputs (`config.arm64_v8a.apk!lib/arm64-v8a/`) and `libOodler.so` from the APK backup; verify input SHA-256 matches `source-hashes.txt`.
2. Device side: a temporary debug-only helper (`oodle-extractor`) packages the original signed `libOodler.so` + `RowFileUtils` (`System.loadLibrary(\"Oodler\")`), with assets `input/*_cp.so` and `oodle_compress_config.json`; `OodleDecompressFile(in,out)` outputs the `_cp`-stripped file names; exported via `run-as`, then uninstalled.
3. Host side: `python3 oodle-extractor/host_validator.py` — for each `(input, output)`: input SHA-256 + first u32==config size; output size==expected, SHA-256==canonical; `elf()` structural checks (ELF64/little/AArch64/ET_DYN, PT_LOAD/PT_DYNAMIC bounds, DT_STRTAB/STRSZ/SONAME, soname==file name); negative cases (truncated header/wrong endian) must be rejected.
4. Validation manifest: `build-artifacts/output-validation.txt` (5 lines `name size sha256`); `crc` explicitly `unsupported` (no algorithm/coverage evidence; no guessing).
5. Product output: `work/native-container-audit/decompressed-arm64/` (libFEProj.so 120,283,368 B etc.).

### E. FETest 22 Basic/PAD Difference Pairs
1. Enumerate the relative-path intersection across both sides (22), per-pair SHA-256 + length; record `Basic = PAD - 1`.
2. Per-pair alignment: common prefix `[0,0x22)`; from 0x22 the source string length byte Basic 0xC2/PAD 0xC3; suffix alignment `PAD[0xe5:] == Basic[0xe4:]`.
3. Bounded parser (`reports/2026-07-12_wild-rift-7.2-fetest-structural-verification.json`): tolerates format 0x01, validates 32-bit LE counts and field order, treats strings/instruction words as opaque, constant tags {0,1,3,19,4,20}, 4B lineinfo, recursive nesting, `consumed == file size`.
4. Version stamp verification (TestMain.res): read 12B at 0x160, XOR with the first 12B of k32 == `202002211706`.

## Findings

1. **VFS header invariants hold for the full set**: 1,206/1,206 files satisfy A/B in bounds, B=A+0x10, size==len; no anomalies (`vfs-header-summary.json`).
2. **VFS cipher verified both ways**: codec-3 (LCSecurity v1.4.4) per-round state matches the game under qemu+gdb; 1205/1205 corpus files decodable (per docstring; 7.2.46.104 corpus 1207/1208 varies with version).
3. **VFS per-block keys**: the 32B K' at block head = 16B group key + 16B per-block material; index region decryption uses the header seed/IV (fixed per subtype).
4. **eifs is a NIFS(IFS) container**: envelope + `nifs` header + HET/BET blocks + Region B + 16B MAC tail; HET/BET use the Tencent additive stream cipher + 0x500-word runtime table, keys HET 0xC3AF3770 / BET 0xEC83B3A3 (when patch-list is empty).
5. **Decode verification anchor**: after decryption each block's first u32 == the block size field (all 6 samples exact) — this is the self-checking anchor for "decoded correctly".
6. **Region B / RSA unclosed**: no evidence for the Region B content transform or IFS RSA signatures (digest/padding/scope); must not claim the whole cures archive is decrypted.
7. **Oodle containers**: `_cp.so` is not ELF; first u32 LE = decompressed length; 0x04.. is the OodleLZ(decoder=8) stream; JNI has no key parameter, JSON crc unconsumed; reconstruction output 5/5 matches device-side + host-side SHA-256, all ELF64/little/AArch64/ET_DYN with matching soname.
8. **FETest**: 22 same-name pairs; every Basic file exactly 1B smaller; all are Tencent-modified Lua 5.3.6 chunks (format 0x01, 35B header, k32-XOR strings, the source path leaks the build machine `/Users/lgame_builder_smc179/...`); TestMain.res carries a version stamp.
9. **Static boundary**: `libFEProj.so:0x158853c` has a normal BL (0x3ec41e8) and an FDE `[0x158853c,0x15886b8)`, but only 2/95 words decode linearly; page `[0x1588000,0x1589000)` SHA-256 `82a312e5fc7325a3e3eca8bd28adfa0dbe67c59368879437d561636c98244ae9`; no static writer/remap/protection edge → G1/G2 not reopened (a later slice separately attributed this to the version-stamp registration cluster, which is a runtime-layer matter).
10. **Incremental observations** (7.2.46.104, methodology reference): LData vfs index 1206→1208; cures BET 1077/1116 records differ; FETest 22/22 md5 unchanged.

## Evidence Files

### Primary Reports (`reports/`, relative to repo root)
- `reports/native-loader-and-container-audit-7246064.md` — Java bootstrap chain, Oodle JNI contract, 5-container table, `_cp.so` nature.
- `reports/oodle-reconstruction-audit-7246064.md` — input/output SHA-256, device/host reconciliation, ELF validation, artifact paths.
- `reports/2026-07-12_wild-rift-7.2-fetest-resource-matrix.md` — full 22-pair matrix (size/hash/diff envelope/structural shapes).
- `reports/2026-07-12_wild-rift-7.2-fetest-structural-verification.json` — bounded parser machine results.
- `reports/2026-07-12_wild-rift-7.2-reverse-engineering-report.md` (§4 FETest, §2 bootstrap chain) and `2026-07-12_wild-rift-7.2-research-handoff.md`.

### FEProj Slices (`feproj-clone/`)
- `container-audit/vfs-header-summary.json` (1206 audit), `container-audit/container-fingerprint.json` (eifs/ifs_descriptor/vfs family fingerprints), `container-audit/index-join.jsonl` (filelist cross-table), `container-audit/page-writer-map.jsonl` (0x1588000 page static-edge evidence).
- `eifs-config/vfs-keys.json` (5 seed/IV sets), `eifs-config/decoded-eifs/` (envelope/block/data-region slices + puf/cures/flc HET/BET decrypted artifacts + nifs-table-0x500.bin), `eifs-config/bet-records-cures.json` (1,116 BET records), `eifs-config/puf-filetable.json`, `eifs-config/flc-filetable.json`, `eifs-config/cures-filetable.json`, `eifs-config/registry-dump.json` (RTTI registry 6,122 records), `eifs-config/decrypt_results.json`.
- `decoders/vfs_decrypt.py`, `decoders/vfs_parse.py`, `decoders/vfs_codec3.py`, `decoders/eifs_decrypt.py`, `decoders/decrypt_harness.py`, `decoders/batch_vfs_decrypt.py`, `decoders/batch_vfs_decrypt_device.py`.
- `oodle-extractor/src/main/java/dev/wildriftresearch/oodleextractor/MainActivity.java`, `.../com/tencent/utils/RowFileUtils.java`, `oodle-extractor/src/main/assets/oodle_compress_config.json`, `oodle-extractor/host_validator.py`, `oodle-extractor/build-artifacts/output-validation.txt`, `oodle-extractor/build-artifacts/source-hashes.txt`.
- `audits/remediation-2026-08-09/c1-oodle/verification.txt`, `.../c2-crypto/verification.txt` (Oodle and crypto batch verification), `.../final/gate-matrix.json` (C1 PARTIAL/CRC unsupported).

### Workspace (`work/`)
- `work/native-container-audit/decompressed-arm64/` (5 reconstructed ELFs + stderr logs), `work/native-container-audit/elf-payload/`, `.../oodle-*ghidra.log`.
- `work/offline-oodle-extractor/` (original Gradle project, host_validator.py, build-artifacts).
- `work/static-boundary-recovery-2026-07-12/static-boundary-decision.md`, `opaque-target-classification.md`, `reconstruction-provenance.md`, `boundary-input-manifest.json`, `page-writer-map.jsonl`.

### Corpora (read-only sources)
- `artifacts/device-backups/wild-rift-google-play-7.2.0.2460-7246064-20260711/external-data-basic/files/` (DynamicDownload/puffer_res.eifs, DynamicDownload/Res/LData/*.vfs, Res/LData/*.vfs, Res/FETest/*, Res/apollo_reslist.flist.diff).
- `work/7.2.0.2460-7246064/apks/pad1.apk!assets/assetpack/Res/FETest/` and `!assets/assetpack/first_source.ifs.res.png`.

## Reproduction Notes

1. **`_cp.so` is not ELF**: the `7F 45 4C 46` at offset 0x0C is inside the Oodle stream; stripping 12B and parsing it as ELF is invalid.
2. **VFS magic collides with payloads**: block boundaries must be confirmed with `validated_block_offsets()` (length+alignment+next header); `_raw_magic_hits()` is forensics only.
3. **Index region parsing is fail-closed**: reject on any failure of count/path/chain/tail PKCS#7; `rec[0].rel==0` and the `rel+size` chain must hold.
4. **Block size ≥ 36** (4B magic + 32B key block); block ciphertext must be 16-aligned; first 4B must equal the file magic.
5. **eifs decode ≠ full archive done**: HET/BET is only one layer; Region B content transform and IFS RSA are unclosed; when patch-list is non-empty, the table block key becomes the list's byte sum.
6. **The additive cipher table** comes from a qemu runtime dump (0xB54010, 0x500 words); offline reproduction requires `nifs-table-0x500.bin` first.
7. **No evidence for Oodle CRC**: the algorithm/coverage of the `crc` field in `oodle_compress_config.json` is unknown; every validation report must mark it `unsupported` and never guess the algorithm.
8. **host_validator negative cases**: truncated ELF header, wrong endian, wrong ET_DYN/AArch64, or soname mismatch must raise ValueError; a negative case passing means the validator itself is broken.
9. **FETest counting semantics**: Basic 22/22 and PAD 22/22 are two independent byte samples; `op=insn&0x3f` and `>46` are only bitfield counts and do not constitute custom opcode semantics.
10. **Address coordinates**: VFS/cipher coordinates are libFEProj.so static VA == file offset (<0x6a5ba94); runtime island addresses are additionally affected by XOR-0x30 and the 8-slot permutation (this slice is static only).
11. **Boundary discipline**: static evidence must not be upgraded to "runtime selection/execution"; see `static-boundary-decision.md` for the G1/G2 criteria and the static stop rule for the 0x158853c page.
12. **Version differences**: in the 7.2.46.104 corpus LData index 1206→1208, directory name DynDL-LData; root paths in the command scripts (batch_vfs_decrypt*.py) switch with the corpus.
