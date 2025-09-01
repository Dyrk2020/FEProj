# FEProj

Final-state reverse-engineering archive for **Wild Rift 7.2.0.2460** (build 7246064, resource 7.2.55.126, `arm64-v8a`, package `com.riotgames.league.wildrift`).

Facts recovered from that build: decompiled native code, decrypted metadata, decoded game data, wire-protocol notes, and dynamic observation logs. Facts only — no speculation, no "how it probably works". `MANIFEST.md` is the authoritative table of contents; when this README and the MANIFEST disagree, the MANIFEST wins.

## Contents

| Slice | What it holds |
|---|---|
| `native-feproj/` | IDA/Ghidra decompiles of `libFEProj.so` (120,283,368 B): registrar, 881-case dispatcher, `luaV_execute`, castSkill/buff chains, damage core, RPN attribute engine |
| `native-il2cpp/` + `il2cpp-metadata/` | `libil2cpp.so` metadata chain — `global-metadata.dat` (FMN! v31, ChaCha20-variant) decryption, 48,642-class / 395,966-method dictionaries |
| `lua-bytecode/` + `lua-api/` | Modified Lua 5.3.6 bytecode (custom opcode mapping, 62-opcode table) and the 881-class Lua binding API reference |
| `gamedata/` | LData decode: heroes / equips / runes JSON, 74,152-field map (90.3% labeled), hero-skill map, flow census (17,777 files / 146 heroes / 0 errors) |
| `net-protocol/` | Match UDP: AES-256-GCM spec (MD5-derived nonce), LZW transport, TDR wire parser, TGCP session key chain, Fix32 position semantics |
| `crit-damage/` | Crit adjudication: 792-entry event registry, FixRandom chain, armor formula `raw*100/(armor+100)` |
| `dynamic-bridge/` + `t3-observation/` | Zygisk/PLT observation tooling and 6 adjudication sessions with event streams + pcaps |
| `wr-mod/` + `isa-islands/` | `libFEProj.so` patch generator (island-slot aware, XOR-0x30 writeback) and the 1,685-island catalog |
| `tools/` + `tests/` + `decoders/` | Python artifact-chain verifier, schema validators, shared parsers (VFS / EIFS / TDR / Lua res) |
| `audits/` | Independent verification data (2026-08-18) and remediation matrix (2026-08-09) |
| `howto/` | **How-to start here**: `HOWTO-REVERSE-ENGINEERING.md` — reproducible static-RE methodology (10 slices, exact offsets/commands/evidence), plus per-slice detail under `howto/slice-*.md` |

## How to reverse-engineer this build

For a step-by-step, evidence-grounded methodology (not just results), start with
[`HOWTO-REVERSE-ENGINEERING.md`](HOWTO-REVERSE-ENGINEERING.md) — how to decrypt
`global-metadata.dat`, decode the modified Lua bytecode, map the 881-class Lua
bindings, parse LData/flow files, decrypt match traffic, decode XOR-0x30 islands,
and reproduce the qemu runtime dump. Static methodology only.

## Key coordinates

- `libFEProj.so`: static VA == file offset (VA < 0x6a5ba94); runtime islands: 8-slot permutation `P=[6,2,4,5,3,7,0,1]` over 0x10000 slots from `X20=0x1167000`
- 881 dispatcher: runtime `0x1589ACC`; jump table `file[0x56BCB50+4i] ^ 0x30303030`
- Class name table: file `0x56BD000..0x56C0000`, XOR-0x30, case-ordered
- `NetCryptoSetKey`: `libLNet.so 0x9F640` (authoritative hook point)
- Match UDP anchor: `*.row-release-pub*.game.wr.pvp.net:10001`

Start with [`MANIFEST.md`](MANIFEST.md).
