import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/g1_resource_loader_observe.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
const sent = [];
const hooks = new Map();
let feprojLoaded = false;

const int = (value) => ({
  toInt32: () => value,
  toUInt32: () => value >>> 0,
  toString: () => String(value),
});
const battlePath = "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res";
const header = Uint8Array.from([
  0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01, 0x19, 0x93,
  0x0d, 0x0a, 0x1a, 0x0a, 0x04, 0x04, 0x04, 0x08,
  0x74, 0x65, 0x73, 0x74, 0x72, 0x65, 0x73, 0x6f,
  0x75, 0x72, 0x63, 0x65, 0x62, 0x6f, 0x64, 0x79,
]);

function hookKey(address) {
  return address?.name ?? String(address);
}

let allocation = 0;
const Memory = {
  alloc(size) {
    allocation += 1;
    return { name: `0xbuffer${allocation}`, readByteArray: () => header.slice(0, 32), toString: () => `0xbuf${allocation}` };
  },
  allocUtf8String(value) {
    allocation += 1;
    return { name: `0xstr${allocation}`, readUtf8String: () => value, toString: () => `0xstr${allocation}` };
  },
};

const feprojModule = {
  name: "libFEProj.so",
  base: { toString: () => "0x70000000", add: (n) => ({ toString: () => `0x700000${n.toString(16)}` }), compare: (o) => 0 },
  size: 148742144,
  findExportByName(name) {
    return ["luaL_newstate", "luaL_loadbufferx", "lua_load"].includes(name)
      ? { name, toString: () => name }
      : null;
  },
};

const state = { toString: () => "0xstate", isNull: () => false };
const invocationLike = {
  returnAddress: { toString: () => "0x70001000", compare: () => 0, sub: () => ({ toString: () => "0x1000" }) },
};

function invokeHook(name, args, result) {
  const callbacks = hooks.get(name);
  if (!callbacks) {
    return result;
  }
  const ctx = {};
  callbacks.onEnter?.call(ctx, args);
  callbacks.onLeave?.call(ctx, result);
  return result;
}

const context = {
  Array,
  Map,
  Date,
  Interceptor: {
    attach(address, callbacks) {
      hooks.set(hookKey(address), callbacks);
    },
  },
  Memory,
  Module: {
    findGlobalExportByName(name) {
      return ["open", "openat", "read", "pread64", "close"].includes(name)
        ? { name, toString: () => name }
        : null;
    },
    findExportByName() {
      return null;
    },
  },
  NativeFunction: class NativeFunctionMock {
    constructor(address) {
      const name = hookKey(address);
      return function nativeCalled(...args) {
        if (name === "open") {
          return invokeHook("open", args, int(5));
        }
        if (name === "read") {
          return invokeHook("read", args, int(1479));
        }
        if (name === "close") {
          return invokeHook("close", args, int(0));
        }
        if (name === "luaL_newstate") {
          return invokeHook("luaL_newstate", args, state);
        }
        if (name === "luaL_loadbufferx") {
          return invokeHook("luaL_loadbufferx", args, int(0));
        }
        return int(0);
      };
    }
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
  setInterval: () => {},
  Uint8Array,
  rpc: {},
  send(payload) {
    sent.push(payload);
  },
};

vm.runInNewContext(source, context);
const surface = context.rpc.exports;

assert.deepEqual(surface.environment(), { arch: "arm64", pointer_size: 8, pid: 73 });
assert.ok(sent.some((event) => event.event === "B2_OBSERVER_READY"));
surface.setbattlelogicpath(battlePath);

feprojLoaded = true;
const loaded = surface.waitfeprojloaded(1000);
assert.equal(loaded.name, "libFEProj.so");
assert.ok(sent.some((event) => event.event === "B2_MODULE_LOAD"));
assert.ok(sent.some((event) => event.event === "B2_LUA_HOOK_ATTACH_READY"));

const probes = surface.probeluaexports();
assert.ok(probes.every((entry) => entry.resolved));

const result = surface.runresource();
assert.equal(result.return_code, 0);
assert.ok(result.state === "0xstate");
assert.ok(sent.some((event) => event.event === "G1_RESOURCE_LOAD" && event.return_code === 0));
// runresource path records staged read + load bufferx through the same hooks.
assert.ok(sent.some((event) => event.event === "FETEST_READ" && event.nbytes === 1479));
assert.ok(sent.some((event) => event.event === "LUA_LOAD" && event.function === "luaL_loadbufferx"));
