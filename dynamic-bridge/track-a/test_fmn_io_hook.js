import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/fmn_io.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
const sent = [];
const hooks = new Map();
const exported = new Set(["open", "openat", "read", "pread64", "mmap", "mmap64", "mprotect"]);

vm.runInNewContext(source, {
  Array,
  Map,
  Math,
  Module: {
    findGlobalExportByName(name) {
      return exported.has(name) ? { name, toString: () => name } : null;
    },
  },
  Interceptor: {
    attach(address, callbacks) {
      hooks.set(address.name, callbacks);
    },
  },
  Uint8Array,
  send(payload) {
    sent.push(payload);
  },
});

for (const name of exported) {
  assert.ok(hooks.has(name), `missing exported ${name} hook`);
}

const int = (value) => ({ toInt32: () => value, toString: () => String(value) });
const path = (value) => ({ readUtf8String: () => value });
const buffer = Uint8Array.from([0x46, 0x4d, 0x4e, 0x21, ...Array(12).fill(0)]);
const buf = { readByteArray: (count) => buffer.slice(0, count), toString: () => "0x1234" };
const metadataPath = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/il2cpp/Metadata/global-metadata.dat";

const openState = {};
hooks.get("open").onEnter.call(openState, [path(metadataPath), int(0)]);
hooks.get("open").onLeave.call(openState, int(42));
const readState = {};
hooks.get("read").onEnter.call(readState, [int(42), buf, int(16)]);
hooks.get("read").onLeave.call(readState, int(16));
const unmappedReadState = {};
hooks.get("read").onEnter.call(unmappedReadState, [int(99), buf, int(16)]);
hooks.get("read").onLeave.call(unmappedReadState, int(16));
const openatState = {};
hooks.get("openat").onEnter.call(openatState, [int(-100), path(metadataPath), int(0)]);
hooks.get("openat").onLeave.call(openatState, int(43));
const preadState = {};
hooks.get("pread64").onEnter.call(preadState, [int(43), buf, int(16), int(64)]);
hooks.get("pread64").onLeave.call(preadState, int(16));
const mmapState = {};
hooks.get("mmap").onEnter.call(mmapState, [int(0), int(4096), int(1), int(2), int(42), int(0)]);
hooks.get("mmap").onLeave.call(mmapState, { toString: () => "0x4000" });
const mmap64State = {};
hooks.get("mmap64").onEnter.call(mmap64State, [int(0), int(4096), int(1), int(2), int(43), int(0)]);
hooks.get("mmap64").onLeave.call(mmap64State, { toString: () => "0x5000" });
const protectState = {};
hooks.get("mprotect").onEnter.call(protectState, [{ toString: () => "0x4000" }, int(4096), int(1)]);
hooks.get("mprotect").onLeave.call(protectState, int(0));

assert.ok(sent.some((event) => event.event === "IO_OPEN" && event.path === metadataPath && event.fd === 42));
assert.ok(sent.some((event) => event.event === "IO_READ" && event.path === metadataPath && event.nbytes === 16 && event.head16_hex === "464d4e21000000000000000000000000"));
assert.ok(sent.some((event) => event.event === "IO_READ" && event.path === null && event.fd === 99 && event.nbytes === 16 && event.head16_hex === "464d4e21000000000000000000000000"));
assert.ok(sent.some((event) => event.event === "FMN_TOUCH" && event.priority === "high" && event.path === null && event.fd === 99 && event.byte_provenance?.trigger === "FMN! header" && event.byte_provenance?.head16_hex === "464d4e21000000000000000000000000"));
assert.ok(sent.some((event) => event.event === "IO_OPEN" && event.api === "openat" && event.path === metadataPath && event.flags === 0 && event.fd === 43));
assert.ok(sent.some((event) => event.event === "IO_READ" && event.api === "pread64" && event.path === metadataPath && event.fd === 43 && event.nbytes === 16 && event.offset === "64" && event.head16_hex === "464d4e21000000000000000000000000"));
assert.ok(sent.some((event) => event.event === "IO_MMAP" && event.fd === 42 && event.len === "4096" && event.prot === 1 && event.return_ptr === "0x4000"));
assert.ok(sent.some((event) => event.event === "IO_MPROTECT" && event.ptr === "0x4000" && event.len === "4096" && event.prot === 1));
assert.ok(sent.some((event) => event.event === "IO_MMAP" && event.api === "mmap64" && event.path === metadataPath && event.fd === 43 && event.len === "4096" && event.prot === 1 && event.return_ptr === "0x5000"));
assert.ok(sent.some((event) => event.event === "FMN_TOUCH" && event.priority === "high" && event.byte_provenance?.head16_hex === "464d4e21000000000000000000000000"));
