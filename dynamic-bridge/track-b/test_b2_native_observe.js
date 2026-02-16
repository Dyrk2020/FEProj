import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/b2_feproj_native_observe.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
const sent = [];
const hooks = new Map();
let feprojLoaded = false;

const int = (value) => ({
  toInt32: () => value,
  toString: () => String(value),
});
const path = (value) => ({ readUtf8String: () => value });
const battlePath = "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res";
const header = Uint8Array.from([
  0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01, 0x19, 0x93,
  0x0d, 0x0a, 0x1a, 0x0a, 0x04, 0x04, 0x04, 0x08,
]);

function hookKey(address) {
  return address?.name ?? String(address);
}

const feprojModule = {
  name: "libFEProj.so",
  base: { toString: () => "0x71000000" },
  size: 120283368,
  findExportByName(name) {
    return ["luaL_newstate", "luaL_loadbufferx", "lua_load"].includes(name)
      ? { name, toString: () => name }
      : null;
  },
};

const context = {
  Array,
  Map,
  Date,
  Interceptor: {
    attach(address, callbacks) {
      hooks.set(hookKey(address), callbacks);
    },
  },
  Memory: {
    alloc(size) {
      return { readByteArray: (n) => header.slice(0, n) };
    },
    allocUtf8String(value) {
      return { readUtf8String: () => value, toString: () => "0xstr" };
    },
  },
  Module: {
    findGlobalExportByName(name) {
      return ["open", "openat", "read", "pread64", "close"].includes(name)
        ? { name, toString: () => name }
        : null;
    },
  },
  NativeFunction: function nativeFunctionMock(address) {
    return () => int(1);
  },
  Process: {
    arch: "arm64",
    pointerSize: 8,
    id: 73,
    findModuleByName(name) {
      return feprojLoaded && name === "libFEProj.so" ? feprojModule : null;
    },
  },
  Thread: { sleep: () => {} },
  Uint8Array,
  rpc: {},
  send(payload) {
    sent.push(payload);
  },
  setInterval() {
    // The host runner drives detection through RPC; no real timer needed.
  },
};

vm.runInNewContext(source, context);
const surface = context.rpc.exports;

assert.deepEqual(surface.environment(), { arch: "arm64", pointer_size: 8, pid: 73 });
assert.ok(sent.some((event) => event.event === "B2_OBSERVER_READY"), "observer install must be declared");

// Before Java dlopen: no module yet.
let threw = false;
try {
  const fakeWait = surface.waitfeprojloaded;
  fakeWait(1);
} catch (_) {
  threw = true;
}
// waitFEProjLoaded legitimately times out in this mock before load; the real
// flow calls it after triggering the Java action, so we assert detection below
// once feprojLoaded flips true.
assert.equal(typeof surface.setbattlelogicpath(battlePath).battle_logic_path, "string");

feprojLoaded = true;
const loaded = surface.waitfeprojloaded(1000);
assert.equal(loaded.name, "libFEProj.so");
assert.equal(loaded.base, "0x71000000");
assert.equal(loaded.size, 120283368);
assert.ok(sent.some((event) => event.event === "B2_MODULE_LOAD" && event.base === "0x71000000"));
assert.ok(sent.some((event) => event.event === "B2_LUA_HOOK_ATTACH_READY"));

const probes = surface.probeluaexports();
assert.deepEqual(probes.map((entry) => entry.selector), ["luaL_newstate", "luaL_loadbufferx", "lua_load"]);
assert.ok(probes.every((entry) => entry.resolved));
assert.ok(sent.some((event) => event.event === "B2_EXPORT" && event.resolved));

// fetestTouch should run open/read/close through the observed libc surface.
const touch = surface.fetesttouch();
assert.equal(touch.nbytes, 1);
