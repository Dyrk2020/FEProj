import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/g1_spontaneous_observe.js", import.meta.url);
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
const testMainPath = "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/TestMain.res";
const header = Uint8Array.from([
  0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01, 0x19, 0x93,
  0x0d, 0x0a, 0x1a, 0x0a, 0x04, 0x04, 0x04, 0x08,
]);

function hookKey(address) {
  return address?.name ?? String(address);
}

let allocation = 0;
const Memory = {
  alloc(size) {
    allocation += 1;
    return {
      name: `0xbuffer${allocation}`,
      readByteArray: () => header.slice(0, 32),
      writeByteArray: () => {},
      toString: () => `0xbuf${allocation}`,
    };
  },
  allocUtf8String(value) {
    allocation += 1;
    return { name: `0xstr${allocation}`, readUtf8String: () => value, toString: () => `0xstr${allocation}` };
  },
  scanSync() {
    return [];
  },
};

const feprojModule = {
  name: "libFEProj.so",
  base: {
    toString: () => "0x70000000",
    add: (rva) => ({ name: `0x70000000+${rva}`, toString: () => `0x${(0x70000000 + rva).toString(16)}`, sub: () => ({ toString: () => `0x${rva.toString(16)}` }), compare: () => 0 }),
    sub: () => ({ toString: () => "0x1000" }),
    readPointer: () => ({ toString: () => "0x0", isNull: () => true }),
    readU32: () => 0,
  },
  size: 148742144,
  findExportByName(name) {
    return ["luaL_newstate", "luaL_loadbufferx", "lua_load", "luaL_loadfilex", "lua_pcallk"].includes(name)
      ? { name, toString: () => name }
      : null;
  },
};

const state = { toString: () => "0xstate", isNull: () => false };

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
        if (name === "lua_pcallk") {
          return invokeHook("lua_pcallk", args, int(0));
        }
        // internal anchors (validator D / check driver) return 0
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
  ptr: (value) => ({ toString: () => `0x${Number(value).toString(16)}` }),
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

const env = surface.environment();
assert.equal(env.arch, "arm64");
assert.equal(env.pointer_size, 8);
assert.equal(env.pid, 73);
assert.ok(sent.some((event) => event.event === "B2_OBSERVER_READY"));
surface.setbattlelogicpath(battlePath);
surface.settestmainpath(testMainPath);

feprojLoaded = true;
const loaded = surface.waitfeprojloaded(1000);
assert.equal(loaded.name, "libFEProj.so");
assert.ok(sent.some((event) => event.event === "B2_MODULE_LOAD"));
assert.ok(sent.some((event) => event.event === "B2_LUA_HOOK_ATTACH_READY"));

const probes = surface.probeluaexports();
const selectors = probes.map((entry) => entry.selector);
assert.equal(selectors.length, 5);
assert.equal(selectors[0], "luaL_newstate");
assert.equal(selectors[1], "luaL_loadbufferx");
assert.equal(selectors[2], "lua_load");
assert.equal(selectors[3], "luaL_loadfilex");
assert.equal(selectors[4], "lua_pcallk");
assert.ok(probes.every((entry) => entry.resolved));

// registry pre-read returns a snapshot with all five keys
const registry = surface.prereadregistry();
for (const key of ["g_ctx_0x726D0C8", "g_buf_0x726D0D0", "g_len_0x726D0D8", "ctx_cache_0x726DEA0", "state_0x726D0E0"]) {
  assert.ok(key in registry, `missing ${key}`);
}
assert.ok(sent.some((event) => event.event === "REGISTRY_PREREAD"));

// plan A2 (stamp-less blob) returns a return_code
const a2 = surface.plana2();
assert.ok("return_code" in a2);

// plan A1 skips when ctx cache is null (mock readPointer returns null)
const a1 = surface.plana1();
assert.equal(a1.skipped, true);

// plan B1 skips when state/g_buf null
const b1 = surface.planb1();
assert.equal(b1.skipped, true);

// U2 scan returns a matches array
const scan = surface.scanloadbufferstr();
assert.ok(Array.isArray(scan.matches));
assert.ok(sent.some((event) => event.event === "U2_SCAN"));

// internal anchors were attached (ANCHOR_ATTACH events emitted)
assert.ok(sent.some((event) => event.event === "ANCHOR_ATTACH"));

console.log("test_g1_spontaneous_observe.js: all assertions passed");
