import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/a2_il2cpp_surface.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");

assert.equal(/0x[0-9a-f]+/i.test(source), false, "hook must not embed raw internal addresses");
assert.equal(/NativeFunction\([^\n]*3bbf608/i.test(source), false, "hook must not actively call the open return site");

const sent = [];
const hooks = [];
const nativeCalls = [];
const fstatCalls = new Map();
const fstatIdentities = new Map();
const exportedAddress = (name) => ({ name, toString: () => name });
const exported = new Map([
  ["stat", exportedAddress("stat")],
  ["stat64", exportedAddress("stat64")],
  ["open", exportedAddress("open")],
  ["openat", exportedAddress("openat")],
  ["read", exportedAddress("read")],
  ["pread64", exportedAddress("pread64")],
  ["close", exportedAddress("close")],
  ["mmap", exportedAddress("mmap")],
  ["mmap64", exportedAddress("mmap64")],
  ["mprotect", exportedAddress("mprotect")],
  ["memcpy", exportedAddress("memcpy")],
  ["memmove", exportedAddress("memmove")],
  ["dup", exportedAddress("dup")],
  ["dup2", exportedAddress("dup2")],
  ["fcntl", exportedAddress("fcntl")],
  ["fstat", exportedAddress("fstat")],
  ["il2cpp_set_data_dir", exportedAddress("il2cpp_set_data_dir")],
  ["il2cpp_init", exportedAddress("il2cpp_init")],
  ["il2cpp_set_temp_dir", exportedAddress("il2cpp_set_temp_dir")],
  ["il2cpp_set_commandline_arguments", exportedAddress("il2cpp_set_commandline_arguments")],
  ["il2cpp_set_commandline_arguments_utf16", exportedAddress("il2cpp_set_commandline_arguments_utf16")],
]);

const int = (value) => ({ toInt32: () => value, toString: () => String(value) });
const ptr = (value) => ({
  value,
  toString: () => String(value),
  add: (size) => ptr(`${value}+${size}`),
  sub: () => ptr("stable-rva"),
  equals: (other) => String(value) === String(other),
  compare(other) {
    const left = String(value);
    const right = String(other);
    if (left === right) {
      return 0;
    }
    if (right.startsWith(`${left}+`)) {
      return -1;
    }
    if (left.startsWith(`${right}+`)) {
      return 1;
    }
    return left < right ? -1 : 1;
  },
  readByteArray: (count) => Uint8Array.from(Array.from({ length: Math.min(count, 256) }, (_, index) => {
    if (index === 0) return 0x46;
    if (index === 1) return 0x4d;
    if (index === 2) return 0x4e;
    if (index === 3) return 0x21;
    return index & 0xff;
  })),
});

const metadataPath = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat";
const metadataHash = "a".repeat(64);
const lockedIdentity = { dev: "17", ino: "19", size: 58401572 };
const mismatchedIdentity = { dev: "17", ino: "20", size: 58401572 };
const il2cppModule = {
  name: "libil2cpp.so",
  path: "/helper/libil2cpp.so",
  base: ptr("module-base"),
  size: 4096,
  findExportByName(name) { return exported.get(name) ?? null; },
};
let rpc;
let backtraceCalls = 0;

vm.runInNewContext(source, {
  Array,
  Error,
  JSON,
  Map,
  Math,
  Number,
  RegExp,
  Set,
  String,
  Uint8Array,
  NativeFunction: function NativeFunction(address, returnType, argumentTypes) {
    return (...args) => {
      nativeCalls.push({ selector: address.name, returnType, argumentTypes, args });
      if (address.name === "fstat") {
        const fd = args[0];
        fstatCalls.set(fd, (fstatCalls.get(fd) ?? 0) + 1);
        args[1].identity = fstatIdentities.get(fd) ?? mismatchedIdentity;
        return 0;
      }
      return address.name === "il2cpp_init" ? ptr("domain-pointer") : undefined;
    };
  },
  Memory: {
    alloc: () => ({
      identity: null,
      add(offset) {
        return {
          readU64: () => ({
            toString: () => String(offset === 0 ? this.identity?.dev ?? 0 : offset === 8 ? this.identity?.ino ?? 0 : offset === 48 ? this.identity?.size ?? 0 : 0),
          }),
        };
      },
    }),
    allocUtf8String: (value) => ({ value, toString: () => value }),
  },
  Module: {
    load(path) { return { name: path.split("/").at(-1), path, base: ptr("module-base"), size: 4096 }; },
    findGlobalExportByName(name) { return exported.get(name) ?? null; },
  },
  Process: {
    arch: "arm64",
    pointerSize: 8,
    id: 4242,
    getCurrentThreadId: () => 73,
    findModuleByName(name) { return name === "libil2cpp.so" ? il2cppModule : null; },
    findModuleByAddress(address) { return String(address) === "metadata-return-site" ? il2cppModule : null; },
    enumerateRanges: () => [],
  },
  Thread: { backtrace: () => { backtraceCalls += 1; return [ptr("metadata-return-site")]; } },
  Backtracer: { ACCURATE: "accurate" },
  DebugSymbol: { fromAddress: () => ({ name: "metadata_data_plane" }) },
  Interceptor: { attach(address, callbacks) { hooks.push({ name: address.name, callbacks }); } },
  rpc: { set exports(value) { rpc = value; } },
  send(payload) { sent.push(payload); },
});

const fingerprint = {
  metadata_sha256: metadataHash,
  metadata_size: lockedIdentity.size,
  header_hex: "464d4e21000000000000000000000000",
  window: { offset: 40, length: 64, hex: "bb".repeat(64) },
};
const plan = {
  ordered_libraries: [{ name: "libil2cpp.so", path: "/helper/libil2cpp.so", sha256: "b" }],
  input_provenance: { metadata: { path: metadataPath, sha256: metadataHash, identity: lockedIdentity } },
};

const plain = (value) => JSON.parse(JSON.stringify(value));
const hookFor = (name) => {
  const hook = hooks.find((candidate) => candidate.name === name);
  assert.ok(hook, `${name} hook must be registered`);
  return hook.callbacks;
};
const invoke = (callbacks, args, retval) => {
  const state = { context: {}, returnAddress: ptr("metadata-return-site") };
  callbacks.onEnter.call(state, args);
  callbacks.onLeave.call(state, retval);
};
const events = (name) => sent.filter((event) => event.event === name);
const last = (name) => events(name).at(-1);

assert.deepEqual(plain(rpc.armwatch(plan, fingerprint)), { status: "armed", metadata_sha256: metadataHash });

const open = hookFor("open");
const dup = hookFor("dup");
const dup2 = hookFor("dup2");
const fcntl = hookFor("fcntl");
const read = hookFor("read");
const pread64 = hookFor("pread64");
const mmap = hookFor("mmap");
const close = hookFor("close");

fstatIdentities.set(42, lockedIdentity);
invoke(open, [{ readUtf8String: () => metadataPath }, int(0)], int(42));
assert.equal(last("A3_FMN_BOUND").fd, 42);

invoke(dup, [int(42)], int(43));
const dupAlias = last("A3_FMN_FD_ALIAS");
assert.equal(dupAlias.api, "dup");
assert.equal(dupAlias.source_fd, 42);
assert.equal(dupAlias.target_fd, 43);
assert.deepEqual(plain(dupAlias.identity), lockedIdentity);
invoke(read, [int(43), ptr("dup-buffer"), int(64)], int(64));
assert.equal(last("A3_FMN_READ").binding_source, "alias");
assert.equal(last("A3_FMN_READ").thread_id, 73);

invoke(dup2, [int(42), int(44)], int(44));
const dup2Alias = last("A3_FMN_FD_ALIAS");
assert.equal(dup2Alias.api, "dup2");
assert.equal(dup2Alias.source_fd, 42);
assert.equal(dup2Alias.target_fd, 44);
invoke(read, [int(44), ptr("dup2-buffer"), int(64)], int(64));
assert.equal(last("A3_FMN_READ").binding_source, "alias");

invoke(fcntl, [int(42), int(0), int(100)], int(45));
const dupfdAlias = last("A3_FMN_FD_ALIAS");
assert.equal(dupfdAlias.api, "fcntl:F_DUPFD");
assert.equal(dupfdAlias.target_fd, 45);
invoke(pread64, [int(45), ptr("dupfd-buffer"), int(64), int(8192)], int(64));
assert.equal(last("A3_FMN_READ").binding_source, "alias");
assert.equal(last("A3_FMN_READ").offset, "8192");

invoke(fcntl, [int(42), int(1030), int(100)], int(46));
const cloexecAlias = last("A3_FMN_FD_ALIAS");
assert.equal(cloexecAlias.api, "fcntl:F_DUPFD_CLOEXEC");
assert.equal(cloexecAlias.target_fd, 46);
invoke(read, [int(46), ptr("cloexec-buffer"), int(64)], int(64));
assert.equal(last("A3_FMN_READ").binding_source, "alias");

fstatIdentities.set(50, lockedIdentity);
invoke(read, [int(50), ptr("rebound-read-buffer"), int(64)], int(64));
const readRebind = last("A3_FMN_FD_REBOUND");
assert.equal(readRebind.api, "read");
assert.equal(readRebind.fd, 50);
assert.deepEqual(plain(readRebind.identity), lockedIdentity);
assert.equal(last("A3_FMN_READ").binding_source, "fstat_rebind");

fstatIdentities.set(51, lockedIdentity);
invoke(pread64, [int(51), ptr("rebound-pread-buffer"), int(64), int(16384)], int(64));
assert.equal(last("A3_FMN_FD_REBOUND").api, "pread64");
assert.equal(last("A3_FMN_READ").binding_source, "fstat_rebind");
assert.equal(last("A3_FMN_READ").offset, "16384");

fstatIdentities.set(52, lockedIdentity);
const mmapArgs = [ptr("null"), int(4096), int(1), int(2), int(52), int(24576)];
const mmapState = { context: {}, returnAddress: ptr("metadata-return-site") };
const mapFstatsBefore = fstatCalls.get(52) ?? 0;
mmap.onEnter.call(mmapState, mmapArgs);
assert.equal(fstatCalls.get(52) ?? 0, mapFstatsBefore, "mmap must defer fstat fallback until the mapping has returned");
mmap.onLeave.call(mmapState, ptr("rebound-map"));
const mapRebind = last("A3_FMN_FD_REBOUND");
const mapEvidence = last("A3_METADATA_MMAP");
assert.equal(mapRebind.api, "mmap");
assert.equal(mapEvidence.binding_source, "fstat_rebind");
assert.equal(mapEvidence.flags, 2);
assert.equal(mapEvidence.offset, "24576");
assert.equal(mapEvidence.thread_id, 73);
assert.equal(mapEvidence.prefix_256_hex.startsWith("464d4e21"), true);

fstatIdentities.set(53, lockedIdentity);
const mappingsBeforeFailedMmap = events("A3_METADATA_MMAP").length;
const failedMmapFstatsBefore = fstatCalls.get(53) ?? 0;
const failedMmapReboundsBefore = events("A3_FMN_FD_REBOUND").length;
const failedMmapBacktracesBefore = backtraceCalls;
const failedMmapState = { context: {}, returnAddress: ptr("metadata-return-site") };
mmap.onEnter.call(failedMmapState, [ptr("null"), int(4096), int(1), int(2), int(53), int(0)]);
assert.equal(fstatCalls.get(53) ?? 0, failedMmapFstatsBefore, "MAP_FAILED fallback must remain deferred until leave");
mmap.onLeave.call(failedMmapState, ptr(-1));
assert.equal(events("A3_METADATA_MMAP").length, mappingsBeforeFailedMmap, "MAP_FAILED must not register a metadata mapping");
assert.equal(fstatCalls.get(53) ?? 0, failedMmapFstatsBefore, "MAP_FAILED must not fstat an unknown fd");
assert.equal(events("A3_FMN_FD_REBOUND").length, failedMmapReboundsBefore, "MAP_FAILED must not emit a rebound");
assert.equal(backtraceCalls, failedMmapBacktracesBefore, "MAP_FAILED must not unwind");

fstatIdentities.set(54, lockedIdentity);
const anonymousMappingsBefore = events("A3_METADATA_MMAP").length;
const anonymousFstatsBefore = fstatCalls.get(54) ?? 0;
const anonymousReboundsBefore = events("A3_FMN_FD_REBOUND").length;
const anonymousBacktracesBefore = backtraceCalls;
invoke(mmap, [ptr("null"), int(4096), int(1), int(0x20), int(54), int(0)], ptr("anonymous-unknown-map"));
invoke(mmap, [ptr("null"), int(4096), int(1), int(0x20), int(42), int(0)], ptr("anonymous-known-map"));
assert.equal(events("A3_METADATA_MMAP").length, anonymousMappingsBefore, "MAP_ANONYMOUS must not register a metadata mapping");
assert.equal(fstatCalls.get(54) ?? 0, anonymousFstatsBefore, "MAP_ANONYMOUS must not fstat an unknown fd");
assert.equal(events("A3_FMN_FD_REBOUND").length, anonymousReboundsBefore, "MAP_ANONYMOUS must not emit a rebound");
assert.equal(backtraceCalls, anonymousBacktracesBefore, "MAP_ANONYMOUS must not unwind");

const reusedFdMappingsBefore = events("A3_METADATA_MMAP").length;
const reusedFdMmapState = { context: {}, returnAddress: ptr("metadata-return-site") };
mmap.onEnter.call(reusedFdMmapState, [ptr("null"), int(4096), int(1), int(2), int(55), int(0)]);
fstatIdentities.set(55, lockedIdentity);
invoke(close, [int(55)], int(0));
invoke(open, [{ readUtf8String: () => metadataPath }, int(0)], int(55));
const reusedFdFstatsAfterReopen = fstatCalls.get(55) ?? 0;
const reusedFdBacktracesAfterReopen = backtraceCalls;
mmap.onLeave.call(reusedFdMmapState, ptr("stale-fd-map"));
assert.equal(events("A3_METADATA_MMAP").length, reusedFdMappingsBefore, "a reused fd must not rebind an in-flight mmap");
assert.equal(fstatCalls.get(55) ?? 0, reusedFdFstatsAfterReopen, "a reused fd must not trigger stale mmap fallback");
assert.equal(backtraceCalls, reusedFdBacktracesAfterReopen, "a reused fd must not unwind the stale mmap");

fstatIdentities.set(59, mismatchedIdentity);
invoke(open, [{ readUtf8String: () => metadataPath }, int(0)], int(59));
assert.equal(fstatCalls.get(59), 1, "rejected canonical open must perform one fstat");
invoke(read, [int(59), ptr("rejected-open-buffer"), int(64)], int(64));
invoke(read, [int(59), ptr("rejected-open-buffer"), int(64)], int(64));
assert.equal(fstatCalls.get(59), 1, "rejected canonical open must seed the negative cache until close");
invoke(close, [int(59)], int(0));
fstatIdentities.set(59, lockedIdentity);
invoke(read, [int(59), ptr("reused-rejected-open-buffer"), int(64)], int(64));
assert.equal(fstatCalls.get(59), 2, "close must clear a rejected-open negative cache entry");
assert.equal(last("A3_FMN_READ").binding_source, "fstat_rebind");

fstatIdentities.set(60, mismatchedIdentity);
const metadataEventCountBeforeMismatch = sent.filter((event) => String(event.event).startsWith("A3_FMN_") || event.event === "A3_METADATA_MMAP").length;
const backtracesBeforeMismatch = backtraceCalls;
invoke(read, [int(60), ptr("mismatch-buffer"), int(64)], int(64));
invoke(read, [int(60), ptr("mismatch-buffer"), int(64)], int(64));
assert.equal(sent.filter((event) => String(event.event).startsWith("A3_FMN_") || event.event === "A3_METADATA_MMAP").length, metadataEventCountBeforeMismatch, "identity mismatch must not emit metadata evidence");
assert.equal(fstatCalls.get(60), 1, "negative fstat result must be cached until close");
assert.equal(backtraceCalls, backtracesBeforeMismatch, "unrelated or rejected descriptors must not unwind");

invoke(close, [int(60)], int(0));
fstatIdentities.set(60, lockedIdentity);
invoke(read, [int(60), ptr("reused-fd-buffer"), int(64)], int(64));
assert.equal(fstatCalls.get(60), 2, "close must clear the negative fstat cache before descriptor reuse");
assert.equal(last("A3_FMN_READ").binding_source, "fstat_rebind");

const unrelatedBacktraces = backtraceCalls;
fstatIdentities.set(61, mismatchedIdentity);
invoke(pread64, [int(61), ptr("unrelated-pread-buffer"), int(64), int(0)], int(64));
invoke(mmap, [ptr("null"), int(4096), int(1), int(0), int(61), int(0)], ptr("unrelated-map"));
assert.equal(backtraceCalls, unrelatedBacktraces, "new fd resolution must not backtrace unrelated I/O");

assert.ok(nativeCalls.some((call) => call.selector === "fstat" && call.returnType === "int" && JSON.stringify(call.argumentTypes) === JSON.stringify(["int", "pointer"])), "fallback must use fstat identity");

console.log("A4C1 fd-lineage hook contract passed");
