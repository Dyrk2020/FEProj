# wild-rift-re

Final-state reverse-engineering results for Wild Rift 7.2.0.2460 (build 7246064,
resource 7.2.55.126, arm64-v8a, package com.riotgames.league.wildrift).
Each directory is a result slice: decompiled code, decoded data, or tooling.
Facts only.

| Path | Contents |
|---|---|
| native-feproj/ | libFEProj.so (120,283,368 B, sha256 5e608f2d...) IDA/Ghidra decompiles: 5 anchors, registrar 0x158853C, dispatcher 0x1589ACC, luaV_execute 0x55C6760, castSkill/buff chains, damage core, RPN attr engine |
| native-il2cpp/ | libil2cpp.so metadata chain: 13 decompiled functions, ChaCha20 variant params, coordinate conversion tables |
| bindings-881/ | 881-class Lua binding table: dispatcher case map, template decompiles, 130-caller island analysis, loader chain (luaU_undump 0x55C3B54) |
| lua-bytecode/ | Modified Lua 5.3.6 format=1: opcode=ROR(w,29)&0x3f, 62-opcode table, 22 FETest + 25 battle script decompiles, new-format u16-swap spec, nested proto decoder |
| lua-api/ | 881/881 class API reference (C decompiles), global-name map, per-class JSON, dispatcher case TSV |
| il2cpp-metadata/ | global-metadata.dat (FMN! v31) decryption: header pairs 0-3 ChaCha20 variant, string pool + name table 256B XOR; 48,642-class / 395,966-method dictionaries; decrypted bins |
| gamedata/ | LData decode: heroes/equips/runes JSON, field map (74,152 fields, 90.3% labeled), skill/buff field annotation, hero-skill map (skillId=heroId*100+slot), hero flow census (17,777 files / 146 heroes / 428,267 nodes / 0 errors), flow node parser, buff unique + cost tables, flow block syntax |
| net-protocol/ | Match UDP: AES-256-GCM spec (nonce MD5-derived), LZW transport chain, TDR wire parser, TGCP session key chain, type=07 state sync, u16 position semantics (Fix32, 1875/16384 units per LSB), uplink ch=06, end-match report, semantic type map |
| crit-damage/ | Crit adjudication: 792-entry event registry (455 registrars), 31 crit candidates, closed-loop negation, isCrit write 0x1FDAF40, FixRandom chain, armor raw*100/(armor+100), Fix14 |
| case-models/ | 19 binding template factories + ~810 closures with native field offsets (case5 castSkill=+0x10) |
| logic-harness/ | Android helper app dev.wildriftresearch.logicharness: asset staging, embedded Frida Gadget 17.15.5, canary hook |
| t3-observation/ | In-process observation: t3zy Zygisk module (inline hook + ELF PLT scanner), t3plt PLT module, t3gadget, sentinel watchers, 6 adjudication sessions (S1 200,002 events; S2 permanent-ban forensics) with event streams + pcaps |
| dynamic-bridge/ | G1/G2 gate evidence: A1-A4C1 metadata lineage, B2 root-cause bisection (E0-E3), G1 loader/pcall edges, G2 registration/consumer observation, K2 A/B, crit-RNG hooks, 19 run dirs (attempt.json/events.jsonl/fault.txt/logcat) |
| qemu-sim/ | qemu-aarch64 execution of real libFEProj.so: runtime .text dump text_runtime.bin, probe sources |
| wr-mod/ | libFEProj.so patch generator + device apply/backup/rollback (island-slot aware, XOR-0x30 writeback) |
| isa-islands/ | XOR-0x30 island catalog (1,685 islands), xref edges (gz), runtime function inventory, remap table |
| container-audit/ | VFS header boundary audit (1,206 files), puffer_res.eifs classification |
| eifs-config/ | puffer_res.eifs HET/BET slice decode, file tables (puf/flc/cures), bet records, vfs keys |
| oodle-extractor/ | Offline Oodle decompressor app with 5 compressed _cp.so containers + host SHA-256 validator |
| audits/ | 2026-08-18 independent verification data, 2026-08-09 remediation matrix |
| tools/ | Python: artifact-chain verifier, feproj static parser, crypto validator, magic scanner, schema validator |
| tests/ | pytest suite for artifact-chain verifier |
| decoders/ | Shared parsers: lua_res_parse, fffba_parse, flow_parse, vfs_decrypt/parse, eifs_decrypt, tdr-metalib, type-field extractor |
| howto/ | Reproducible static-RE methodology guide (HOWTO-REVERSE-ENGINEERING.md): 10 slices — il2cpp metadata, Lua bytecode, 881 bindings, LData, net protocol, native FEProj/XOR-0x30 islands, crit/damage, flow/E2E, VFS/EIFS/Oodle, harness+qemu toolchain — with exact offsets, commands, evidence files, and gotchas. Static methodology only (no anti-detection/ban material). |

Key coordinates:
- libFEProj.so: static VA == file offset (VA < 0x6a5ba94); runtime islands: 8-slot permutation P=[6,2,4,5,3,7,0,1] over 0x10000 slots from X20=0x1167000
- 881 dispatcher: runtime 0x1589ACC; case stubs 0x1589AF4+12i; jump table file[0x56BCB50+4i]^0x30303030
- Class name table: file 0x56BD000..0x56C0000, XOR-0x30, case-ordered
- Event registry: hash map 0x82E72A8, 792 entries via 455 registrars
- NetCryptoSetKey: libLNet.so 0x9F640 (authoritative hook point)
- Match UDP anchor: *.row-release-pub*.game.wr.pvp.net:10001
