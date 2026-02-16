import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/a2_il2cpp_surface.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
assert.equal(/0x[0-9a-f]+/i.test(source), false, "hook must not embed raw addresses");

const sent = [];
const hooks = [];
const scans = [];
const nativeCalls = [];
const exportedAddress = (name) => ({ name, toString: () => name });
const exported = new Map([
  ["stat", exportedAddress("stat")],
  ["stat64", exportedAddress("stat64")],
  ["fstat", exportedAddress("fstat")],
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
  ["il2cpp_set_data_dir", exportedAddress("il2cpp_set_data_dir")],
  ["il2cpp_init", exportedAddress("il2cpp_init")],
  ["il2cpp_set_temp_dir", exportedAddress("il2cpp_set_temp_dir")],
  ["il2cpp_set_commandline_arguments", exportedAddress("il2cpp_set_commandline_arguments")],
  ["il2cpp_set_commandline_arguments_utf16", exportedAddress("il2cpp_set_commandline_arguments_utf16")],
]);
let rpc;
let postArm = false;
let backtraceCalls = 0;

const int = (value) => ({ toInt32: () => value, toString: () => String(value) });
const ptr = (value) => ({
  value,
  toString: () => value,
  add: (size) => ptr(`${value}+${size}`),
  compare(other) {
    if (value === other.value) {
      return 0;
    }
    return typeof other.value === "string" && other.value.startsWith(`${value}+`) ? -1 : 1;
  },
  readByteArray: (count) => Uint8Array.from(Array.from({ length: Math.min(count, 256) }, (_, index) => index === 0 ? 0x46 : index === 1 ? 0x4d : index === 2 ? 0x4e : index === 3 ? 0x21 : index)),
});
const statValues = new Map([[0, "17"], [8, "19"], [48, "58401572"]]);
const statBuffer = { add: (offset) => ({ readU64: () => ({ toString: () => statValues.get(offset) ?? "0" }) }) };
const metadataPath = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat";
const metadataHash = "a".repeat(64);
const buffer = ptr("metadata-buffer");
const il2cppModule = {
  name: "libil2cpp.so",
  path: "/helper/libil2cpp.so",
  base: ptr("module-base"),
  size: 4096,
  findExportByName(name) { return exported.get(name) ?? null; },
};

function ranges(protection) {
  const baseline = { base: ptr(`baseline-${protection}`), size: 64, protection, file: null };
  const deltaSize = protection === "r-x" ? 136 * 1024 * 1024 : 64;
  const delta = { base: ptr(`delta-${protection}`), size: deltaSize, protection, file: null };
  return postArm ? [baseline, delta] : [baseline];
}

vm.runInNewContext(source, {
  Array,
  Error,
  JSON,
  Map,
  Math,
  NativeFunction: function NativeFunction(address, returnType, argumentTypes) {
    return (...args) => {
      nativeCalls.push({ selector: address.name, returnType, argumentTypes, args });
      return address.name === "fstat" ? 0 : undefined;
    };
  },
  Memory: {
    alloc: () => statBuffer,
    allocUtf8String: (value) => ({ value, toString: () => value }),
    scanSync(base, size, pattern) {
      scans.push({ base: base.toString(), size, pattern });
      return base.toString().startsWith("delta-") && pattern === "af 1b b1 fa"
        ? [{ address: ptr("raw-metadata-hit"), size: 4 }]
        : [];
    },
  },
  Module: {
    load(path) { return { name: path.split("/").at(-1), path, base: ptr("module-base"), size: 4096 }; },
    findGlobalExportByName(name) { return exported.get(name) ?? null; },
  },
  Process: {
    arch: "arm64",
    pointerSize: 8,
    id: 4242,
    findModuleByName(name) { return name === "libil2cpp.so" ? il2cppModule : null; },
    findModuleByAddress(address) { return address.toString() === "return-address" ? il2cppModule : null; },
    enumerateRanges: ranges,
  },
  Thread: { backtrace: () => { backtraceCalls += 1; return [ptr("return-address")]; } },
  Backtracer: { ACCURATE: "accurate" },
  DebugSymbol: { fromAddress: () => ({ name: "consumer_candidate" }) },
  Interceptor: { attach(address, callbacks) { hooks.push({ name: address.name, callbacks }); } },
  Uint8Array,
  rpc: { set exports(value) { rpc = value; } },
  send(payload) { sent.push(payload); },
});

assert.ok(Object.hasOwn(rpc, "armwatch"));
assert.ok(Object.hasOwn(rpc, "sweepmemory"));
const fingerprint = {
  metadata_sha256: metadataHash,
  metadata_size: 58401572,
  header_hex: "464d4e21000000000000000000000000",
  window: { offset: 40, length: 64, hex: "bb".repeat(64) },
};
const plan = { input_provenance: { metadata: { path: metadataPath, sha256: metadataHash, identity: { dev: "17", ino: "19", size: 58401572 } } }, ordered_libraries: [{ name: "libil2cpp.so", path: "/helper/libil2cpp.so", sha256: "b" }] };
const armed = rpc.armwatch(plan, fingerprint);
assert.equal(armed.status, "armed");
assert.equal(armed.metadata_sha256, metadataHash);
assert.ok(sent.some((event) => event.event === "A3_WATCH_ARMED" && event.metadata_sha256 === metadataHash));
postArm = true;
rpc.loadgraph(plan);
assert.ok(hooks.some((hook) => hook.name === "il2cpp_init"));

const open = hooks.find((hook) => hook.name === "open").callbacks;
const read = hooks.find((hook) => hook.name === "read").callbacks;
const mmap = hooks.find((hook) => hook.name === "mmap").callbacks;
const mprotect = hooks.find((hook) => hook.name === "mprotect").callbacks;
const unrelatedBacktraces = backtraceCalls;
const unrelatedOpenState = { context: {} };
open.onEnter.call(unrelatedOpenState, [{ readUtf8String: () => "/helper/irrelevant.bin" }, int(0)]);
open.onLeave.call(unrelatedOpenState, int(7));
const unrelatedReadState = { context: {} };
read.onEnter.call(unrelatedReadState, [int(7), ptr("irrelevant-buffer")]);
read.onLeave.call(unrelatedReadState, int(16));
const unrelatedMmapState = { context: {} };
mmap.onEnter.call(unrelatedMmapState, [ptr("null"), int(4096), int(1), int(0), int(7), int(0)]);
mmap.onLeave.call(unrelatedMmapState, ptr("irrelevant-map"));
const unrelatedMprotectState = { context: {} };
mprotect.onEnter.call(unrelatedMprotectState, [ptr("irrelevant-map"), int(4096), int(5)]);
mprotect.onLeave.call(unrelatedMprotectState, int(0));
assert.equal(backtraceCalls, unrelatedBacktraces, "A3 must not unwind unrelated I/O or mapping calls");
const openState = { context: {} };
open.onEnter.call(openState, [{ readUtf8String: () => metadataPath }, int(0)]);
open.onLeave.call(openState, int(42));
const readState = { context: {} };
read.onEnter.call(readState, [int(42), buffer]);
read.onLeave.call(readState, int(1024 * 1024));
const readEvidence = sent.findLast((event) => event.event === "A3_FMN_READ");
assert.equal(readEvidence.provenance.metadata_sha256, metadataHash);
assert.equal(readEvidence.byte_count, 1024 * 1024);
assert.equal(readEvidence.prefix_256_hex.startsWith("464d4e21"), true);
const caller = readEvidence.backtrace[0];
assert.equal(caller.address, "return-address");
assert.equal(caller.module, "libil2cpp.so");
assert.equal(caller.rva, "unknown");
assert.equal(caller.symbol, "consumer_candidate");
assert.ok(sent.some((event) => event.event === "A3_FMN_READ_TRIGGER" && event.trigger === "large_metadata_read"));
const metadataMprotectState = { context: {} };
mprotect.onEnter.call(metadataMprotectState, [buffer, int(4096), int(5)]);
mprotect.onLeave.call(metadataMprotectState, int(0));
const metadataMprotect = sent.findLast((event) => event.event === "A3_MPROTECT_RX");
assert.equal(metadataMprotect.metadata_backed, true);
assert.equal(metadataMprotect.address, "metadata-buffer");

const sweep = rpc.sweepmemory();
assert.equal(sweep.status, "swept");
assert.ok(scans.some((scan) => scan.pattern === "af 1b b1 fa"));
assert.ok(scans.some((scan) => scan.pattern === "af 1b b1 fa" && scan.size === 136 * 1024 * 1024), "A3 must scan a libil2cpp-sized readable delta");
const rawHit = sent.findLast((event) => event.event === "A3_MEMORY_HIT" && event.marker === "raw_metadata_magic");
assert.equal(rawHit.address, "raw-metadata-hit");
assert.equal(rawHit.map.base.startsWith("delta-"), true);
assert.equal(rawHit.metadata_sha256, metadataHash);
