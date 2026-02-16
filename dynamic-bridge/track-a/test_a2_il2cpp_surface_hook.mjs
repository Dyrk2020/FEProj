import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/a2_il2cpp_surface.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
assert.equal(/0x[0-9a-f]+/i.test(source), false, "hook must not embed raw addresses");

const sent = [];
const hookCalls = [];
const loads = [];
const nativeCalls = [];
const exportedAddress = (name) => ({ name, toString: () => name });
const exports = new Map([
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
  ["il2cpp_set_data_dir", exportedAddress("il2cpp_set_data_dir")],
  ["il2cpp_init", exportedAddress("il2cpp_init")],
  ["il2cpp_set_temp_dir", exportedAddress("il2cpp_set_temp_dir")],
  ["il2cpp_set_commandline_arguments", exportedAddress("il2cpp_set_commandline_arguments")],
  ["il2cpp_set_commandline_arguments_utf16", exportedAddress("il2cpp_set_commandline_arguments_utf16")],
]);
let rpc;

const int = (value) => ({ toInt32: () => value, toString: () => String(value) });
const ptr = (value) => ({ toString: () => value });
const plain = (value) => JSON.parse(JSON.stringify(value));
const metadataPath = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat";
const metadataHash = "a".repeat(64);
const bufferBytes = Uint8Array.from([0x46, 0x4d, 0x4e, 0x21, ...Array(12).fill(0)]);
const buffer = {
  readByteArray: (count) => bufferBytes.slice(0, count),
  toString: () => "buffer-pointer",
};
const il2cppModule = {
  name: "libil2cpp.so",
  path: "/helper/libil2cpp.so",
  base: ptr("module-base"),
  size: 4096,
  findExportByName(name) { return exports.get(name) ?? null; },
};

vm.runInNewContext(source, {
  Array,
  Error,
  JSON,
  Map,
  Math,
  NativeFunction: function NativeFunction(address, returnType, argumentTypes) {
    return (...args) => {
      nativeCalls.push({ selector: address.name, returnType, argumentTypes, args });
      return address.name === "il2cpp_init" ? ptr("domain-pointer") : undefined;
    };
  },
  Memory: { allocUtf8String: (value) => ({ value, toString: () => value }) },
  Module: {
    load(path) {
      loads.push(path);
      return { name: path.split("/").at(-1), path, base: ptr("module-base"), size: 4096 };
    },
    findGlobalExportByName(name) {
      return exports.get(name) ?? null;
    },
  },
  Process: {
    arch: "arm64",
    pointerSize: 8,
    id: 4242,
    findModuleByName(name) { return name === "libil2cpp.so" ? il2cppModule : null; },
    enumerateRanges(protection) {
      assert.equal(protection, "rw-");
      return [
        { base: ptr("small"), size: 8, protection: "rw-", file: null },
        ...Array.from({ length: 4 }, (_, index) => ({ base: ptr(`large-${index}`), size: 60 * 1024 * 1024, protection: "rw-", file: null })),
      ];
    },
  },
  Interceptor: {
    attach(address, callbacks) { hookCalls.push({ name: address.name, callbacks }); },
  },
  Uint8Array,
  rpc: { set exports(value) { rpc = value; } },
  send(payload) { sent.push(payload); },
});

assert.deepEqual(hookCalls.map((call) => call.name), ["stat", "stat64", "open", "openat", "read", "pread64", "close", "mmap", "mmap64", "mprotect", "memcpy", "memmove"]);
assert.deepEqual(Object.keys(rpc).sort(), ["armwatch", "bindmetadata", "environment", "init", "loadgraph", "probeexports", "setdatadir", "sweepmemory"]);
assert.deepEqual(plain(rpc.environment()), { arch: "arm64", pointer_size: 8, pid: 4242 });
const directBinding = rpc.bindmetadata({ input_provenance: { metadata: { path: metadataPath, sha256: metadataHash, identity: { dev: "17", ino: "19", size: 58401572 } } } });
assert.deepEqual(plain(directBinding), { status: "bound", path: metadataPath, sha256: metadataHash });
assert.deepEqual(loads, []);

const graph = {
  ordered_libraries: [
    { name: "libLNet.so", path: "/helper/libLNet.so", sha256: "a" },
    { name: "libil2cpp.so", path: "/helper/libil2cpp.so", sha256: "b" },
  ],
  input_provenance: { metadata: { path: metadataPath, sha256: metadataHash, identity: { dev: "17", ino: "19", size: 58401572 } } },
};
const loadResult = rpc.loadgraph(JSON.stringify(graph));
assert.deepEqual(loads, ["/helper/libLNet.so", "/helper/libil2cpp.so"]);
assert.deepEqual(plain(loadResult.loaded), ["libLNet.so", "libil2cpp.so"]);
assert.ok(sent.some((event) => event.event === "A2_MODULE_LOAD" && event.library === "libil2cpp.so" && event.sha256 === "b" && event.status === "loaded"));
assert.ok(sent.some((event) => event.event === "A2_MODULE_MAP" && event.library === "libil2cpp.so" && event.base === "module-base"));
const anonymousSummary = sent.findLast((event) => event.event === "A2_ANON_RW_SUMMARY");
assert.equal(anonymousSummary.threshold_bytes, 58 * 1024 * 1024);
assert.equal(anonymousSummary.eligible_count, 4);
assert.equal(anonymousSummary.eligible_total_bytes, 4 * 60 * 1024 * 1024);
assert.equal(anonymousSummary.count, 3);
assert.equal(anonymousSummary.total_bytes, 3 * 60 * 1024 * 1024);
assert.equal(anonymousSummary.truncated, true);
assert.equal(anonymousSummary.mappings.length, 3);

exports.delete("il2cpp_init");
const probes = rpc.probeexports();
assert.deepEqual(plain(probes), [
  { selector: "il2cpp_set_data_dir", resolved: true },
  { selector: "il2cpp_init", resolved: false },
  { selector: "il2cpp_set_temp_dir", resolved: true },
  { selector: "il2cpp_set_commandline_arguments", resolved: true },
  { selector: "il2cpp_set_commandline_arguments_utf16", resolved: true },
]);
assert.ok(sent.some((event) => event.event === "A2_EXPORT" && event.selector === "il2cpp_set_data_dir" && event.library === "libil2cpp.so" && event.resolved));
assert.ok(sent.some((event) => event.event === "A2_EXPORT" && event.selector === "il2cpp_init" && event.library === "libil2cpp.so" && !event.resolved));

const setResult = rpc.setdatadir(metadataPath.replace("/global-metadata.dat", ""));
assert.deepEqual(plain(setResult), { selector: "il2cpp_set_data_dir", status: "called" });
assert.equal(nativeCalls[0].returnType, "void");
assert.deepEqual(plain(nativeCalls[0].argumentTypes), ["pointer"]);
assert.ok(sent.some((event) => event.event === "A2_SET_DATA_DIR" && event.data_dir === metadataPath.replace("/global-metadata.dat", "") && event.status === "called"));

exports.set("il2cpp_init", exportedAddress("il2cpp_init"));
const initResult = rpc.init("LogicHarness");
assert.deepEqual(plain(initResult), { selector: "il2cpp_init", status: "returned", domain_ptr: "domain-pointer" });
assert.deepEqual(plain(nativeCalls.slice(1).map(({ selector, returnType, argumentTypes, args }) => ({ selector, returnType, argumentTypes, args: args.map((arg) => arg.value) }))), [
  { selector: "il2cpp_init", returnType: "pointer", argumentTypes: ["pointer"], args: ["LogicHarness"] },
]);
assert.ok(sent.some((event) => event.event === "A2_INIT_RETURN" && event.domain_ptr === "domain-pointer"));

const openHook = hookCalls.find((call) => call.name === "open").callbacks;
const readHook = hookCalls.find((call) => call.name === "read").callbacks;
const closeHook = hookCalls.find((call) => call.name === "close").callbacks;
const openState = {};
openHook.onEnter.call(openState, [{ readUtf8String: () => metadataPath }, int(0)]);
openHook.onLeave.call(openState, int(42));
const readState = {};
readHook.onEnter.call(readState, [int(42), buffer]);
readHook.onLeave.call(readState, int(16));
const readEvidence = sent.findLast((event) => event.event === "A2_FMN_READ");
assert.deepEqual(plain(readEvidence.binding), {
  metadata_sha256: metadataHash,
  metadata_path: metadataPath,
  buffer_identity: "buffer-pointer",
  byte_count: 16,
  head16_hex: "464d4e21000000000000000000000000",
});

const beforeNonPositive = sent.filter((event) => event.event === "A2_FMN_READ").length;
const eofState = {};
readHook.onEnter.call(eofState, [int(42), buffer]);
readHook.onLeave.call(eofState, int(0));
const errorState = {};
readHook.onEnter.call(errorState, [int(42), buffer]);
readHook.onLeave.call(errorState, int(-1));
assert.equal(sent.filter((event) => event.event === "A2_FMN_READ").length, beforeNonPositive);
assert.equal(sent.filter((event) => event.event === "A2_IO_READ_NONPOSITIVE").length, 2);

const closeState = {};
closeHook.onEnter.call(closeState, [int(42)]);
closeHook.onLeave.call(closeState, int(-1));
const untrackedReuseRead = {};
readHook.onEnter.call(untrackedReuseRead, [int(42), buffer]);
readHook.onLeave.call(untrackedReuseRead, int(16));
assert.equal(sent.filter((event) => event.event === "A2_FMN_READ").length, beforeNonPositive);
const closeEvidence = sent.findLast((event) => event.event === "A2_IO_CLOSE");
assert.deepEqual(plain(closeEvidence), { event: "A2_IO_CLOSE", api: "close", path: metadataPath, fd: 42, result: -1 });
