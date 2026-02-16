import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/a2_il2cpp_surface.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
const sent = [];
const hooks = [];
const nativeCalls = [];
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
  toString: () => value,
  add: (size) => ptr(`${value}+${size}`),
  sub: () => ptr("stable-rva"),
  compare(other) {
    if (value === other.value) {
      return 0;
    }
    if (typeof other.value === "string" && other.value.startsWith(`${value}+`)) {
      return -1;
    }
    if (typeof value === "string" && value.startsWith(`${other.value}+`)) {
      return 1;
    }
    return value < other.value ? -1 : 1;
  },
  readByteArray: (count) => Uint8Array.from(Array.from({ length: Math.min(count, 256) }, (_, index) => index === 0 ? 0x46 : index === 1 ? 0x4d : index === 2 ? 0x4e : index === 3 ? 0x21 : index)),
});
const statValues = new Map([[0, "17"], [8, "19"], [48, "58401572"]]);
const statBuffer = {
  add(offset) {
    return { readU64: () => ({ toString: () => statValues.get(offset) ?? "0" }) };
  },
};
const metadataPath = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat";
const metadataHash = "a".repeat(64);
const metadataIdentity = { dev: "17", ino: "19", size: 58401572 };
const metadataBuffer = ptr("metadata-buffer");
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
  NativeFunction: function NativeFunction(address, returnType, argumentTypes) {
    return (...args) => {
      nativeCalls.push({ selector: address.name, returnType, argumentTypes, args });
      if (address.name === "fstat") {
        return 0;
      }
      return address.name === "il2cpp_init" ? ptr("domain-pointer") : undefined;
    };
  },
  Memory: {
    alloc: () => statBuffer,
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
    findModuleByName(name) { return name === "libil2cpp.so" ? il2cppModule : null; },
    findModuleByAddress(address) { return address.toString() === "return-address" ? il2cppModule : null; },
    enumerateRanges: () => [],
  },
  Thread: { backtrace: () => { backtraceCalls += 1; return [ptr("return-address")]; } },
  Backtracer: { ACCURATE: "accurate" },
  DebugSymbol: { fromAddress: () => ({ name: "consumer_candidate" }) },
  Interceptor: { attach(address, callbacks) { hooks.push({ name: address.name, callbacks }); } },
  Uint8Array,
  rpc: { set exports(value) { rpc = value; } },
  send(payload) { sent.push(payload); },
});

const fingerprint = {
  metadata_sha256: metadataHash,
  metadata_size: 58401572,
  header_hex: "464d4e21000000000000000000000000",
  window: { offset: 40, length: 64, hex: "bb".repeat(64) },
};
const plan = {
  ordered_libraries: [{ name: "libil2cpp.so", path: "/helper/libil2cpp.so", sha256: "b" }],
  input_provenance: { metadata: { path: metadataPath, sha256: metadataHash, identity: metadataIdentity } },
};

assert.deepEqual(rpc.armwatch(plan, fingerprint), { status: "armed", metadata_sha256: metadataHash });
assert.ok(hooks.some((hook) => hook.name === "stat"));
assert.ok(hooks.some((hook) => hook.name === "memcpy"));

const stat = hooks.find((hook) => hook.name === "stat").callbacks;
const statState = { context: {}, returnAddress: ptr("return-address") };
stat.onEnter.call(statState, [{ readUtf8String: () => metadataPath }, statBuffer]);
stat.onLeave.call(statState, int(0));
const statEvidence = sent.findLast((event) => event.event === "A3_FMN_STAT");
assert.deepEqual(statEvidence.identity, metadataIdentity);
assert.equal(statEvidence.caller.module, "libil2cpp.so");
assert.equal(statEvidence.caller.rva, "stable-rva");

const open = hooks.find((hook) => hook.name === "open").callbacks;
const openState = { context: {}, returnAddress: ptr("return-address") };
open.onEnter.call(openState, [{ readUtf8String: () => metadataPath }, int(0)]);
open.onLeave.call(openState, int(42));
assert.ok(nativeCalls.some((call) => call.selector === "fstat" && call.returnType === "int" && JSON.stringify(call.argumentTypes) === JSON.stringify(["int", "pointer"])));
const bound = sent.findLast((event) => event.event === "A3_FMN_BOUND");
assert.deepEqual(bound.identity, metadataIdentity);
assert.equal(bound.caller.module, "libil2cpp.so");
assert.equal(bound.caller.rva, "stable-rva");

const memcpy = hooks.find((hook) => hook.name === "memcpy").callbacks;
const unrelatedBacktraces = backtraceCalls;
const unrelatedCopy = { context: {}, returnAddress: ptr("return-address") };
memcpy.onEnter.call(unrelatedCopy, [ptr("unrelated-destination"), ptr("unrelated-source"), int(16)]);
memcpy.onLeave.call(unrelatedCopy, ptr("unrelated-destination"));
assert.equal(backtraceCalls, unrelatedBacktraces, "copy filtering must stay inactive before a bound metadata overlap");

const read = hooks.find((hook) => hook.name === "read").callbacks;
const readState = { context: {}, returnAddress: ptr("return-address") };
read.onEnter.call(readState, [int(42), metadataBuffer]);
read.onLeave.call(readState, int(64));
const readEvidence = sent.findLast((event) => event.event === "A3_FMN_READ");
assert.deepEqual(readEvidence.identity, metadataIdentity);
assert.equal(readEvidence.caller.module, "libil2cpp.so");
assert.equal(readEvidence.caller.rva, "stable-rva");
assert.equal(readEvidence.backtrace[0].module, "libil2cpp.so");

const mmap = hooks.find((hook) => hook.name === "mmap").callbacks;
const mmapState = { context: {}, returnAddress: ptr("return-address") };
mmap.onEnter.call(mmapState, [ptr("null"), int(4096), int(1), int(0), int(42), int(0)]);
mmap.onLeave.call(mmapState, ptr("metadata-map"));
const mmapEvidence = sent.findLast((event) => event.event === "A3_METADATA_MMAP");
assert.deepEqual(mmapEvidence.identity, metadataIdentity);
assert.equal(mmapEvidence.caller.module, "libil2cpp.so");
assert.equal(mmapEvidence.flags, 0);
assert.equal(mmapEvidence.offset, "0");

const copyState = { context: {}, returnAddress: ptr("return-address") };
memcpy.onEnter.call(copyState, [ptr("copy-destination"), metadataBuffer, int(64)]);
memcpy.onLeave.call(copyState, ptr("copy-destination"));
const copyEvidence = sent.findLast((event) => event.event === "A3_FMN_COPY");
assert.equal(copyEvidence.destination, "copy-destination");
assert.equal(copyEvidence.source_overlaps[0].kind, "read");
assert.equal(copyEvidence.caller.module, "libil2cpp.so");
assert.equal(copyEvidence.backtrace[0].rva, "stable-rva");

const initResult = rpc.init("LogicHarness");
assert.deepEqual(initResult, { selector: "il2cpp_init", status: "returned", domain_ptr: "domain-pointer" });
assert.ok(sent.some((event) => event.event === "A2_INIT_RETURN" && event.domain_ptr === "domain-pointer"));
