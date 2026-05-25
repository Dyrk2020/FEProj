# Slice 05 — Match Network Protocol (NetCrypto / LNet Transport / TDR / State Sync / Uplink & End-of-Match Reporting)

> This slice covers only **static reverse engineering and packet-capture decryption methods**: binary addresses, algorithm parameters, tool commands, reproducible steps.
> All conclusions come from two real-device match captures on 2026-08-12 + 4 parallel reverse-engineering slices + 5 reports, all read-only research.
> Evidence files are given for both the feproj-clone copy (`net-protocol/…`) and the original workspace (`wild-rift-research/work|reports/…`; the .md reports exist only in the workspace).

---

## Objective

Reverse the **match network channel** of Wild Rift 7.2.0.2460 (build 7246064, arm64-v8a, package com.riotgames.league.wildrift):

1. The encryption scheme of match UDP frames (AES-256-GCM parameters, nonce derivation, CRC32 integrity) and the key interception point;
2. The LNet transport layer (compress→encrypt→send / receive→decrypt→decompress) and connection anchors;
3. The TDR wire encoding format and the metalib mechanism (application-layer message encoding);
4. The TGCP/gcloud login session key chain (A channel, fully recomputable offline);
5. Decrypted protocol structure: type=07 state sync, u16 position Fix32 semantics, uplink ch=06, end-of-match ch=2d reporting;
6. The full offline decryption pipeline (26,690/26,690 frames 100% CRC-verified) and how to reproduce it.

---

## Key Coordinates

### 1. Network Anchors (match UDP)

| Item | Value | Evidence |
|---|---|---|
| Match UDP anchor | `*.row-release-pub*.game.wr.pvp.net:10001` (real-device logs confirm 3 pools: sg / eu / amer-aws; LOG_ID 249857249) | `reports/2026-08-12_wild-rift-7.2-packet-prep-plan.md` §2/§4 |
| Port origin | **Not hardcoded**: libLNet.so `mov w,#0x2711`(10001)/`0x2af9`(11001) zero hits across the whole library; 10001 comes from the server config `default_cloud.json` serverList | `work/packet-prep-2026-08-12/LNetTransport/lnet-transport.md` §2.1/§9 |
| Measured match server | `101.32.106.120` (Tencent Cloud) UDP 15031/15034 (game socket direct); local VPN/tunnel proxy (used during capture, port 37177 → device socket 2530, payload = [38B tunnel header][NetCrypto frame]) | `reports/2026-08-12_wild-rift-7.2-match-capture-decrypt.md` §2 |
| Other telemetry | tdm.prod01.row.cros.wr.pvp.net:8013, astat.bugly, TAPM apm.access.pub.row, TCP 10001 (43.152.113.103, **not NetCrypto**, separate self-encrypted TCP control protocol) | same as above + `work/packet-decrypt-20260812/summary.md` §4 |

### 2. NetCrypto Cipher Parameters (libLNet.so, VA==file offset)

| Item | Value |
|---|---|
| Algorithm | **AES-256-GCM (EVP), no GCM tag, no AAD on the wire** (effectively GCM-CTR); corrects the earlier "C AES-CCM" inference — `CRYPTO_ccm128_*` are statically linked OpenSSL leftovers, zero calls from this module |
| AES key | first 32B of the key blob (EVP_aes_256_gcm struct @0x22d1b0 key_len=32, cipher address taken @0xe8224) |
| Object/vtable | NetCrypto object 0x128B; ctor 0xd6ae0 (bl EVP_aes_256_gcm @0x647b0); vtable @0x22c878: [0x10]=0xd6ee0 SetKey, [0x18]=0xd7410 Encrypt, [0x20]=0xd7834 Decrypt |
| Public API | NetCryptoCreate@0x9f37c / **NetCryptoSetKey@0x9f640** / NetCryptoEncrypt@0x9fab4 / NetCryptoDecrypt@0xa001c / NetCryptoDestroy@0x9f3c0 |
| Key parameter layout | `[32B AES-256 key][nonce material keylen-0x20 ∈ [0,16]B]`; valid keylen range [0x20,0x30] (checked @0xd7114 cmp #0x11) |
| Nonce derivation | `nonce = MD5( nonce material[0:keylen-0x24] ‖ rev(message header[0:4]) )[0 : keylen-0x20]`; `rev` = the first 4 bytes written into the MD5 input in reversed byte order (Encrypt 0xd75f8–0xd7620 / Decrypt 0xd79d0–0xd79f8, identical on both sides); injected via EVP_EncryptInit_ex(iv=digest) |
| Measured key | captured keylen=48: key(32B) `c139fd88…51d6e5d` + nonce material(16B) `8b879cc0…0f0a8512`; keylen=48 ⇒ nonce = MD5(nm[:12] + rev4(head))[:16] (16B nonce, pycryptodome-compatible) |
| Integrity | CRC32 (IEEE, table @0x24d658, function 0xd9858), stored **big-endian** in the plaintext `out[hlen:hlen+4]`; `CRC = zlib.crc32(entire out with the CRC slot zeroed)`; CRC is computed before encryption, then [CRC‖payload] is encrypted; after decryption the CRC is verified first |
| Plaintext header | hlen≥4 plaintext header is not encrypted, passed through verbatim (Encrypt 0xd769c memcpy), and **participates in nonce derivation** (first 4 bytes only); hlen<4 takes a degenerate path (entire buffer encrypted, no CRC) |
| Anti-tamper "hash check" | 0xdb508→0xd9d30 is an always-true decoy (passes whenever the string is non-empty; the comparison object = libstdc++ COW empty string `_S_empty_rep` @0x267420), has no cryptographic effect |

### 3. LNet Transport Chain (libLNet.so)

```
Send: NetSend(0x94cfc) → internal send 0x71078 → send super-function 0xccf34
      → [LZW compress 0xe511c @0xd0298] → [Encrypt vtbl+0x18 @0xd0d80] → low-level sendto/send 0xbec9c (flags=0x4000 MSG_NOSIGNAL)
Receive: RecvData thread 0x7fb24 (select) → 0xd1ffc → recvfrom/recv 0xbf0bc (buffer 0x800=2048B)
      → 0xd2ae0 → [Decrypt vtbl+0x20 @0xd310c] → [LZW decompress 0xe5464 @0xd31e0]
```

| Item | Value |
|---|---|
| LZW compress | 0xe511c/0xe5248 (XOR-0x50); signature `(obj,in,in_len,out,out_len*,prefix_len)`; dictionary cap **0x4000=16384** (`cmp w0,#4,lsl #12`), output block 0x800; send callsite 0xd0298 |
| LZW decompress | 0xe5464/0xe5540; bit width `[x8+4]`; dictionary cap same 0x4000; receive callsite 0xd31e0 |
| Compression switch | `NetSetCompressSwitchAndDictPath`@0x96048 → internal 0x79614; dictionary load 0xe4f58 (failure string `lzw dictionary init fail!path:%s`@0x1d923a) |
| **Measured payload not compressed** | post-decrypt payload entropy 1.7–2.9 bits/byte (if LZW were active it should be ≈8) → this build does not actually enable compression; LZW is a transport-level option, transparent to the crypto layer |
| EC channel | NetConnectECServer@0x94118 → 0x6c878 (alloc 0x128 + crypto ctor → conn+0x318; alloc 0x1b48 EC conn ctor 0xc3764); type 5/6/7 three slots conn+0x300/0x308/0x310; independent crypto ctx |
| Connection object | main conn+0x70 / aux conn+0x78 (dual-link bonding); crypto ctx conn+0x268 (send side) / conn+0x158 (EC); host/port fields conn+0x288/0x2a0/0x2ac |
| Heartbeat/reliable | NetSendHeartBeat@0x9e940 → 0x79374; `NetGetReliablePacketStat`@0x9e7b4 (0x50B stats struct); sequence dedup 0xc7050 |
| Constant tables | 0x24bd90 (send templates)/0x24bdc0/0x24bdf0 (receive)/0x248140 (internal send), lazily initialized decodes (bic/and/orr + NEON bsl), decoded byte-by-byte by an interpreter (see lnet-transport.md §10) |

### 4. Key Hook Points (Frida, VA==RVA, runtime = base+RVA)

| hook | RVA | purpose |
|---|---|---|
| **NetCryptoSetKey** | libLNet **0x9F640** (x0=ctx, x1=key blob, w2=keylen) | **B-channel authoritative point**: one call records the 48B blob (32B key + 16B nonce material) |
| NetSetKey | libLNet 0x95E70 (x0=host, x1=key, w2=keylen) | backup/dual path |
| SetKeyMain callsite | libLNet 0x79588 (ctx=conn+0x268) | main channel SetKey args |
| SetKeyEC callsite | libLNet 0x6d31c (ctx=conn+0x318) | EC channel SetKey args |
| Encrypt callsite | libLNet 0xd0d80 (vtbl+0x18; x1=in,w2=hlen,w3=tlen) | **plaintext before encryption** (validates capture vs offline decryption) |
| Decrypt callsite | libLNet 0xd310c (vtbl+0x20) | **plaintext after decryption** (cross-check against offline results; `tbz w0,#0` check) |
| il2cpp KeyInfo assembly | libil2cpp 0x5AF591C (method 0x5AF53E8; KeyInfo{+0x10 len1,+0x18 buf1,+0x20 len2,+0x28 buf2}) | B-channel key material source (measured len1=10496, len2=108; buf pointer read failed = managed memory, source OPEN) |
| TGCP derivation cross-check | libgcloud 0x1C964C | A-channel offline recomputation reference |

### 5. TGCP/gcloud Session Key Chain (A channel, fully recomputable offline)

```
AES_key(16B) = upper_hex( MD5( sprintf("%llu%s%lu", session_id, session_key, seq_no) ) )[8..15]
             = [16:32] of the 32-char uppercase hex (hex of the last 8 bytes of the MD5 digest)
Data plane: AES-128-CBC + tsf4g padding; fixed IV 00 01 02 … 0f @libgcloud 0x809D10
```

| Item | Value |
|---|---|
| Derivation function | libgcloud 0x1C964C: snprintf("%llu%s%lu" @0x8160A2) → MD5 (Init/Update/Final @0x228AD4/0x228B10/0x228C14) → uppercase hex ("%02X" @0x824A16) → memcpy hex[16:32] → AES_set_key(session+8, key16, 128) @0x158724 |
| Input fields | login response `g6.LoginRspData` (descriptor @0x8D39DC): `session_id u64/1`, `session_key string/2`, `seq_no u32/4` (also `game_data string/5`, suspected B-channel bridge, unconfirmed [I]) |
| tsf4g padding | rem=len&0xf; pad=0x20-rem (rem>10) or 0x10-rem; content = copy of input tail + random bytes + marker `'t''s''f''4''g'` + padlen (@0x158528+); CBC primitive 0x1581B4; encrypt/decrypt dispatch 0x1C9928/0x1C9A88 |
| Session object | 0x1F4B @0x1C9F44; +0 stateA, +4 stateB (0=plaintext passthrough, 1=encrypted), +8 dual-schedule AES-128 key schedule, +0x1F0 key-set flag |
| Scope | TGCP/G6 connector (gcp_tcp:// / gcp_lwip://), tdir, lockstep (gcloud_lockstep_*), GRomeLink — **not the match channel** |
| B channel | **zero derivation** in libLNet (byte-level verified pure passthrough after CFF recovery); key assembled by the il2cpp C# host (buf1++buf2), source OPEN → **must hook NetCryptoSetKey, cannot be recomputed purely offline** |

### 6. TDR Wire Format (libtdr.so, 1,774,368 B, unstripped full DWARF)

| Item | Value |
|---|---|
| Encoding | **schema-driven positional, not self-describing**: no magic, no field-type bytes, no field IDs; multi-byte integers **all big-endian**; fields concatenated in metalib entry order, entries with `entry.iVersion > pack version` are skipped |
| String type21 | `[length prefix BE u32 by default][byte string incl. NUL]`, length = strlen+1; wstring type22 = (wcslen+1)×2 bytes |
| Fixed-length arrays | elements contiguous, no count prefix; refer variable-length array counts carried by the same-structure refer scalar (no extra bytes); sizeinfo variable-length array counts written to fixed slots inside the struct (BE, unit 2/4/8) |
| union | `[selector value][active member data]`, selector width/bit decided by stSelector |
| Struct-level size_type | total packed byte count of the struct backfilled BE into a reserved slot at the struct start; VersionIndicator struct first field writes the pack version |
| metalib layout | lib+0x000 header 0x160B (wMagic u16 0x02D6 @0, nBuild u16 11 @2, dwPlatformArch 0x40 @4…); meta region starts **lib+0x160**; NameEntry[] stride 0x10 (relative to 0x160, dictionary-ordered binary search by name); **meta header 0x130B, entry array @ meta+0x130, stride 0x130** (proven by disassembly of `tdr_get_entry_by_index` 0x15b5c — corrects the Round-12 parser's meta+0x160+608) |
| Loading | Metalib never lands on disk in plaintext (full device/APK scan 0 hits); at runtime C# `tdr_load_metalib_buf` loads it from decrypted memory (confirmed via il2cpp dlsym) |
| Match message candidates | 2,089 TDR type names: star_def:: 893, FrameEngine:: 603, MobaAI:: 386, DataCollectSpc:: 88, star_ai 105, star_stat_report:: 5 (BattleNetworkStat / WebBattleCommonHead / WebCChampionKeyPropertyStat / StatReportSerializePkg / SecRoundPlayerRealTimeFlowC) |
| Relation to LNet | LNet has zero awareness of TDR (0 strings/0 imports); TDR is application-layer encoding, sitting inside the NetCrypto encryption layer |
| Parser | `net-protocol/TdrWire/tdr_parse.py` (TdrDecoder: Metalib → record tree, unknown fields raw hex; selftest PASS) |

### 7. Decrypted On-Wire Protocol Structure (second match, matchId=0x0c28, 10 players)

**Send frames (client→server, hlen=14, wire frame header 33B)**:
```
[0:4] head4 (low 28 bits +1 per frame | bit28 = reliable bit) [4:8] C1=a1e3a465 [8:12] C2=d8cd8892 [12:14] cd76
[14:18] CRC32 big-endian slot [18:22] C3=0e482296 [22:24] 0000 [24] channel byte [25] 00
[26:29] message count u24 (= game frame number) [29] version 06 [30:33] subtype [a][b][c] (a=complexity level 1..4, u16 BE (b,c)=type id) [33:] payload
```
**Receive frames (server→client, hlen=4)**: `[0:4] head4 [4:8] CRC32 [8:12] u32 message type [12:] payload`

| channel/type | count | semantics |
|---|---|---|
| Send ch=06 | 10,142 (91.1%) | **uplink main data stream/input commands**; subtype `010301` main type 8,274 entries = per-frame position reports; 29 subtypes → 13 structural families (010d0c/010e0c/010f0c entity events, 0104cd target entity, 010410 upgrades, 0105cd purchase/consumption candidates, 0103cc monotonic values, 0102ce small-integer counters, etc.) |
| Send ch=0a | 489 | heartbeat ~2.04s: `[ch][00][u24 frame number +30/jitter][8B random nonce][ffffffff][u32 millisecond clock]` |
| Send ch=01 | 338 | periodic clock report, paired with receive type=01 (delta == wall clock 1,027,578ms) |
| Send ch=2d | 88 | **end-of-match report burst** (138ms; 58 unique messages × two-batch resend: A batch 0x69e0×52 + B batch 0x0b78×6; `[u16 batch type][u16 count][u16 sequence][u16 data length][data]`); anchors matchId 0x0c28 + session clock, 9 role ids, hero ids 10034/10059/10009, skills 0x08xx–0x09xx, items 0x0100–0x1600; 13 semantic main families |
| Send ch=1b | 44 | client ACK of downlink roster/type19 (u24 echoes low 16 bits of downlink head4) |
| Receive type=07 | 14,725 (94.6%) | **state sync** (see below) |
| Receive type=1b | 445 | reliable-delivery ACK: `[u32 1b][u32 echoed head4][u32 channel]`; ch=06 reliable frames 357 == ACKs 357 exactly overlapping [V] |
| Receive type=01 | 338 | clock echo |
| Receive type=03 | 42 | roster 359B (18B header + 10×34B records: room record + 9 players `[0c40/0c01][6B player id][ready][00×12][03][00×12]`; resent in 9 states within the first 1.6s as the ready bit evolves; no hero/faction fields); type=02 roster v1 (246B), type=04 single record update |
| Session constants | C1/C2/C3 switch with SetKey time (match 1 `4037056d/16ce8892/6e37dda1` version 04 → match 2 `a1e3a465/d8cd8892/0e482296` version 06, ±90ms); cd76 constant |

### 8. type=07 State Sync (Type07Fields / SemanticMap / StaticLocate / SemanticValidate)

```
frame: [head4][CRC][u32 cmd=07][u32 msgseq]  msgseq = head4 low 28 bits − 43 (14,723/14,725)
message body 12B header: [u32 frame number][0x02][0x00][u8 density tier subtype≈max(0, record count−5)][u8 focus]
record stream: 14-unit sliding window × 5B record `03 01 [u16 value BE][u8 player index 0..10]`; advances 7 slots per frame (7 old 7 new), adjacent frames overlap ≥6 [V]
per-frame player set = {0..10} − {focus} (fully verified across all focus tiers); focus=0 = empty/global frame
event block: 0e block = `0e 65 03 00 00 [6B game frame number×2³² fixed-point clock] ff ff ff ff` (974/976 monotonic, rate 2³²×14.7fps ≈ 63.15e9/s)
        0d block = `0d 0c 06 XX 01 YY 09 65 ZZ 06 00 00 00 00` (u24 counter = 615,550+2×seq)
frame rate: median 68ms ≈ 14.7fps constant; total records 175,520 (mean 11.92/frame)
schema: full sweep of 5,776 classes, only 4 hits for (u16,u8) combos, 0 hits for 4-field 5B structures → 5B record = compact FrameEngine C++ structure
        (BattleNetworkRevMsgBuffer, 0x20B, TDBHelper::TypeName @0x5679783, ctor 0x42f0210), not direct TDR encoding
consumption chain (libFEProj.so, VA==file offset):
  receive dispatch 0x1936c94 (type=7 hit 0x1936d0c, ID 0x7e55738c) → type=7 handler 0x1a5e20c → 0x1a56b14
  → sync-apply 0x42e9874 (entry 0x42e9bf4) → per-team 0x42e91c4 → 0x42ea550/0x42ea6a0 → Fix32 integration 0x461f274
```

### 9. u16 Position Fix32 Semantics (StaticLocate + SemanticValidate full-chain closure)

```
u16 = per-player vertical position (map long-axis coordinate, measured from own base)
Fix32 transform @0x461f210 `ldrh w8,[x8,#0xa]` → 0x461f278–0x461f290:
  pos = base + ((u16<<14 | 0x2000) × speed) >> 14   (bfi #0xe|0x2000 = Fix32 with 0.5 rounding; asr #14)
scale: 1 LSB = 1/16384 Fix32 units; with speed(Fix14)=1875=0x753, 1 LSB = 1875/16384 = 0.11444 game units
      (= exact equivalent of 7500/65536; 7500-unit half-map, 32768 LSB = mid-lane saturation bit)
sentinel: 0xffff = dead/absent (2.4%); value range [0,32768) (15-bit significant)
data-side validation: walking 327 u/s, sprinting 817 u/s, recall displacement 2,746–7,437u, spawn ~5076 LSB, mid 32,710–32,768 LSB saturated
uplink/downlink reconciliation: ch=06 010301 vs type=07 player-0 records match exactly 13.8% within 400ms (highest of all players, median latency ~86ms) → player 0 = local client
negative evidence: bit-exact scan of the entire .text (incl. 1,109 XOR-0x30 islands) for float constants 7500/15000/0.22888/0.11444, 0 hits; angle/input/resource candidate statistics refuted
corpus correction: island-catalog.jsonl 771 islands incomplete; full .text page-by-page scan yields 1,109 XOR-0x30 islands (xor-islands-full.json)
authoritative decode view: QemuSim/dump/text_runtime.bin (72,244,380 B, runtime-decrypted .text of the real 120MB libFEProj.so after full dlopen under qemu-aarch64)
```

### 10. Decryption Results and Reproduction Pipeline

```
key: key_blob(48B) = AES-256 key(32B) c139fd889b50404c3d984ad80b22fb265395b3b5ed8c50af4bf31aa0951d6e5d
                    ‖ nonce material(16B) 8b879cc058aa449f1cd308604f0a8512
key effective: t = 1786543885036 (22:11:25, SetKey once)
frames decrypted: 26,690 / 26,690 (100%) CRC-verified
  outbound 15034→37191: 15,558 frames (hlen=4) ｜ inbound 37191→15034: 11,132 frames (hlen=14)
  time window 1786543885146–1786544912887 (second match ~17 minutes)
cross-validation: inbound 11,132/11,132 byte-identical to hook plain.log (CRC slot excepted); DecryptFlowA/B dual implementations identical item by item
tunnel: local tunnel forward 2530→37177 offset 38, hlen=4, 15,533 frames decrypted successfully; 14,744/14,745 byte-identical to the main-stream plaintext (dual capture of the same frames)
TCP 10001: not NetCrypto (offsets 0–47 × hlen 4–64 blind guess 0 hits; hook log has no 3366-header frames)
```

---

## Method Steps

### A. Static Parameter Recovery (one-off, already-completed baseline)
1. **NetCrypto parameters**: capstone dual-state linear scan of libLNet.so (raw / XOR-0x50 views; capstone validity verdicts raw 0/64, xor50 64/64), decoding each PLT stub with `adrp/add` to resolve GOT → dynsym/rela symbol mapping. Determined `bl 0x647b0 → GOT 0x246d50 → EVP_aes_256_gcm@0xe8224 → struct 0x22d1b0 (key_len=32, iv_len=12)` inside ctor 0xd6ae0; in SetKey 0xd6ee0, `EVP_CIPHER_CTX_ctrl(node, 9/*GCM_SET_IVLEN*/, keylen-0x20, NULL)` + `EVP_EncryptInit_ex(..., key, ctx+0x110)`; the MD5 input concatenation and `rev` byte order inside Encrypt/Decrypt; no `EVP_EncryptFinal_ex`/`GCM_GET_TAG(0x10)`/`SET_TAG(0x11)` anywhere in the vtable → no tag.
2. **Transport chain**: full .text bl scan (raw + XOR-0x50 two passes) to find LZW function callsites 0xd0298/0xd31e0 and Encrypt/Decrypt vtable callsites 0xd0d80/0xd310c, ordering compress→encrypt→send / receive→decrypt→decompress; `socket(2,2,0)`/`connect`/`sendto` flags 0x4000 confirm UDP.
3. **TGCP chain**: disassemble libgcloud.so 0x1C964C for snprintf→MD5→hex→AES_set_key; IV 00..0f @0x809D10; tsf4g padding byte mov sequence.
4. **TDR**: instruction-level disassembly of the real `tdr_hton`(0x25ac8) and `tdr_ntoh_ex`(0x29140), cross-corroborated by DWARF (tagTDRMeta/tagTDRMetaEntry/tagTDRStackItem) + line table `tdr_net.c:135-1352` + error strings; `tdr_get_tlv_struct_max_packed_size_i`(0x186fc) as the byte-accounting arbiter.
5. **State-sync consumption chain**: locate types via FEProj's 2,089 `TDBHelper::TypeName() [T = X]` literals (starting @0x564beb8); hash-ID message dispatch 0x1936c94 → handler → sync-apply; u16 consumption point 0x461f210 + Fix32 transform; full .text XOR-0x30 island scan to complete the decode view.

### B. Real-Device Capture + Hook (for reproduction)
```bash
# 1) Device side (rooted device, tcpdump full SLL2 pcap + logcat + interface snapshot)
adb push wr_cap_start.sh /data/local/tmp/ && adb shell sh /data/local/tmp/wr_cap_start.sh
#    tcpdump -i any -s 0 -w $DIR/traffic.pcap   (optional filter: port 10001 or port 8013 or port 443)

# 2) Host Frida (standalone frida-server listening on 127.0.0.1:27043), attach 8 points (see §4)
python3 run_hook.py --attach <game_pid> --bg     # outputs wr_hook_out/{keys,plain,dec,tgcp,info}.log (JSONL)
#    attach BEFORE the match starts (key is intercepted at SetKey time; match 1 was undecryptable due to late attach — remedy: attach early, then re-login)
# 3) Play one match; afterwards
python3 run_hook.py --stop && adb shell sh /data/local/tmp/wr_cap_stop.sh
```

### C. Offline Decryption (colleague reproduction pipeline)
```bash
# input: artifacts/.../traffic.pcap (91MB, LE pcap, linktype 276 LINUX_SLL2, 377,355 packets)
# key: NetCryptoSetKey record from wr_hook_out/keys.log (keylen=48)

python3 work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.py
#   per frame: nonce = MD5(nonce material[:12] + payload[:4][::-1])[:16]
#         hlen blind guess [4,64] (first CRC pass wins; GCM keystream is aligned to the buffer, each candidate must be decrypted independently as a whole segment)
#         out = payload[:hlen] + AES-256-GCM-CTR(key, nonce, payload[hlen:])   # no tag
#         crc_ok = zlib.crc32(out with out[hlen:hlen+4]=0) == BE(out[hlen:hlen+4])
#   output decrypt_a.jsonl + decrypt_a.stats.json (26,690/26,690 OK, hlen distribution {4:15558, 14:11132})

python3 work/packet-decrypt-20260812/DecryptFlowB/decrypt_b.py      # independent implementation, cross-validation
python3 work/packet-decrypt-20260812/DecryptMisc/decrypt_misc.py    # tunnel/misc streams/TCP 10001
# structure analysis: ProtocolAnalyze/protocol.md; type=07: Type07Extract/extract07.py;
# uplink: UplinkDecode/step1_extract.py…step30_crc.py; end-of-match: EndMatchDecode/analyze.py;
# u16 semantics: u16-semantics-20260812/SemanticValidate/analyze_u16.py
# self-test reference implementation (encrypt/decrypt mutual inverse + tamper detection):
python3 work/packet-prep-2026-08-12/NetCryptoCipher/netcrypto_reference.py   # self-test OK
```

---

## Findings

1. **Match UDP anchor** `*.row-release-pub*.game.wr.pvp.net:10001` comes from server config (not hardcoded in the library); measured connections to Tencent Cloud `101.32.106.120:15031/15034` (UDP, game socket direct), while TCP 10001 (43.152.113.103) is a separate self-encrypted TCP control protocol, **not NetCrypto**.
2. **Encryption = AES-256-GCM (no tag, no AAD)**, 32B key + 0..16B nonce material; `nonce = MD5(nonce material[:keylen-0x24] ‖ rev(header 4B))[:keylen-0x20]`; measured keylen=48 → nonce is the full 16B MD5. Integrity is carried by plaintext CRC32 (big-endian, IEEE, zlib-equivalent); GCM only does CTR.
3. **The key B channel cannot be recomputed offline** (zero derivation in libLNet; il2cpp C# assembles buf1+buf2, source OPEN) → must hook `NetCryptoSetKey@0x9F640` (one measured call yields the 48B blob); the A channel (TGCP) is fully recomputable offline.
4. **LZW transport chain** compress→encrypt→send / receive→decrypt→decompress; dictionary cap 0x4000; but captured payloads are uncompressed (entropy 1.7–2.9), so the compression switch is not enabled in this build.
5. **TDR wire = all-big-endian positional**, no self-describing markers; metalib entries @meta+0x130 (corrects the old parser); Metalib is stored encrypted and loaded at runtime via `tdr_load_metalib_buf`; the 2,089 match-type-name catalog has been extracted.
6. **type=07 = frame-sync broadcast**: 14.7fps, 14-unit sliding window (7 old 7 new), focus player excluded, 5B record `03 01 [u16 position][u8 player]`; 0e block = game-frame-number×2³² fixed-point clock (frame rate reconcilable against it).
7. **u16 = vertical position (Fix32)**: `pos = base + ((u16<<14|0x2000)·speed)>>14`; 1 LSB = 1875/16384 ≈ 0.11444 game units (=7500/65536); 32768 = mid lane, 0xffff = dead/absent sentinel.
8. **Uplink ch=06** main type 010301 = per-frame position reports (8,274 entries); event families (010d0c/0104cd/010410 etc.) are echoed/broadcast by the server per entry (downlink 0d/0e/04cd/03cc blocks, volume ≈ uplink×10); message count [26:29] = game frame number (1:1 reconciled against the downlink 0e clock).
9. **End-of-match ch=2d** = 58 unique messages resent in two batches (A batch 0x69e0×52 + B batch 0x0b78×6) + per-frame ACK; anchor-level alignment (matchId/role/hero/skill/item), field-level offsets require a runtime Metalib.
10. **26,690/26,690 frames 100% decrypted**, 11,132/11,132 byte-identical to hook plaintext, A/B dual implementations identical; local tunnel forward 15,533 frames are dual captures of the same frames as the main stream (14,744/14,745 identical) → the decryption pipeline closes the correctness loop.
11. Frame-header constants (C1/C2/C3, versions 04/06) switch at SetKey time; head4 = connection-level frame counter (low 28 bits +1, bit28 = reliable bit); reliable-frame ACK reconciliation 357==357.
12. State-sync records are compact FrameEngine C++ structures (`BattleNetworkRevMsgBuffer`), not direct TDR encoding; the schema supplies semantic types (ScenesPlayerMoveSyncS / SyncFrameInputC / CSRoomSyncFrameS etc.).

---

## Evidence Files

feproj-clone copy (relative to this repo):
- `net-protocol/NetCryptoCipher/netcrypto_reference.py`, `netcrypto-cipher.json` — AES-256-GCM reference implementation and parameters
- `net-protocol/LNetTransport/lnet_tools.py`, `sim.py`, `lnet-transport.json`, `plt_stubs.json` — transport chain tools
- `net-protocol/SessionKeyChain/session-key-chain.json`, `libgcloud.so` — TGCP chain
- `net-protocol/TdrWire/tdr_parse.py`, `tdr-wire.json`, `tdbhelper-types.txt` (2,089 type names)
- `net-protocol/packet-decrypt/DecryptFlowA/decrypt_a.py`(+stats/crosscheck), `DecryptFlowB/decrypt_b.py`, `DecryptMisc/decrypt_misc.py`, `ProtocolAnalyze/protocol.json`
- `net-protocol/type07/Type07Fields/*`, `Type07Extract/*`, `semantic-map/type_candidates.json`, `metalib/schema-*.json`
- `net-protocol/u16-semantics/StaticLocate/*`, `SemanticValidate/semantics.json`, `HookPrep/u16_dump.js`
- `net-protocol/match-dataflow/UplinkDecode/step*.py`, `EndMatchDecode/*`, `DownlinkDecode/*`

Original workspace (.md reports only here):
- `work/packet-prep-2026-08-12/NetCryptoCipher/netcrypto-cipher.md`, `LNetTransport/lnet-transport.md`, `SessionKeyChain/session-key-chain.md`, `TdrWire/tdr-wire.md`, `run_hook.py`, `wr_net_hook.js`, `wr_cap_start.sh`, `wr_hook_out/keys.log` (keylen=48 evidence)
- `work/packet-decrypt-20260812/summary.md`, `ProtocolAnalyze/protocol.md`
- `work/type07-parse-20260812/Type07Fields/fields.md`, `SemanticMap/report.md`, `MetalibFind/report.md`
- `work/u16-semantics-20260812/StaticLocate/report.md`, `SemanticValidate/semantics.md`, `QemuSim/report.md`
- `work/match-dataflow-20260812/UplinkDecode/report.md`, `EndMatchDecode/report.md`, `DownlinkDecode/report.md`
- `reports/2026-08-12_wild-rift-7.2-packet-prep-plan.md`, `…-match-capture-decrypt.md`, `…-type07-sync-parse.md`, `…-u16-semantics.md`, `…-dataflow-model.md`
- raw capture artifacts: `artifacts/packet-capture-20260812-2153/` (traffic.pcap 91MB + hook logs)

---

## Reproduction Notes

1. **Hook must precede SetKey**: the key is intercepted only once (a single record at t=1786543885036); match 1, attached too late, is undecryptable ciphertext (its plaintext is in the hook log, 7,812 entries). To reproduce: attach first, then restart the game process and re-login to guarantee interception.
2. **Correct approach to the hlen blind guess**: the GCM keystream is aligned to the buffer block passed in; you cannot "decrypt everything first, then slice" — each hlen candidate must be **independently decrypted as a whole segment** starting at hlen; a CRC pass is a hit. In this capture the blind guess over [4,64] landed only on {4,14}: outbound hlen=4, inbound hlen=14.
3. **CRC is the only self-check signal** (GCM has no tag): after decryption `zlib.crc32(entire out with slot zeroed) == BE(slot value)`. In the hook log, roughly 30/11132 records carry a nonzero CRC slot (the hook intercepted after CRC fill) — when comparing plaintext, strip the 4B CRC slot on both sides.
4. **Nonce derivation uses the first 4 bytes of the original plaintext header** (`rev` = reversed byte order), not the encrypted on-wire header; with keylen=48 take nm[:12], the first 12 bytes of the nonce material.
5. **Payload is not compressed**: captured payload entropy is 1.7–2.9 bits/byte; do not LZW-decompress the decrypted result (the transport chain supports LZW but this build does not enable it; if it is enabled in the future, decide per in-frame flags).
6. **The pcap capture point is on the server side**: hlen=14 frames = client→server (sport=37191 is the client port), hlen=4 frames = server→client; judge direction by `sport/dport`, not intuition.
7. **Frame-header constants switch between matches** (C1/C2/C3, versions 04/06) and cannot be reused across matches; session constants switch precisely within ±90ms of SetKey time.
8. **TDR parsing needs a runtime Metalib**: Metalib is stored encrypted and never lands on disk; the TdrDecoder in `tdr_parse.py` needs the memory after `tdr_load_metalib_buf`; statically, only wire-level heuristics are possible (all big-endian/positional/count slots). metalib entry offset per `meta+0x130` (the old Round-12 parser's `meta+0x160+608` must be corrected).
9. **type=07 record decoding traps**: the `03 01` bytes inside 0d/0e event blocks can be mis-scanned as fake records (player index ≥0x0b is a misalignment artifact; real index 0..10); u16 values are read big-endian (wire order); in the Fix32 transform, `0x2000` is the 0.5 rounding bit and `asr #14` is the Fix14 scaling.
10. **The two u16 scale statements are equivalent**: 1 LSB = 1875/16384 ≈ 0.11444 game units = 7500/65536 (half-map 7500 units); do not mix this with the static side's "1/16384 Fix32 units" — the former is map units (multiplied by Fix14 speed 1875), the latter is the internal Fix32 scale.
11. **TCP 10001 is not NetCrypto**: header signature `3366000b`, blind guess over offsets 0–47 × hlen 4–64 gives 0 hits; do not waste decryption compute on it.
12. **Local tunnel**: forward 2530→(proxy port) payload = [38B tunnel header][NetCrypto frame] (offset 38, hlen=4 decodable); reverse (proxy port)→2530 is encoded by the proxy side (not this key's wire, 0 decodable); do not misread it as an encryption failure.
