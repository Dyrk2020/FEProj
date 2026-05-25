# Slice-10 Static Toolchain: Logic-Harness and QEMU Execution (S/E/H Evidence Paths)

> Static reverse-engineering methodology slice: logic-harness APK architecture (asset staging / embedded Frida Gadget 17.15.5 / canary hook) as a static analysis toolchain pattern, and qemu-aarch64 running the real libFEProj.so (runtime .text dump text_runtime.bin, Android linker/Bionic sysroot). Explicitly excluded: fingerprint spoofing, identity rotation, anti-detection/evasion, ban circumvention.

## Objective
1. How to execute a hash-locked corpus copy inside a separate UID with our own debuggable helper APK — without attaching the production client (com.riotgames.league.wildrift, non-debuggable, ro.debuggable=0, SELinux enforcing, run-as denied) — and observe I/O edges such as open/read with the embedded Frida Gadget (H-level evidence).
2. How to fully dlopen the real 120MB libFEProj.so on an x86_64 host with qemu-aarch64 (linux-user) plus a real-device bionic sysroot (E-level evidence), obtain the authoritative runtime-decrypted .text (text_runtime.bin), and call/inspect memory at arbitrary VAs.

Background: arm64 AVD cannot boot on an x86_64 host (P8 ENV-AVD-FAIL); the arm64 native dynamic surface is covered by two branches — qemu emulation (E) and helper APK (H); R (real client) level evidence is currently unavailable (project constraint: do not attach the production package).

## Key Coordinates
### Version axis (composite provenance key, must be carried together)
- package/build: 7.2.0.2460 / 7246064; resource 7.2.20.45 (old) → 7.2.55.126 (new baseline); ABI: arm64-v8a
- libFEProj.so: 120,283,368 B, sha256 5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a, NDK r16b stripped, VA==file offset (VA<0x6a5ba94)
- global-metadata.dat: 58,401,572 B, sha256 5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d
- BattleLogic.res: sha256 347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5

### libFEProj.so coordinates
- Runtime islands: 8-slot permutation P=[6,2,4,5,3,7,0,1] applied to 0x10000 slots, starting from X20=0x1167000; the fixed -0x10000 pattern holds only for 92/771 islands locally, not generalized
- DT_INIT=0x8d6a064 (CBC-XOR .data decryptor + XOR-0x30 island decryption); DT_INIT_ARRAY=0x6a6c000, DT_INIT_ARRAYSZ=49,056 B (~6,132 entries); RELACOUNT=707,125
- DT_NEEDED: libdl/liblog/libc/libm/libstdc++ (does not depend on the other four libraries)
- 8 anchors: 0x158853c, 0x157853c, 0x15a853c, 0x3ec41e8, 0x13d8460, 0x15dfcc8, 0x57a2d60, 0x1587190; R(v)=S(v−0x10000)^0x30; fixed_158853c execution slot=0x15a853c
- 881 dispatcher runtime 0x1589ACC; jump table file[0x56BCB50+4i]^0x30303030; luaU_undump 0x55C3B54; luaV_execute 0x55C6760

### text_runtime.bin (E-level authoritative view)
- Path feproj-clone/qemu-sim/dump/text_runtime.bin (same source as work/u16-semantics-20260812/QemuSim/dump/text_runtime.bin)
- 72,244,380 B (0x44E5C9C); sha256 271b02057be91cd542b9727c8da899f002d3318ec2fe9aee1278828a1dbc86c2 (md5 944e7154…)
- Index formula: index = VA − 0x1155190 (TEXT_VA=18174352); covers base+0x1155190..0x563AE2C; compared against static raw 4B at a time, 45,186,95x/18,061,095 words differ (=island region) → about 25% of .text is encrypted in-file, catalog decoding is unreliable, this dump is the only authoritative decoded view
- Derived: dd if=text_runtime.bin of=libFEProj-rttext.so bs=1M count=69 seek=$((0x1155190)) conv=notrunc → full-address decompilable view

### probe-dlopen constants (feproj-clone/qemu-sim/src/probe-dlopen.c)
- ANCHOR_SYM="AES_options", ANCHOR_VA=0x5492428 → bias = dlsym(anchor) − 0x5492428 (8,040 exported symbols)
- Example: dlopen OK base=0x7fb9f1806000 anchor@0x7fb9f6c98428; call 5492428 0 → rodata pointer; call 5425ed0 1 0x12345678 → 0
- call_va: args[0..7]→x0..x7, args[8]→x8 (IP0/hidden output pointer)

### logic-harness constants
- package dev.wildriftresearch.logicharness; debuggable=true; minSdk 26/targetSdk 36; Java 17; useLegacyPackaging=true (classic Gadget extraction path)
- Gadget: frida-gadget-17.15.5-android-arm64.so (sha256 68e1b202…1c48d68); config {"interaction":{"type":"listen","address":"127.0.0.1","port":27042,"on_port_conflict":"fail","on_load":"resume"}}
- Private directories: files/dso (5 ELFs), files/meta (canary.bin; Metadata/global-metadata.dat), files/fetest (Res/FETest/Logic/BattleLogic.res), files/dump, files/incoming (sidecar input)
- Intent: action=canary|stage|status|loadfeproj; gadget=true (--ez passes boolean; --es is treated as String and ignored)

## Method Steps
### A. Logic harness APK (H level) — build
```bash
cd product/logic-harness
# JDK 25 is incompatible with Gradle 8.13 (Unsupported class file major version 69), JDK 21 required
JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64 ANDROID_HOME=$ANDROID_HOME \
  ./gradlew :app:assembleDebug
# Artifact app/build/outputs/apk/debug/app-debug.apk (re-checked 2026-08-16 BUILD SUCCESSFUL; AGP 8.13.2 auto-installed android-36 + build-tools 35.0.0)
```

### B. Logic harness — install and canary
```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk
adb shell am start -n dev.wildriftresearch.logicharness/.MainActivity --es action canary
adb logcat -d -s WRLogicHarness    # expect CANARY_HEX= and CANARY_READ_HEX= to match (16 bytes)
# Frida canary hook (must match the toolchain):
adb forward tcp:27042 tcp:27042
$FRIDA_VENV/bin/frida -H 127.0.0.1:27042 -n Gadget -l hooks/canary/open_read_canary.js
# expect H0_OPEN files/meta/canary.bin fd=N / H0_READ head=<hex> to match logcat canary hex
```
- Gadget-mode launch (--ez passes boolean; --es is treated as String and ignored): `adb shell am start -n …/.MainActivity --ez gadget true --es action canary`
- A2 surface re-run: `pid=$(adb shell pidof dev.wildriftresearch.logicharness)` + `a2_host_runner.py --stage --load --set-data-dir --init --remote-gadget 127.0.0.1:27042 --attach-pid "$pid"`

### C. stage large ELF (not packed into APK)
```bash
pkg=dev.wildriftresearch.logicharness
adb shell "run-as $pkg mkdir -p files/incoming"
adb push <elf> /data/local/tmp/ && adb shell "run-as $pkg cp /data/local/tmp/<elf> files/incoming/"
adb shell am start -n $pkg/.MainActivity --es action stage   # StageAssets verifies hash and prints sha256=
```
- stage inputs (5 ELFs + global-metadata.dat + BattleLogic.res) must be compared against input-manifest.json anchors[].expected SHA-256 (fail-closed, hash_anchors.py expects all_ok:true); device-side post-copy re-verification (stream_dso_to_helper device-side sha256sum comparison must pass before mv)
- MainActivity layout: files/dso, files/meta, files/fetest, files/dump; action=canary writes 16 random bytes canary.bin and immediately reads it back (CANARY_HEX/CANARY_READ_HEX); action=stage calls StageAssets.stageFromSidecar; action=loadfeproj does a logged bisection of System.load(path) on files/dso/libFEProj.so (LOADFEPROJ_BEGIN/RETURNED); readStagedMetadata reads the first 16B of meta/Metadata/global-metadata.dat (FMN_READ_*); readStagedBattleLogic reads the first 16B of fetest/Res/FETest/Logic/BattleLogic.res (FETEST_READ_*)
- StageAssets canonical path: meta/Metadata/global-metadata.dat (old meta/global-metadata.dat and meta/il2cpp/... compatibility paths removed); fetest/Res/FETest/Logic/BattleLogic.res
- canary hook logic (open_read_canary.js): Interceptor.attach open/openat (openat: path=args[1]); when fd>=0 and path contains canary.bin and (flags&3)==0, record tracked[fd]; attach read, on a tracked fd read ≤16B, hex-encode and report H0_READ; use Module.findGlobalExportByName with fallback Module.findExportByName(null, name) for Frida 15.x/17.x compatibility; Gadget does not relay console → report via send()

### D. qemu-aarch64 + bionic sysroot (E level) — environment setup
1. Pull bionic libraries from a real device (SDK 35 / Android 15): /apex/com.android.runtime/lib64/bionic/* real files (libc.so 1,384,376 B, libdl.so 13,896 B, libm.so 232,808 B, liblog.so 69,216 B, libstdc++.so 22,936 B) + /apex/com.android.runtime/bin/linker64 (2,133,752 B) + libc++.so (1,083,168 B, liblog dependency, pulled after first dlopen reported libc++.so not found) + libbase.so + ld-android.so → compose sysroot/ (system/bin/linker64, system/lib64/*)
2. Toolchain: qemu-aarch64 11.0.1 (Debian); gdb-multiarch 17.2 (-g 12345 remote debugging); NDK r26d $ANDROID_HOME/ndk/26.3.11579264/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang
3. Smoke test: qemu-aarch64 -L sysroot ./src/hello → "hello from aarch64 bionic! sdk-getpid=…"; sin(1)=0.841470985, sqrtf(65535)=255.998 (libm floating point ✅); dlopen libm.so OK (libdl ✅); fopen /system/lib64/libc.so → 1384376 bytes (-L prefix mapping ✅). Only harmless warning: failed to find generated linker configuration from /linkerconfig/ld.config.txt (linker falls back to built-in default namespace)
4. Libraries and resources: xbin/libFEProj.so (byte-identical to corpus/native-elf/decompressed-arm64/libFEProj.so) + xbin/res/FETest/ (22 .res files)

### E. qemu — probe build and six-mode runs
```bash
NDK=$ANDROID_HOME/ndk/26.3.11579264
$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang -O2 -pie -o probe-dlopen probe-dlopen.c -ldl
# Six modes (cwd=qemu-sim):
qemu-aarch64 -L sysroot ./src/hello
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen probe
#   → dlopen OK base=0x… anchor@0x… (DT_INIT + ~6k init_array fully executed; >10 runs stable)
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen call 5492428 0
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen callframe 42e9bf4 …
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen callframe2 42e9bf4 8 6 1 4 0   # obj graph + frame
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen callfix 461f0a8   # u16→Fix32 demo (incl. runtime gating patch)
env FE_LIB=./xbin/libFEProj.so qemu-aarch64 -L sysroot ./src/probe-dlopen dump ./dump/text_runtime.bin 1155190 44e5c9c   # full runtime .text dump → dumped 72244380 bytes
# qemu+gdb single-step: qemu-aarch64 -g 12345 -L sysroot ./src/probe-dlopen call 1a5d400 1 0x41 (background) → gdb-multiarch target remote :12345 → break call_va → break *$x0 → continue (pc=0x7fd1eb87c400 = bias+0x1a5d400)
```
- Argument conventions: callframe2 <va-hex> <sample-idx> <nargs> <bufpos> <lenpos> <objpos> [fixed args...]; frame samples in src/frame_samples.h (10 frames: seq 0..6 + 4001/5000; SAMPLE8=seq4001 body 141B: 00 00 0f a1 02 00 09 0a 26 0c 06 b0 …); dump <outfile> <va-hex> <len-hex> copies len bytes from bias+va
- callfix demo details: build obj graph (+0x28 scale, +0x38/+0x48 base, +0xc0/+0xe0 inline vectors, +0x100 tree root, node+0x28 u32 output vector, record +0xa u16, +0x20 divisor), simulate runtime gating patch: mprotect page → write 0x52800020 (mov w0,#1) to bias+0x461f0dc → mprotect PROT_NONE then restore to force qemu-user TB invalidation → verify via memory word
- type=07 verification result: 0x42e9bf4(obj,payload,local,payload,len,0x2d) consumes 141B frame body → obj+0x64=1 (payload flag already set), obj+0x68=malloc copy, obj+0x70=0x8d(141), obj+0x74=0x2d(tag); payload copy is byte-identical to the frame body (msgseq=4001→00000fa1, constant 02 00, subtype=09 focus=0a, record region 26 0c 06 b0 03 02 01 02…)
- u16→Fix32: 0x461f210 ldrh w8,[x8,#0xa] → 0x461f284 mov w11,#0x2000 → bfi x11,x8,#0xe,#0x32 → mul ×scale (x9=[obj+0x28]) → add +base ([obj+0x38]) → asr #14; formula value = base + ((u16<<14)|0x2000)×scale>>14 = base + (u16+0.5)×scale; independent base/scale per axis; full-text bit-level scan 15000/7500/0.22888/0.11444/65535 all 0 hits (no floating-point scale constants)
- Also found 0x42e9dc8: dst[i] ^= key[i%keylen] XOR decoding loop (payload buffer +0x68 XORs with +0x8 buffer as repeating key)

### F. Evidence production and verification (P0–P7 static gates)
- P0 input freeze: recompute SHA-256; c0-input-manifest.json / c0-hash-verification.txt (incl. runtime four-piece set: runtime-text.bin sha256 271b0205… 72,244,380B; runtime-rodata.bin 0d8af247… 2,606,352B; runtime-tables.bin ff4b723a… 512B; runtime-state.bin 18feed64… 4096B)
- P1 ELF verification: c1_elf_verify.py (ELF64/little/AArch64/ET_DYN + PT_LOAD/PT_DYNAMIC + soname; cp→ELF lineage 5/5; CRC=unsupported recorded as-is, not counted as PASS)
- P3 Lua: python3 work/static-avd-execution-2026-08-09/pad-recheck-2026-08-10/pad_lua_static_driver.py → 22/22 parsed_ok + 22/22 exact_eof (exit 0; parser sha256 d16a6366…; driver sha256 823e3561…; PAD input pad1.apk sha256 7f50c1f6… 543,409,340 B)
- P5 cryptography: VFS 4/4 known vectors (LData LCSecurity v1.4.4, LVisi AES-256-CBC, strict PKCS#7); IFS HET/BET additive cross-consistent and byte-identical to existing decryption artifacts; piece key 13/13 + standalone ALL PASS; bzip2 block CRC 3/3; Region B (extent [0x142D9,0x8ACC9)=485,872 B entropy 7.9995 framing-only), IFS RSA, custom-alt bzip2, TGCP AES generalization = NOT_ESTABLISHED; decrypt/encrypt involution not assumed
- P6 metadata: FMN! magic + version 31 + 31 section pairs (header 256B); pairs 0–3 obfuscated values + decoded_static local; stringLiteral 57,115×8B full dataIndex contiguous 57,114/57,114; stringLiteralData sampled hit on ShopTips; pair[4]+ plaintext flat, no OOB; high-entropy region 0x70000..0xF45000 boundary-only — does not constitute a full parser/registration/consumer
- Every per-address evidence must include: binary_sha256 / source_path / coordinate{view,kind,value} / image_base / caller/callee / prologue_boundary / sample_sha256 (research.schema.json addressRecord; view enum raw_elf|xor_0x30|aes_decoded|runtime_remapped|head_cipher)

## Findings
### Evidence hierarchy table (S/E/H/R)
| Level | Meaning | Use cases |
|---|---|---|
| S (synthetic harness) | Self-built harness/probe runs | 881 binding registration, TestMain/QuickTest/BattleLogic rc=0, Lua execution, metadata header decryption unicorn verification |
| E (emulation/QEMU) | qemu-aarch64 + Android linker/Bionic sysroot | text_runtime.bin runtime view reconstruction, init chain verification |
| H (helper APK) | dev.wildriftresearch.logicharness + Frida | A1/A2/A3/A4/A4C1/B1 (A4C1 H1 fd alias PASS) |
| R (real Android client) | Inside the production package process | Currently none (project constraint: do not attach the production package) |

- Without R-level evidence, S/E/H results must not be written up as production-client behavior, authoritative server-side state, or real online-protocol facts
- evidence_level enum: OBSERVED / DERIVED / INFERENCE / NOT_ESTABLISHED / SUPERSEDED; environment records must include level/platform/toolchain/official_package_attached

### Static completion criteria (2026-08-10 report)
- C0 identity PASS, C1 container PASS, C2 syntax PASS (Lua 22/22 Basic + 22/22 PAD exact EOF; negative samples 7/7; Flow 10/10 exact EOF covering v0/v1/WorkFlow/NewFlows/twin; VFS 8/8; FFBA envelope/header 10/10 residual 2924–8069 B recorded as-is); C3–C8 NOT_ESTABLISHED
- P8 ENV-AVD-FAIL (OBSERVED): emulator 33.1.1 "PANIC: Avd's CPU Architecture 'arm64' is not supported by the QEMU2 emulator on x86_64 host"; emulator 37.1.11 "FATAL: …System image must match the host architecture"; consistent with 2026-08-05 ROUND-5 → arm64 native AVD route abandoned
- P9 NOT_ESTABLISHED, P10/P11 BLOCKED (device prerequisites missing); historical A4C1 (2026-07 physical device) evidence not merged into this round

### H-level milestones (historical, physical device)
- Stage 0–1: helper dev.wildriftresearch.oodleextractor in its own UID (10806, SELinux u:r:runas_app:s0) extracted 5 libraries via Oodle; device-side SHA-256 fully matched expected (libtdr 94c3b453…, libLNet 55c2879f…, libFEProj 5e608f2d…, libil2cpp 6e8e7002…, libunity 6dfbec92…); no INTERNET permission
- A4C1: H1 fd alias PASS — evidence chain A3_FMN_OPEN → A3_FMN_FD_ALIAS → A3_METADATA_MMAP (libil2cpp.so+0x400159c mmap callsite; open() return site 0x3bbf608 is runtime RVA); accepted runs only 20260716T224808.800307Z-734670d2 and 20260716T231033.454503Z-cd38a941; truncated=true, proof_scope=pre_truncation_prefix, dropped_events=575 retained; helper-side libjavacore A3_FMN_READ is non_qualifying_helper_side_read and does not gate PASS; official_package_attached=false
- B2 reached only B2_MODULE_LOAD_BEGIN; no Lua loader upgrade (B2 root-cause: Frida Module.load dlopen of the same library on the gum-js-loop thread SIGSEGV fault addr 0x0, SEGV_MAPERR)

### E-level milestones (qemu)
- Full dlopen of the 120MB libFEProj.so succeeded: DT_INIT=0x8d6a064 decrypts XOR-0x30 islands, ~6k init_array (49,056 B) fully executed, stable across >10 runs
- Runtime .text dump text_runtime.bin (72,244,380 B) is the authoritative decoded view (island-catalog.jsonl incomplete at 771 islands; StaticLocate full scan of 1,109 segments/4,387 pages still misses regions such as 0x1a5700c/0x42e9bf4; xor-pages graph does not cover 0x1a57000-0x1a57190)
- type=07 frame real execution, u16→Fix32 transform (instruction-level direct observation + StaticLocate/SemanticValidate dual reconciliation), and the 0x42e9dc8 XOR decoding loop all directly observed
- Not done: per-record parsing of 5B records → player list (0x1a56b14/0x42e9874) and the strong coupling to the runtime match object graph (global singleton, key-tree lookup, player predicate 0x1a7b948/0x1a72abc) — a bare dlopen cannot construct a legitimate context; qemu+gdb located crash points 0x461f32c/0x461f0d4
- qemu-user environment determinism: probe-runtimeview re-dumped island 27 byte-identical to historical dump (md5 4c13c1cb…)
- 881 registration 881/881 successful (qemu-user synthetic harness, S level); full 881 native class ABI not established

### qemu vs helper environment differences (track-b/qemu-vs-device-env-diff.md, fault attribution checklist)
- Same batch of SDK35 bionic files (device-pulled); differences are in the runtime host: qemu single-threaded/8MB stack/synthetic auxv (no AT_SECURE/AT_HWCAP, qemu-generated AT_RANDOM)/no SELinux/host /proc; device ≥26 threads (ART main/GC/JIT/Binder + gadget gum-js-loop), ~1MB thread stacks, real kernel auxv, SELinux untrusted_app (execute granted), Frida Gum interceptor on the dlopen path
- Ranking: ① dlopen call context (Frida Module.load on gum-js-loop vs native main) High; ② threads/TLS (constructors capturing pthread_self/TLS slots) High; ③ stack size Med; ④ auxv/getauxval and signals//proc Med; ⑤ linker namespace/filesystem Low–Med
- Device-side crash PC not recovered (crash_dump64 Bad address × 26 threads, tombstoned kDebuggerdAnyIntercept, no tombstone, Process.setExceptionHandler not triggered) → no attribution; H2≈row#3/#4 (warm thread/TLS/post-JNI load), H3≈row#1/#6 (Module.load→android_dlopen_ext)
- ELF metadata identical on both sides: DT_NEEDED five libraries (no libc++/Unity/other WR DSO), DT_INIT=0x8d6a064, DT_INIT_ARRAY 49,056B, RELACOUNT=707,125, no DF_GNU_HASH (HASH/SYMTAB only)

## Evidence Files
### feproj-clone (final archive, index in MANIFEST.md)
- qemu-sim/src/probe-dlopen.c — qemu probe source (six modes, ANCHOR_SYM/ANCHOR_VA 0x5492428)
- qemu-sim/src/hello.c — bionic smoke test
- qemu-sim/src/frame_samples.h — type=07 frame samples, 10 frames
- qemu-sim/dump/text_runtime.bin — 72,244,380 B runtime-decrypted .text (sha256 271b0205…)
- logic-harness/app/src/main/java/dev/wildriftresearch/logicharness/MainActivity.java — harness entry point (canary/stage/status/loadfeproj; gadget loading)
- logic-harness/app/src/main/java/dev/wildriftresearch/logicharness/StageAssets.java — hash-verified staging
- logic-harness/app/src/main/AndroidManifest.xml — debuggable=true; INTERNET only for gadget loopback
- logic-harness/app/src/main/jniLibs/arm64-v8a/libfrida-gadget.so + libfrida-gadget.config.so — Gadget 17.15.5 + listen config
- logic-harness/hooks/canary/open_read_canary.js — canary hook (open/openat/read, export lookup fallback compatible with 15.x/17.x)
- README.md / MANIFEST.md — evidence hierarchy table (S/E/H/R) + key coordinates
- tools/research_schema/research.schema.json — evidence contract (environmentLevel/addressRecord/dynamicProof)
- tools/aggressive_logic_bridge/hash_anchors.py — seven-anchor SHA-256 (all_ok expected)
- tools/aggressive_logic_bridge/load_graph.py — DT_NEEDED closure graph

### wild-rift-research (source workspace)
- reports/2026-08-09_static-avd-execution-plan.md — P0–P11 plan + S/E/H/R hierarchy + unified artifact requirements (gate record field list)
- reports/2026-08-10_wild-rift-7.2-static-avd-execution-report.md — execution report (P8 FAIL / P9 NOT_ESTABLISHED / P10-P11 BLOCKED)
- work/static-avd-execution-2026-08-09/gates/p8-avd-environment-gate.json — P8 verbatim PANIC/FATAL + environment fingerprint (emulator 33.1.1/37.1.11, AVD arm64-31/arm64-test, KVM)
- work/static-avd-execution-2026-08-09/gates/p9-p11-branch-status.json — branch status (H level)
- work/static-avd-execution-2026-08-09/gates/p7-static-boundary-report.md — C0/C1/C2 PASS boundary statement
- work/static-avd-execution-2026-08-09/gates/c0-hash-verification.txt — C0 hashes (runtime four-piece set)
- work/static-avd-execution-2026-08-09/external-inputs/runtime/runtime-text.bin — internalized runtime input (sha256 271b0205…)
- work/static-avd-execution-2026-08-09/pad-recheck-2026-08-10/p3-pad-verification.txt — P3 PAD re-verification (exact commands/parser-driver hashes/exit 0)
- work/u16-semantics-20260812/QemuSim/report.md — qemu milestone report (sysroot inventory/dlopen/type07/dump/Fix32/failure causes/confidence)
- work/u16-semantics-20260812/QemuSim/src/probe-dlopen.c + frame_samples.h + sysroot/ — source probe and sysroot
- work/game-logic-breakthrough-2026-07-12/nonroot-dynamic-strategy.md — non-root dynamic strategy decision (do not attach production package; rejected-path table)
- work/game-logic-breakthrough-2026-07-12/helper-stage0-1-verification.md — helper Stage 0–1 (five-library hash match table)
- work/aggressive-logic-bridge-2026-07-13/track-a/a2_host_runner.py — A2 runner (--stage/--load/--set-data-dir/--init/--remote-gadget/--attach-pid; --remote-gadget and --attach-pid must be used together)
- work/aggressive-logic-bridge-2026-07-13/track-a/a4c1-evidence.json + a4c1-review.md — A4C1 H1 evidence (17.15.5)
- work/aggressive-logic-bridge-2026-07-13/track-b/qemu-vs-device-env-diff.md — environment difference checklist
- work/aggressive-logic-bridge-2026-07-13/input-manifest.json — anchor list (generated by hash_anchors.py)
- work/2026-08-09-remediation/c4-dynamic/a4c1-review-v2.json + a4c1-review-v2.md — A4C1 v2 (fd lineage/truncation/dropped_events first-class fields)
- work/2026-08-09-remediation/final/verification.txt + change-inventory.txt — remediation final verification (137 passed etc.)
- work/ai-cfg-recovery-2026-08-04/docs/22-toolchain.md — NDK clang build command template
- work/ai-cfg-recovery-2026-08-04/testmain-trace.md — probe-trace deterministic reproduction (~10s/run; trace.log 2,700,662 lines)
- docs/build-and-test-env.md — build spec (JDK 21/AGP 8.13.2/embedded Gadget 17.15.5 usable path/fsrv SIGILL deprecated)
- docs/plans/2026-07-13-logic-harness-h0.md — H0 plan (manifest freeze/minimal APK/canary)
- product/logic-harness/README.md — harness command quick reference
- artifacts/2026-08-artifact-manifest.jsonl — E01..E09 artifact registration (probe binary hashes, runtime dump records)
- README.md (root) — remediation unified-narrative appendix (S/E/H/R table, provenance key, address coordinate system, superseded statistics)

## Reproduction Notes (gotchas/traps)
1. arm64 AVD is unusable on an x86_64 host: emulator 33.1.1/37.1.11 both PANIC/FATAL; do not take the AVD native route, use qemu-user (E) or a physical arm64 device (H) directly.
2. JDK 25 is incompatible with Gradle 8.13 (Unsupported class file major version 69): building logic-harness requires JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64; system gradle 4.4.1 is unusable, always use ./gradlew.
3. bionic libraries are apex symlinks: must pull the real files of /apex/com.android.runtime/lib64/bionic/*; liblog depends on libc++.so (pull after first dlopen reports libc++.so not found).
4. Gadget 17.15.5 frida-server SIGILLs on some devices: the device-side dynamic surface uses the embedded gadget (listen 127.0.0.1:27042); launch with --ez gadget true (boolean), --es is treated as String and ignored.
5. --remote-gadget must be paired with --attach-pid; cannot be mixed with --gadget; A3 provenance capture requires spawn mode, not embedded-gadget attach mode.
6. stage inputs are fail-closed on hash: 7 anchors (5 ELFs + global-metadata.dat + BattleLogic.res) rejected on mismatch; device-side post-copy re-verification (sha256sum must pass before mv).
7. text_runtime.bin index = VA − 0x1155190 (not VA); about 25% of .text is encrypted in-file, static catalog decoding is unreliable; this dump is the only authoritative view.
8. The -0x10000 transform holds only for 92/771 islands locally, not generalized; the 8-slot permutation [6,2,4,5,3,7,0,1] is the verified model.
9. Frida version hard-locked to 17.15.5 (host+gadget consistent; build_a4c1_evidence.py LOCKED_FRIDA_VERSION enforces); 17.8.x is historical diagnostics-only and does not participate in verdicts.
10. A4C1 evidence discipline: when truncated=true, proof_scope=pre_truncation_prefix, dropped_events retained as a first-class field; helper-side libjavacore read is non-qualifying and does not gate PASS; proof_sequence.index is the raw ordered-event index, not a compact sequence number.
11. A bare dlopen cannot construct a match context: consumer chains strongly coupled to the runtime object graph (5B records → player list) crash under qemu (0x461f32c/0x461f0d4); report boundaries only, do not attribute Gadget/loader crashes to FEProj instructions (no independent fault PC evidence).
12. decrypt/encrypt involution not assumed; TGCP AES not generalized to NIFS/VFS; Region B framing-only (extent/entropy).
13. Lua statistics kept separate: 22/22 Basic, 22/22 PAD, 6/22 require closure are distinct concepts; ROR(insn,29)&0x3f records only the opcode bitfield; the vanilla Lua parser serves only as format-0 control.
14. qemu warning is harmless: failed to find generated linker configuration from /linkerconfig/ld.config.txt → linker falls back to built-in default namespace, ignorable.
15. Parallel qemu-user instances OK (~3–10s/run); probes in the same round must be distinct binaries (probe-trace/probe-lua/probe-patcher each independent, do not clobber each other).
16. PAD re-verification does not cover the original gates/ snapshot: PAD 22 reads from pad1.apk (sha256 7f50c1f6… 543,409,340 B), matches the Basic 22 relative-path set (22/22).
17. Thread/stack difference: qemu main thread ~8MB stack; device worker threads ~1MB, deep-recursion constructors risk overflow — a candidate difference for qemu OK / device SIGSEGV, but device fault addr=0x0 fits the TLS/thread hypothesis better.
18. callfix's runtime gating patch needs an mprotect cycle to force qemu-user TB invalidation (PROT_NONE→RWX), otherwise the patch does not take effect; must verify the memory word after writing (0x52800020).
19. Large-file staging is not packed into the APK (200MB+ .so would blow up the APK); adb push to /data/local/tmp + run-as cp into files/incoming.
20. Address evidence must carry a view (raw_elf|xor_0x30|aes_decoded|runtime_remapped|head_cipher); bare addresses do not enter main conclusions.
