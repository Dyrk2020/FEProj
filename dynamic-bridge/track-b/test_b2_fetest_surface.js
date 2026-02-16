import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/fetest_lua.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
const sent = [];
const hooks = new Map();
const header = Uint8Array.from([
  0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01, 0x19, 0x93,
  0x0d, 0x0a, 0x1a, 0x0a, 0x04, 0x04, 0x04, 0x08,
]);
const battlePath = "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res";
const feprojPath = "/data/user/0/dev.wildriftresearch.logicharness/files/dso/libFEProj.so";

function int(value) {
  return {
    toInt32: () => value,
    toUInt32: () => value >>> 0,
    toString: () => String(value),
    valueOf: () => value,
  };
}

function pointer(name, properties = {}) {
  return {
    name,
    isNull: () => name === "0" || name === "0x0",
    readUtf8String: () => properties.string ?? null,
    readByteArray: (count) => (properties.bytes ?? header).slice(0, count),
    toString: () => name,
    ...properties,
  };
}

const globalExports = new Map([
  ["open", pointer("open")],
  ["openat", pointer("openat")],
  ["read", pointer("read")],
  ["pread64", pointer("pread64")],
  ["close", pointer("close")],
  ["free", pointer("free")],
  ["realloc", pointer("realloc")],
  ["munmap", pointer("munmap")],
  ["malloc", pointer("malloc")],
  ["calloc", pointer("calloc")],
  ["chdir", pointer("chdir")],
]);
const luaExports = new Map([
  ["luaL_newstate", pointer("luaL_newstate")],
  ["luaL_loadbufferx", pointer("luaL_loadbufferx")],
  ["lua_load", pointer("lua_load")],
]);
let loaded = false;
const feprojModule = {
  name: "libFEProj.so",
  path: feprojPath,
  base: pointer("0x71000000"),
  size: 120283368,
  findExportByName(name) {
    return luaExports.get(name) ?? null;
  },
};

function hookKey(address) {
  return address.name ?? address.toString();
}

function invokeHook(name, args, invoke) {
  const callbacks = hooks.get(name);
  const context = {};
  callbacks?.onEnter?.call(context, args);
  const result = invoke();
  callbacks?.onLeave?.call(context, result);
  return result;
}

const state = pointer("0xstate");
let allocation = 0;
const Memory = {
  alloc(size) {
    allocation += 1;
    return pointer(`0xbuffer${allocation}`, { bytes: Uint8Array.from(header), size });
  },
  allocUtf8String(value) {
    return pointer(`0xstring${allocation += 1}`, { string: value });
  },
};

function NativeFunction(address) {
  const name = hookKey(address);
  if (name === "open") {
    return (path, flags) => invokeHook("open", [path, flags], () => int(43));
  }
  if (name === "read") {
    return (fd, buffer, size) => invokeHook("read", [fd, buffer, size], () => int(Number(size)));
  }
  if (name === "close") {
    return (fd) => invokeHook("close", [fd], () => int(0));
  }
  if (name === "chdir") {
    return (path) => invokeHook("chdir", [path], () => int(0));
  }
  if (name === "luaL_newstate") {
    return () => invokeHook("luaL_newstate", [], () => state);
  }
  if (name === "luaL_loadbufferx") {
    return (luaState, buffer, size, chunkName, mode) => invokeHook(
      "luaL_loadbufferx",
      [luaState, buffer, size, chunkName, mode],
      () => int(3),
    );
  }
  if (name === "lua_load") {
    return (luaState, reader, data, chunkName, mode) => invokeHook(
      "lua_load",
      [luaState, reader, data, chunkName, mode],
      () => {
        const readerHook = hooks.get(hookKey(reader));
        const sizeOut = {
          value: int(0),
          readU64() { return this.value; },
          writeU64(value) { this.value = int(Number(value)); },
        };
        const readOnce = () => {
          const readerContext = {};
          readerHook?.onEnter?.call(readerContext, [luaState, data, sizeOut]);
          const returned = reader.callback(luaState, data, sizeOut);
          readerHook?.onLeave?.call(readerContext, returned);
          return returned;
        };
        assert.equal(readOnce().isNull(), false, "lua reader must provide staged bytes first");
        assert.equal(readOnce().isNull(), true, "lua reader must finish with EOF");
        return int(0);
      },
    );
  }
  throw new Error(`unexpected NativeFunction ${name}`);
}

function NativeCallback(callback) {
  return pointer(`reader-${allocation += 1}`, { callback });
}

const context = {
  Array,
  Map,
  Math,
  Memory,
  Module: {
    findGlobalExportByName(name) {
      return globalExports.get(name) ?? (loaded ? luaExports.get(name) ?? null : null);
    },
    load(path) {
      assert.equal(path, feprojPath, "B2 must load the staged FEProj path only");
      loaded = true;
      return feprojModule;
    },
  },
  NativeCallback,
  NativeFunction,
  Interceptor: {
    attach(address, callbacks) {
      hooks.set(hookKey(address), callbacks);
    },
  },
  Process: {
    arch: "arm64",
    pointerSize: 8,
    id: 73,
    findModuleByName(name) {
      return loaded && name === "libFEProj.so" ? feprojModule : null;
    },
  },
  Uint8Array,
  ptr(value) {
    return pointer(String(value));
  },
  rpc: {},
  send(payload) {
    sent.push(payload);
  },
};

vm.runInNewContext(source, context);
assert.ok(context.rpc.exports, "B2 hook must expose an explicit RPC surface");
const surface = context.rpc.exports;
assert.deepEqual(surface.environment(), { arch: "arm64", pointer_size: 8, pid: 73 });

const plan = {
  ordered_libraries: [{
    name: "libFEProj.so",
    path: feprojPath,
    sha256: "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a",
  }],
  input_provenance: {
    battle_logic: {
      name: "BattleLogic.res",
      path: battlePath,
      sha256: "347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5",
      size: 1479,
      header_hex: "1b4c7561530119930d0a1a0a04040408",
    },
  },
};

assert.deepEqual(surface.loadgraph(plan), { loaded: ["libFEProj.so"] });
assert.deepEqual(
  sent.filter((event) => event.event.startsWith("B2_MODULE_LOAD") || event.event.startsWith("B2_LUA_HOOK_ATTACH")).map((event) => event.event),
  ["B2_MODULE_LOAD_BEGIN", "B2_MODULE_LOAD", "B2_LUA_HOOK_ATTACH_BEGIN", "B2_LUA_HOOK_ATTACH_READY"],
  "the forced-load boundary must distinguish module load from hook attachment",
);
const probes = surface.probeexports();
assert.deepEqual(probes.map((entry) => entry.selector), ["luaL_newstate", "luaL_loadbufferx", "lua_load"]);
assert.ok(probes.every((entry) => entry.resolved), "all white-listed Lua exports must resolve after FEProj load");
const result = surface.runfetest(plan);

assert.equal(result.direct_load.return_code, 3, "format failure must be retained as a real Lua return code");
assert.equal(result.direct_load.error_string, null, "unlisted error-string APIs must not be called");
assert.equal(result.direct_load.error_string_status, "not-in-export-abi-whitelist");
assert.equal(result.reader_load.return_code, 0);
assert.equal(result.input.size, 1479);
assert.ok(sent.some((event) => event.event === "B2_MODULE_LOAD" && event.library === "libFEProj.so"));
assert.ok(sent.some((event) => event.event === "B2_PATH_PRESSURE" && event.status === "called"));
assert.equal(sent.filter((event) => event.event === "B2_INPUT_READ").length, 2, "each Lua entry point must receive a separately provenance-bound read");
assert.ok(sent.some((event) => event.event === "B2_LUA_STATE" && event.state === "0xstate"));
assert.ok(sent.some((event) => event.event === "FETEST_OPEN" && event.path === battlePath));
assert.ok(sent.some((event) => event.event === "FETEST_READ" && event.path === battlePath && event.nbytes === 1479));
assert.ok(sent.some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "luaL_loadbufferx" &&
  event.path === battlePath &&
  event.return_code === 3 &&
  event.size === "1479"
));
assert.ok(sent.some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "lua_load" &&
  event.path === battlePath &&
  event.return_code === 0 &&
  event.reader_size === "1479"
));
assert.ok(sent.filter((event) => event.event === "FETEST_TOUCH").length >= 2, "both direct and reader paths must retain staged provenance");
assert.ok(!hooks.has("luaL_loadbuffer"), "B2 must not synthesize an absent Lua export");
