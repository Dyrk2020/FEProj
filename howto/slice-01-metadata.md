# Slice 01 — global-metadata.dat (FMN! v31) Decryption Methodology

> This slice covers: static decryption (ChaCha20 variant + two 256-byte XOR tables) and readable extraction of the IL2CPP metadata file `global-metadata.dat`.
> Version baseline: Wild Rift package/build **7.2.0.2460 / 7246064**, resource **7.2.55.126**, ABI **arm64-v8a**.
> Input corpus: `corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat` and
> `corpus/native-elf/decompressed-arm64/libil2cpp.so`. Evidence markers: ✅ = directly observed/reproduced, [I] = inferred, NOT_ESTABLISHED = not established.

## Objective

Recover Riot's modified IL2CPP metadata file `global-metadata.dat` (58,401,572 B) from "static encryption" back to a readable structure:

1. The 31 `{offset,size}` pairs in the file header (pairs 0–3 statically stored as ciphertext) — ChaCha20-variant CTR decryption;
2. The 15.5 MB high-entropy region (0x70000..0xF45000) — two independent **index-dependent 256-byte XOR** segments (stringLiteral pool + name table);
3. Fixed-point parsing based on the decrypted result: dictionaries such as 48,642 classes / 395,966 methods (`types.json`/`methods.json`/`strings.json`).

Methodology: **first statically analyze the load/decrypt chain of libil2cpp.so (IDA + a self-written Python reproduction), then reconstruct the file layout backward**; the high-entropy region is not a uniform keystream ("counter is nonlinear with offset") but a per-table lazy XOR.

## Key Coordinates

### Files and hashes (evidence: `work/metadata-bulk-20260814/DECRYPTED.md` §1, `work/il2cpp-readable-20260814/README.md` §1)

- Input: `corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat`
  - Size **58,401,572 B**; magic **`FMN!`** @0x00; **version = 31** (u32 @0x04 = 0x1F); 31 `{off:i32,size:i32}` pairs @0x08..0x100 (header 256 B total)
  - SHA-256 `5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d` (verified by `decrypt_metadata.py` on every run)
- Auxiliary: `corpus/native-elf/decompressed-arm64/libil2cpp.so` (215,681,928 B, SHA-256 `6e8e7002169bc658fbe64be4c6e216e22c4bf719a620940e77890b9e57211dc6`)

### Coordinate system conversion (evidence: `work/il2cpp-ida-20260814/METADATA-CHAIN.md` §1, `results/addrmap.json`)

| Coordinate system | Conversion | Notes |
|---|---|---|
| Ghidra-reported coordinates | `staticVA = Ghidra − 0x100000` | e.g. il2cpp_init reported 0x040e600c → measured 0x3fe600c (dynsym st_value) |
| 'runtime RVA' | `staticVA = RVA` (identity) | 0x3bbf608/0x400159c/0x4004540 are all the ELF p_vaddr themselves |
| File offset → VA | code region off==va; .data region (va≥0xc650290) off = va − 0x8000; 0xc2ac210≤va<0xc650290 region off = va − 0x4000 | measured via PT_LOAD |

### Key libil2cpp.so anchors (static VA = IDA linear address, image base 0)

| Anchor | Address | Evidence |
|---|---|---|
| il2cpp_init (exported) | 0x3FE600C | dynsym st_value; `bl 0x4025598` |
| Runtime::Init | 0x4025598 | Ghidra 0x4125598−0x100000 |
| **MetadataCache::Initialize** (load-chain core) | **0x3FDD77C** | ①0x3fdd7b4 CTR-decrypts filename blob → ②0x3fdd7bc file reader → ③0x3fdd7f4 CTR-decrypts header pairs 0-3 → ④0x3fdd9bc allocates name-table buffer per pair[3] → ⑤initializes per pairs 26-29 |
| open call return point (containing function 0x3BBF590) | 0x3bbf608 | 0x3bbf604 `bl 0x40620c0` (12B thunk) → open@plt 0xc2a7580 |
| mmap call return point (containing function 0x4001474) | 0x400159c | 0x4001598 `bl 0x406224c` → mmap@plt 0xc2a7670; 0x400159c `cmp x0,#0x100` check |
| File reader (concatenates `<dir>/Metadata/<name>`) | 0x4025314 | rodata 'Metadata'@0x1603f44 |
| buffer read+decode helper | 0x4004CE0 | mode 3 |
| **CTR stream decryptor** | **0x4004540** | 64B block loop: calls PRF 0x4004760 → SIMD eor → 64-bit counter+1; **only 2 call sites in the whole .so** (0x3fdd7b4/0x3fdd7f4) |
| **Keystream PRF (ChaCha20-like)** | **0x4004760** | 16×u32 ARX, 20 rounds, final-state add |
| ChaCha constant (16B) | **0x1615550** | `e6 3d ae 01 e5 62 8b b7 f6 83 26 79 eb 61 7e d7` (replaces the standard 'expand 32-byte k') |
| Encrypted filename blob (0x14B) | 0xCDB7A80 | file offset 0xCDAFA80; CTR decryption = `global-metadata.dat\0` |
| **Header pairs key (32B)** | **0xCDB7AB4** | file offset 0xCDAFAB4: `2e 32 8a 4b ec f0 5a 2e 3d d3 bb 3e 61 32 4d e7 18 69 52 70 93 95 54 6c 7e 4a b9 3b 1e 34 86 15` |
| Name-table XOR table (256B) | **0xCDAF980** (file offset; VA 0xCDB7980) | rodata/.data |
| stringLiteral XOR table (256B) | **0x1E42BA8** (file offset==VA) | rodata |
| Name getter (lazy XOR) | 0x3b95a08 | decodes names one by one at runtime by idx |

### global-metadata.dat layout (evidence: `work/il2cpp-readable-20260814/extract_metadata.py` header note, `stats.json`)

| Section | File offset | Record count × stride | Status |
|---|---|---|---|
| header (magic+version+31 pairs) | 0x00 | 256 B | pairs 0-3 statically ciphertext, CTR-decrypted at runtime |
| stringLiteral table | 0x100 | 57,115 × 8 B (`{len:u32, dataIndex:u32}`) | ✅ plaintext |
| stringLiteral data (XOR pool) | 0x6F9D8 | 57,115 strings (1,665,092 B, up to 0x20621C) | ✅ fully decoded via 256B XOR |
| Name table (metadata strings) | 0x20621C | lazy by idx (13,891,412 B, up to 0xF45970) | ✅ fully decoded via 256B XOR |
| events | 0xF45970 | 362 × 24 B | ✅ |
| properties | 0xF47B60 | 44,173 × 20 B | ✅ |
| fieldDefaultValues | 0x1DE9F20 | 278,550 × 12 B | ✅ structure |
| methods (**doubled stride**) | 0x101F664 | 197,983 × 72 B = 2 × 36 B slots per record → **395,966 methods** | ✅ |
| parameters | 0x24D8DD8 | 380,621 × 12 B | ✅ |
| fields | 0x2933F74 | 483,741 × 12 B | ✅ |
| **typeDefinitions** | **0x31AC9CC** | **48,642 × 88 B** | ✅ |
| images / assemblies | 0x35C1A7C / 0x35C283C | 88 × 40 B / 88 × 64 B | ✅ |
| fieldAndParameterDefaultValueData | 0x211A028 | overlaps the plaintext star-name pool | default-value blobs not decoded |

Method slot layout (36 B): `{nameIndex, declaringType, returnType, 0x08000000 marker, parameterStart, genericContainerIndex, token, flags, (parameterCount<<16)|iflags}`; slot s sits at `off + (s//2)*72 + (s%2)*36`. typeDef 88 B layout: nameIndex@0, nsIndex@4, byval@8, byref@12, declaring@16, parent@20, element@24, fieldStart@32, methodStart@36, eventStart@40, propStart@44, mcount@64, pcount@66, fcount@68, ecount@70, flags@80, token@84.

## Method Steps

### 1) ChaCha20 variant cracking and reproduction of header pairs 0-3

Parameters (evidence: `METADATA-CHAIN.md` §2, `decrypt_metadata.py` header note; the two independent implementations agree ✅):

```
constant = libil2cpp.so offset 0x1615550 (16B): e6 3d ae 01 e5 62 8b b7 f6 83 26 79 eb 61 7e d7
key      = libil2cpp.so offset 0xCDAFAB4 (32B): 2e 32 8a 4b ec f0 5a 2e 3d d3 bb 3e 61 32 4d e7
          18 69 52 70 93 95 54 6c 7e 4a b9 3b 1e 34 86 15
nonce    = first 8B of key (2e 32 8a 4b ec f0 5a 2e)
state    = constant(16B) ‖ key(32B) ‖ counter(8B LE, words 12-13) ‖ nonce(8B, words 14-15)
rounds   = 20 standard ChaCha20 quarter-rounds (PRF 0x4004760); counter+1 per 64B block
```

Reproduction verification (`python3 decrypt_metadata.py verify-header`):

1. Read ciphertext 0x08..0x27 (32 B, the 8 u32s of pairs 0-3: `49 db 9d cc 2b 3d 9d cf c1 9d d4 00 4a 50 a3 fc …`);
2. Generate the first 32 B of keystream(block 0), XOR byte by byte;
3. Expected plaintext = 8 u32s: `{0xF45970,0x21F0},{0x196844,0x100},{0x6F9D8,0x20621C},{0xD3F754,0x6F8D8}` → `verify-header: MATCH = True` (byte-identical to the plaintext in METADATA-CHAIN.md §2).
4. **CTR coverage delimitation**: streaming XOR over the full 0x08..0x213 range would corrupt pairs 4-30 (e.g. pair 4 plaintext `{0xF47B60,0xD7B04}` gets mangled) → **only 0x08..0x27 in the delivered file is ciphertext**; magic `FMN!`@0x00 and pairs 4-30 @0x28.. are already plaintext in the file. 0x20B is only the runtime buffer length. Counter mapping: `counter = file_offset // 64` (pairs 0-3 sit inside block 0).

### 2) High-entropy region negative experiments (failure paths recorded as-is)

Generate keystream for the full 0x70000..0xF45000 range (15,552,512 B; counter = offset//64, 243,008 blocks, ~29 s) and XOR:

| Metric | Original | After ChaCha20 streaming | Verdict |
|---|---|---|---|
| Shannon entropy (bits/byte) | 7.9849 | 8.0000 (**increased**) | ✗ not decrypted |
| Printable-ASCII runs of 8+ | 1174 | 3511 (noise level) | ✗ |
| Anchors (`BattleShopTips`/`ShopTips`/`Assembly-CSharp`/`<Module>`/`getmetatable`/`System.String`) | 0 | 0 | ✗ |

All alternative counter mappings (region/pool/nametable-local streams, standard 'expand 32-byte k' constant with the same key/nonce) failed (256B probe entropy ≈7.11–7.25). Conclusion: **no uniform ChaCha20 keystream as a function of offset exists in this region** (consistent with NOT_ESTABLISHED in METADATA-CHAIN §7; this slice provides the negative evidence; no brute-force guessing).

### 3) The two 256-byte XOR decryptions (the real mechanism)

**stringLiteral pool** (0x6F9D8..0x20621C, 1,665,092 B; table @0x100 = 57,115 × {len, dataIndex}):

```
raw   = D[0x6F9D8 + di : 0x6F9D8 + di + ln]        (di = dataIndex, relative to pool start)
start = ((di*ln + idx) & 0xF) << 4                  ← content-dependent key offset (empirical evidence of "counter nonlinearity")
out[i]= raw[i] ^ ks[(start + i) & 0xFF], ks = libil2cpp 0x1E42BA8 (256B)
```

**Name table** (0x20621C..0xF45970, 13,891,412 B):

```
pos   = 0x20621C + idx                              (idx = name index, i.e. name byte offset)
state = ((0xD3F754 * pos) & 0xFFFFFFFF) % 0x11D53   ← 0xD3F754 = name-table region size [I]
nib   = (state & 0xF) << 4
out[i]= D[pos+i] ^ ks[(nib + i) & 0xFF], ks = libil2cpp 0xCDAF980 (256B)
```

### 4) Fixed-point extraction (`work/il2cpp-readable-20260814/extract_metadata.py`)

1. Lazy name-table decoding: `name_at(idx)` decodes per the formula above up to NUL (cap 512 B), cached;
2. stringLiteral: `literal(idx)` decodes per the pool formula (idx is the table index, not idx>>1 — correcting the earlier metadata-bulk.md notation);
3. Full-field parsing of typeDefs at 88 B/entry; byval reverse mapping: **byvalTypeIndex is injective over the 48,642 typeDefs** (range 24,609..100,617) → `typeIndex → typeDef`; base/return/parameter types falling into the byval set are resolvable;
4. Method table parsed per the "doubled-stride" slot layout (rid=2×idx+1, 36 B slots, unlike stock v31's 48 B records);
5. Verification: `Σ fieldCount == 483,741`, `Σ methodCount == 395,966 == 2×197,983`, `Σ parameterCount == 380,621` (parameter continuity);
6. Produces `types.json` (48,642), `methods.json` (395,966), `battle.json` (1,427 battle classes), `strings.json` (57,115), `stats.json`; `gen_md.py` generates `classes.md`/`strings.md`.

### 5) Full reproduction commands (for colleagues to follow)

```bash
# Dependencies: python3 (stdlib only, no third-party packages); corpus in place:
#   corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat
#   corpus/native-elf/decompressed-arm64/libil2cpp.so

# A) One-shot reproduction of the decrypt chain (verify-header + attempt-region + write-header + decode-pool
#    + decode-nametable + cross-check; ~40 s, with keystream generation at 29 s being the largest cost)
cd <research-workspace>/work/metadata-bulk-20260814
python3 decrypt_metadata.py all

# Step commands: verify-header / attempt-region / write-header / decode-pool / decode-nametable

# B) Readable extraction (types/methods/strings/battle/stats JSON)
cd <research-workspace>/work/il2cpp-readable-20260814
python3 extract_metadata.py        # prints types=48642 methods=395966 ...
python3 gen_md.py                  # generates classes.md / strings.md

# C) (Optional) IDA-side read-only re-verification: open the written-back .i64, print anchor names/comments
timeout 600 idat -A \
  -S<research-workspace>/work/il2cpp-ida-20260814/scripts/verify.py \
  -L<research-workspace>/work/il2cpp-ida-20260814/logs/verify.log \
  <research-workspace>/work/il2cpp-ida-20260814/libil2cpp.i64
# Re-run the IDA main flow (~30-60 min):
# timeout 3540 idat -A -S.../scripts/refine.py -L.../logs/refine.log \
#   -o.../libil2cpp.i64 corpus/native-elf/decompressed-arm64/libil2cpp.so
```

### 6) (Supplement) String-cache (display names) slice — `work/string-cache-20260814/`

Independent of metadata decryption, but like "name table resolvable" part of readability: parses `Tables_stringcacheinfo.txt` (the extracted string-cache index, a mixed binary+text table, records = `<id>` + inline binary block + `<ABPack stream path>`) → `string-map.json`: 220 id→stream mappings, 123 hero table entries, 2,584 equipment stream names, zh_tw display names (TF=逆命 and 14 others). Text segments can be precisely collided against the 49,946 real members of vfs-paths.json (e.g. id 605089 → `WorkFlow/Hero/10046/Flow/teemo_spell04_camera.bytes`). Version drift: the 7.2.55.126 re-decrypted file (986,203 B) has an extra 16B binary prefix at the head and its first record is truncated; the older version (984,171 B) starts with `fb3c`+BOM+`0,`. Unresolved: inline binary block grammar ([I] string-table metadata), the 16B prefix ([I] rebuilt version/integrity key), id generation algorithm (not a hash).

## Findings

- **C1** Header pairs 0-3 reproduced successfully with the ChaCha20 variant, byte-identical to the plaintext in METADATA-CHAIN §2/§4 ✅.
- **C2** Actual CTR coverage = file range 0x08..0x27 (32 B, pairs 0-3 only); magic and pairs 4-30 are delivered as plaintext ✅.
- **C3** The high-entropy region 0x70000..0xF45000 is **not** decrypted by this ChaCha20 stream (entropy rose, zero anchor hits, all candidate counter mappings failed) ✅.
- **C4** The real mechanism of the high-entropy region = per-table 256B XOR (index-dependent key offset): stringLiteral pool (0x6F9D8..0x20621C) + name table (0x20621C..0xF45970); the two segments together **cover 100% of the region** and are all decrypted ✅.
- **C5** "Counter is nonlinear with offset" holds: decryption position is determined by content-dependent formulas (pool `((di*len+idx)&0xF)<<4`; name table `((0xD3F754*pos)%0x11D53 & 0xF)<<4`); no uniform keystream exists in the region ✅.
- **C6** Full-decode quality: the 57,115 strings have **0 mismatches** against strings.json (including the idx0 empty string and the idx60 Lua source `local getmetatable=…`); pool entropy 7.9824→5.8065; name-table walk-through: **535,234 names with 0 unterminated**, end point exactly at the events boundary 0xF45970, and **0 mismatches** against the 48,642 typeDef names in types.json (entropy 7.9816→5.2396) ✅.
- **C7** Dictionary results: **48,642 classes / 395,966 methods** (plus 483,741 fields, 380,621 parameters, 44,173 properties, 362 events, 57,115 string constants, 450 namespaces); the method table uses Riot's modified "doubled-stride" layout (2×197,983 records × 36 B slots) ✅.
- **C8** Metadata-wrapping evidence (cross-slice closure): encrypted filename blob 0xCDB7A80 CTR-decrypts to `global-metadata.dat\0` (`METADATA-CHAIN.md` §2 verification ②); on the dynamic side, frida observed the open/mmap call sites (libil2cpp.so rva 0x3bbf608/0x400159c) and the header being decrypted in place to plaintext pairs in memory after mmap (`feproj-clone/dynamic-bridge/runs/20260716T231033.454503Z-cd38a941/a3-events.jsonl`, `audits/remediation-2026-08-09/c4-dynamic/a4c1-evidence-v2.json`) ✅.
- **C9** Type-resolution boundary (NOT_ESTABLISHED, stated honestly): field typeIndex uses a **second index space** disjoint from byval (38,193 distinct values; int fields = 48682 while System.Int32 byval = 48677), not statically mappable → outputs `F<idx>`; method/parameter types not hitting byval → `T<idx>`; records such as generics/interfaces/vtable/attributeData exist but are not decoded.
- **C10** No handler for `'FMN!'` reference points **exists**: 0 hits for `FMN!`, 0 for `global-metadata`, 0 for `MetadataLoader` across the whole libil2cpp.so (the modification removed the magic/version check) — Riot's side has no file-level validation, so offline decryption is directly possible.
- **C11** Pair semantics [I]: in pair1 `{0x196844,0x100}`, 0x196844 = stringLiteral pool size (relative usage range); in pair3 `{0xD3F754,0x6F8D8}`, 0xD3F754 = name-table region size and 0x6F8D8 = 57,115×8 (table byte count); pair0 = events `{0xF45970,0x21F0}` (362×24=0x21F0 ✅); the README marks pair3 as "decoy" [I].

## Evidence Files

- `work/metadata-bulk-20260814/DECRYPTED.md` — full decryption report (conclusion summary/ChaCha parameters/failed experiments/deliverables table)
- `work/metadata-bulk-20260814/decrypt_metadata.py` — reusable decryption script (ChaCha core + 5 subcommands + cross-check)
- `work/metadata-bulk-20260814/metadata-decrypted-header.bin` (256 B, sha256 `e4112f40…9918`)
- `work/metadata-bulk-20260814/metadata-decrypted-stringpool.bin` (1,665,092 B, `1fec1488…a041b`)
- `work/metadata-bulk-20260814/metadata-decrypted-nametable.bin` (13,891,412 B, `0ae5dad7…3135aab`)
- `work/il2cpp-readable-20260814/README.md` — readability report (§2 recipes, §3 coverage boundaries, §4 battle-class hits)
- `work/il2cpp-readable-20260814/extract_metadata.py` — extraction script (all offsets/decryption formulas in header note + typeDef 88B layout)
- `work/il2cpp-readable-20260814/stats.json` — per-section record counts/stride/status + type-resolution statistics
- `work/il2cpp-readable-20260814/{types.json,methods.json,strings.json,battle.json,classes.md,strings.md,gen_md.py}` — dictionary artifacts
- `work/il2cpp-ida-20260814/METADATA-CHAIN.md` — coordinate conversion tables + lifecycle chain diagram + encryption details + decompilation list
- `work/il2cpp-ida-20260814/README.md` — IDA headless reproduction commands and failure items
- `work/il2cpp-ida-20260814/results/addrmap.json` — machine-readable coordinate conversion table (13 anchors)
- `work/il2cpp-ida-20260814/decompiled/*.c`, `scripts/{refine,common,verify}.py`, `logs/`, `libil2cpp.i64`
- `work/string-cache-20260814/STRINGCACHE.md`, `README.md`, `string-map.json` — string-cache display-name slice
- `feproj-clone/decoders/extract_type_fields.py` — earlier recipe (name-table formula + typeDefinitions location, re-verified consistent)
- `feproj-clone/audits/remediation-2026-08-09/c3-provenance/artifact-chain-report-final.json` — input-hash provenance (`WR-2026-08-A07-global-metadata` match)
- `feproj-clone/audits/remediation-2026-08-09/c4-dynamic/a4c1-evidence-v2.json` — dynamic-side in-place header decryption evidence
- `feproj-clone/dynamic-bridge/runs/*/a3-events.jsonl` — open/mmap call sites + in-memory plaintext pairs observations
- `corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat`, `corpus/native-elf/decompressed-arm64/libil2cpp.so` — input corpus

## Reproduction Notes

- **Input hash lock**: `decrypt_metadata.py` asserts the input SHA-256 (`5bd0f8b0…fde45d`) and length 58,401,572; verify the hash before switching versions (e.g. the 7.2.55.126 re-decryption), otherwise it fails outright.
- **Coordinate trap**: Ghidra-reported coordinates are 0x100000 higher than ELF static VAs; the bytes at 0x40e600c ≠ il2cpp_init code. 'runtime RVA' equals the static VA (identity) — don't convert twice.
- **.data-region file offsets**: when a key/XOR table is in .data (VA ≥ 0xc650290), file offset = VA − 0x8000 (e.g. key VA 0xCDB7AB4 → file 0xCDAFAB4; name-table ks VA 0xCDB7980 → file 0xCDAF980). stringLiteral ks 0x1E42BA8 is in the code/rodata region (off==va); read it directly.
- **Only 0x08..0x27 is CTR ciphertext**: don't treat 0x20B (the runtime buffer length) as the ciphertext range; re-applying CTR to pairs 4-30 would corrupt the plaintext (observable with `verify-header`).
- **XOR table offset modulus details**: both formulas first compute a nibble start (`& 0xF)<<4` or `state&0xF)<<4`), then index the 256B table with `(start+i)&0xFF` — the start is always a multiple of 16, period 256.
- **The pool formula uses idx, not idx>>1**: earlier `metadata-bulk.md` §3 recorded `x0>>1`; this slice empirically corrects it to `((di*ln + idx)&0xF)<<4` (idx = stringLiteral table index); the old formula would mismatch.
- **Name-table decoding is lazy by idx**: the walked-table artifact (`metadata-decrypted-nametable.bin`) is an image rebuilt by name continuity; the game side decodes lazily by idx at runtime (getter 0x3b95a08). Correctness rests on three pieces of evidence: 535,234 names with 0 unterminated + end point exactly at the events boundary + 0 mismatches across the 48,642 typeDef names.
- **The method table is a modified layout**: 197,983 records × 72 B = two 36 B slots (doubled stride), rid = 2×idx+1; unlike stock v31's 48 B/record — a generic FMN parser must adapt to this; don't apply the standard il2cppdumper structure.
- **Performance**: full keystream generation takes ~29 s (15.5 MB region negative experiment); on the IDA side don't run full autoanalysis over the 130 MB il2cpp segment (hours) — use `auto_cancel` + FDE-boundary fixed-point analysis; decompile in "caller before callee" order to avoid MERR_BADCALL (wide prototypes cause code=-12).
- **Read-only constraint**: none of the slices above modified corpus/artifacts/reports; artifacts are written only to their own working directories.
- **Scope boundary**: this slice covers only static decryption and fixed-point parsing; the field-type second index space, generic instances, default-value blobs, and the string-cache inline binary grammar are all NOT_ESTABLISHED (they would require runtime tracing of MetadataCache type-table construction), labeled honestly as such.
