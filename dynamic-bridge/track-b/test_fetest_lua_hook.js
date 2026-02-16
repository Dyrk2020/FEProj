import assert from "node:assert/strict";
import fs from "node:fs";
import vm from "node:vm";

const hookPath = new URL("./hooks/fetest_lua.js", import.meta.url);
const source = fs.readFileSync(hookPath, "utf8");
const sent = [];
const hooks = new Map();
const exported = new Set([
  "open",
  "openat",
  "read",
  "pread64",
  "close",
  "free",
  "realloc",
  "munmap",
  "malloc",
  "calloc",
  "lua_load",
  "luaL_loadbufferx",
]);

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
  Process: { pointerSize: 8 },
  send(payload) {
    sent.push(payload);
  },
});

for (const name of exported) {
  assert.ok(hooks.has(name), `missing exported ${name} hook`);
}
assert.ok(!hooks.has("luaL_loadbuffer"), "must not attach absent Lua export");

const int = (value) => ({
  toInt32: () => value,
  toString: () => String(value),
});
const path = (value) => ({ readUtf8String: () => value });
const header = Uint8Array.from([
  0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01, 0x19, 0x93,
  0x0d, 0x0a, 0x1a, 0x0a, 0x04, 0x04, 0x04, 0x08,
  0x99,
]);
const buffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0x1234",
};
const untrackedLuaBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0x9999",
};
const unrelatedBuffer = {
  readByteArray: (count) => Uint8Array.from(Array(count).fill(0)),
  toString: () => "0x5678",
};
const battlePath = "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res";
const sameAddressReuseBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xcafe",
};
const lifecycleBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xcafe",
};
const offsetBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xcb0",
};
const sameOffsetReuseBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xcb0",
};
const oneShotBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xbeef",
};
const closeReuseBuffer = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xf00d",
};
const reader = { name: "reader", toString: () => "0xreader" };
const uint64 = (value) => ({ toUInt32: () => Number(value) >>> 0, toString: () => String(value) });
const readerSizePointer = {
  value: uint64(0),
  readU64() {
    return this.value;
  },
};

const openBattle = {};
hooks.get("open").onEnter.call(openBattle, [path(battlePath), int(0)]);
hooks.get("open").onLeave.call(openBattle, int(42));
const readBattle = {};
hooks.get("read").onEnter.call(readBattle, [int(42), buffer, int(17)]);
hooks.get("read").onLeave.call(readBattle, int(17));

const reuseFd = {};
hooks.get("open").onEnter.call(reuseFd, [path("/data/user/0/dev.wildriftresearch.logicharness/files/meta/canary.bin"), int(0)]);
hooks.get("open").onLeave.call(reuseFd, int(42));
const readReusedFd = {};
hooks.get("read").onEnter.call(readReusedFd, [int(42), unrelatedBuffer, int(17)]);
hooks.get("read").onLeave.call(readReusedFd, int(17));
const untrackedHeaderReadStart = sent.length;
const readUntrackedHeader = {};
hooks.get("read").onEnter.call(readUntrackedHeader, [int(99), buffer, int(17)]);
hooks.get("read").onLeave.call(readUntrackedHeader, int(17));
assert.ok(
  !sent.slice(untrackedHeaderReadStart).some((event) => event.event.startsWith("FETEST_")),
  "an untracked Lua header must not be labeled FETEST",
);
const staleBufferLoaderStart = sent.length;
const staleBufferLuaLoadBufferx = {};
hooks.get("luaL_loadbufferx").onEnter.call(staleBufferLuaLoadBufferx, [
  int(0), buffer, int(17), path("@stale-untracked.res"), path("b"),
]);
hooks.get("luaL_loadbufferx").onLeave.call(staleBufferLuaLoadBufferx, int(0));
assert.ok(
  !sent.slice(staleBufferLoaderStart).some((event) => event.event === "FETEST_TOUCH"),
  "an overwritten direct Lua buffer must not retain FETest provenance",
);
assert.ok(sent.slice(staleBufferLoaderStart).some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "luaL_loadbufferx" &&
  event.chunk_name === "@stale-untracked.res" &&
  event.byte_provenance?.buffer === "0x1234"
));
const reopenBattle = {};
hooks.get("open").onEnter.call(reopenBattle, [path(battlePath), int(0)]);
hooks.get("open").onLeave.call(reopenBattle, int(43));
const rereadBattle = {};
hooks.get("read").onEnter.call(rereadBattle, [int(43), buffer, int(17)]);
hooks.get("read").onLeave.call(rereadBattle, int(17));
const untrackedLoaderStart = sent.length;
const untrackedLuaLoadBufferx = {};
hooks.get("luaL_loadbufferx").onEnter.call(untrackedLuaLoadBufferx, [
  int(0), untrackedLuaBuffer, int(17), path("@untracked.res"), path("b"),
]);
hooks.get("luaL_loadbufferx").onLeave.call(untrackedLuaLoadBufferx, int(0));
assert.ok(
  !sent.slice(untrackedLoaderStart).some((event) => event.event === "FETEST_TOUCH"),
  "an untracked direct Lua buffer must not be labeled FETEST",
);
assert.ok(sent.slice(untrackedLoaderStart).some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "luaL_loadbufferx" &&
  event.chunk_name === "@untracked.res" &&
  event.byte_provenance?.buffer === "0x9999"
));

const luaLoadBufferx = {};
hooks.get("luaL_loadbufferx").onEnter.call(luaLoadBufferx, [
  int(0), buffer, int(17), path("@BattleLogic.res"), path("b"),
]);
hooks.get("luaL_loadbufferx").onLeave.call(luaLoadBufferx, int(0));

assert.ok(sent.some((event) =>
  event.event === "FETEST_OPEN" &&
  event.api === "open" &&
  event.path === battlePath &&
  event.fd === 42 &&
  event.priority === "high" &&
  event.byte_provenance?.trigger === "FETest path"
));
assert.ok(sent.some((event) =>
  event.event === "FETEST_READ" &&
  event.api === "read" &&
  event.path === battlePath &&
  event.fd === 42 &&
  event.nbytes === 17 &&
  event.offset === null &&
  event.head16_hex === "1b4c7561530119930d0a1a0a04040408" &&
  event.byte_provenance?.path === battlePath
));
assert.ok(sent.some((event) =>
  event.event === "FETEST_TOUCH" &&
  event.function === "luaL_loadbufferx" &&
  event.path === battlePath &&
  event.fd === 43 &&
  event.priority === "high" &&
  event.byte_provenance?.trigger === "Lua 5.3 format-1 header" &&
  event.byte_provenance?.buffer === "0x1234"
));
assert.ok(!sent.some((event) => event.event === "FETEST_READ" && event.path?.endsWith("canary.bin")),
  "reused fd must not retain BattleLogic provenance");
assert.ok(sent.some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "luaL_loadbufferx" &&
  event.chunk_name === "@BattleLogic.res" &&
  event.mode === "b" &&
  event.size === "17" &&
  event.head16_hex === "1b4c7561530119930d0a1a0a04040408" &&
  event.return_code === 0 &&
  event.byte_provenance?.buffer === "0x1234"
));

const wideSizeStart = sent.length;
const wideSizeRead = {};
hooks.get("read").onEnter.call(wideSizeRead, [int(43), buffer, int(17)]);
hooks.get("read").onLeave.call(wideSizeRead, int(17));
const wideSizeLoad = {};
hooks.get("luaL_loadbufferx").onEnter.call(wideSizeLoad, [
  int(0), buffer, uint64("4294967296"), path("@wide-size.res"), path("b"),
]);
hooks.get("luaL_loadbufferx").onLeave.call(wideSizeLoad, int(0));
assert.ok(sent.slice(wideSizeStart).some((event) =>
  event.event === "LUA_LOAD" &&
  event.size === "4294967296" &&
  event.head16_hex === "1b4c7561530119930d0a1a0a04040408"
), "a nonzero 64-bit direct-buffer size must retain its full text and safely read 16 bytes");

function simulateReaderCallback(size, returnedBuffer) {
  const invocation = {};
  hooks.get("reader").onEnter.call(invocation, [int(0), int(0), readerSizePointer]);
  (function originalReaderExecution() {
    readerSizePointer.value = uint64(size);
  }());
  hooks.get("reader").onLeave.call(invocation, returnedBuffer);
}

const readerStageRead = {};
hooks.get("read").onEnter.call(readerStageRead, [int(43), buffer, int(17)]);
hooks.get("read").onLeave.call(readerStageRead, int(17));
const readerTouchStart = sent.length;

const readerLoad = {};
hooks.get("lua_load").onEnter.call(readerLoad, [
  int(0), reader, int(0), path("@reader.res"), path("b"),
]);
simulateReaderCallback(17, buffer);
simulateReaderCallback(0, null);
hooks.get("lua_load").onLeave.call(readerLoad, int(0));
assert.ok(sent.slice(readerTouchStart).some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "lua_load" &&
  event.chunk_name === "@reader.res" &&
  event.mode === "b" &&
  event.return_code === 0 &&
  event.size === "17" &&
  event.head16_hex === "1b4c7561530119930d0a1a0a04040408" &&
  event.path === battlePath &&
  event.fd === 43 &&
  event.reader_buffer === "0x1234" &&
  event.reader_size === "17" &&
  event.reader_head16_hex === "1b4c7561530119930d0a1a0a04040408" &&
  event.reader_call_count === 2 &&
  event.reader_calls === undefined &&
  event.byte_provenance?.path === battlePath &&
  event.byte_provenance?.fd === 43 &&
  event.byte_provenance?.buffer === "0x1234"
), "lua_load must read size_t after its reader callback and preserve the first non-null bytes across EOF");
assert.ok(sent.slice(readerTouchStart).some((event) =>
  event.event === "FETEST_TOUCH" &&
  event.function === "lua_load" &&
  event.path === battlePath &&
  event.fd === 43 &&
  event.byte_provenance?.buffer === "0x1234"
), "a staged FETest buffer returned by lua_load's reader must emit FETEST_TOUCH and consume provenance");

const fragmentOne = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xfragment1",
};
const fragmentTwo = {
  readByteArray: (count) => header.slice(2, 2 + count),
  toString: () => "0xfragment2",
};
for (const fragment of [fragmentOne, fragmentTwo]) {
  const fragmentRead = {};
  hooks.get("read").onEnter.call(fragmentRead, [int(43), fragment, int(fragment === fragmentOne ? 2 : 14)]);
  hooks.get("read").onLeave.call(fragmentRead, int(fragment === fragmentOne ? 2 : 14));
}
const fragmentReaderStart = sent.length;
const fragmentReaderLoad = {};
hooks.get("lua_load").onEnter.call(fragmentReaderLoad, [
  int(0), reader, int(0), path("@fragment-reader.res"), path("b"),
]);
simulateReaderCallback(2, fragmentOne);
simulateReaderCallback(14, fragmentTwo);
simulateReaderCallback(0, null);
hooks.get("lua_load").onLeave.call(fragmentReaderLoad, int(0));
assert.ok(sent.slice(fragmentReaderStart).some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "lua_load" &&
  event.chunk_name === "@fragment-reader.res" &&
  event.mode === "b" &&
  event.size === "16" &&
  event.head16_hex === "1b4c7561530119930d0a1a0a04040408" &&
  event.reader_size === "16" &&
  event.reader_head16_hex === "1b4c7561530119930d0a1a0a04040408" &&
  event.reader_call_count === 3 &&
  event.return_code === 0
), "lua_load must aggregate the first 16 bytes across reader fragments and retain them after EOF");
assert.ok(sent.slice(fragmentReaderStart).some((event) =>
  event.event === "FETEST_TOUCH" &&
  event.function === "lua_load" &&
  event.path === battlePath &&
  event.fd === 43 &&
  event.byte_provenance?.buffer === "0xfragment1"
), "a reader touch must retain the first claimed staged provenance");

const singleMappedFragmentBase = {
  readByteArray: (count) => header.slice(0, count),
  toString: () => "0xd000",
};
const singleMappedFragmentOffset = {
  readByteArray: (count) => header.slice(2, 2 + count),
  toString: () => "0xd002",
};
const singleMappedStage = {};
hooks.get("read").onEnter.call(singleMappedStage, [int(43), singleMappedFragmentBase, int(16)]);
hooks.get("read").onLeave.call(singleMappedStage, int(16));
const singleMappedReaderStart = sent.length;
const singleMappedReaderLoad = {};
hooks.get("lua_load").onEnter.call(singleMappedReaderLoad, [
  int(0), reader, int(0), path("@single-mapped-reader.res"), path("b"),
]);
simulateReaderCallback(2, singleMappedFragmentBase);
simulateReaderCallback(14, singleMappedFragmentOffset);
simulateReaderCallback(0, null);
hooks.get("lua_load").onLeave.call(singleMappedReaderLoad, int(0));
assert.ok(sent.slice(singleMappedReaderStart).some((event) =>
  event.event === "FETEST_TOUCH" &&
  event.function === "lua_load" &&
  event.path === battlePath &&
  event.fd === 43 &&
  event.byte_provenance?.buffer === "0xd000"
), "a reader fragment at P+2 must retain P's staged provenance through header completion");

const untrackedReaderStart = sent.length;
const untrackedReaderLoad = {};
hooks.get("lua_load").onEnter.call(untrackedReaderLoad, [
  int(0), reader, int(0), path("@untracked-reader.res"), path("b"),
]);
simulateReaderCallback(17, untrackedLuaBuffer);
hooks.get("lua_load").onLeave.call(untrackedReaderLoad, int(0));
assert.ok(!sent.slice(untrackedReaderStart).some((event) => event.event === "FETEST_TOUCH"),
  "an unmapped reader buffer must not emit FETEST_TOUCH");
assert.ok(sent.slice(untrackedReaderStart).some((event) =>
  event.event === "LUA_LOAD" &&
  event.path === null &&
  event.fd === null &&
  event.byte_provenance?.path === null &&
  event.byte_provenance?.fd === null
), "an unmapped reader buffer must leave lua_load provenance neutral");

const nullReaderLoad = {};
hooks.get("lua_load").onEnter.call(nullReaderLoad, [
  int(0), null, int(0), path("@null-reader.res"), path("b"),
]);
hooks.get("lua_load").onLeave.call(nullReaderLoad, int(0));
assert.ok(sent.some((event) =>
  event.event === "LUA_LOAD" &&
  event.function === "lua_load" &&
  event.chunk_name === "@null-reader.res" &&
  event.reader_buffer === null &&
  event.reader_size === null &&
  event.reader_head16_hex === null
), "lua_load must tolerate a null reader without fabricating reader data");

const oneShotOpen = {};
hooks.get("open").onEnter.call(oneShotOpen, [path(battlePath), int(0)]);
hooks.get("open").onLeave.call(oneShotOpen, int(44));
const oneShotRead = {};
hooks.get("read").onEnter.call(oneShotRead, [int(44), oneShotBuffer, int(17)]);
hooks.get("read").onLeave.call(oneShotRead, int(17));
const oneShotFirst = {};
hooks.get("luaL_loadbufferx").onEnter.call(oneShotFirst, [int(0), oneShotBuffer, int(17), path("@one-shot.res"), path("b")]);
hooks.get("luaL_loadbufferx").onLeave.call(oneShotFirst, int(0));
const oneShotSecondStart = sent.length;
const oneShotSecond = {};
hooks.get("luaL_loadbufferx").onEnter.call(oneShotSecond, [int(0), oneShotBuffer, int(17), path("@one-shot.res"), path("b")]);
hooks.get("luaL_loadbufferx").onLeave.call(oneShotSecond, int(0));
assert.ok(
  !sent.slice(oneShotSecondStart).some((event) => event.event === "FETEST_TOUCH"),
  "direct Lua loading must consume buffer provenance after its first use",
);

const lifecycleOpen = {};
hooks.get("open").onEnter.call(lifecycleOpen, [path(battlePath), int(0)]);
hooks.get("open").onLeave.call(lifecycleOpen, int(45));
const lifecycleRead = {};
hooks.get("read").onEnter.call(lifecycleRead, [int(45), lifecycleBuffer, int(17)]);
hooks.get("read").onLeave.call(lifecycleRead, int(17));
hooks.get("free").onEnter.call({}, [lifecycleBuffer]);
const lifecycleReuseStart = sent.length;
const lifecycleReuseLoad = {};
hooks.get("luaL_loadbufferx").onEnter.call(lifecycleReuseLoad, [int(0), sameAddressReuseBuffer, int(17), path("@reused-address.res"), path("b")]);
hooks.get("luaL_loadbufferx").onLeave.call(lifecycleReuseLoad, int(0));
assert.ok(
  !sent.slice(lifecycleReuseStart).some((event) => event.event === "FETEST_TOUCH"),
  "same-address reuse after a memory lifecycle invalidation must not retain FETest provenance",
);

for (const allocation of [lifecycleBuffer, offsetBuffer]) {
  const trackedMalloc = {};
  hooks.get("malloc").onEnter.call(trackedMalloc, [int(64)]);
  hooks.get("malloc").onLeave.call(trackedMalloc, allocation);
}
const unrelatedLifecycleRead = {};
hooks.get("read").onEnter.call(unrelatedLifecycleRead, [int(45), lifecycleBuffer, int(17)]);
hooks.get("read").onLeave.call(unrelatedLifecycleRead, int(17));
const offsetLifecycleRead = {};
hooks.get("read").onEnter.call(offsetLifecycleRead, [int(45), offsetBuffer, int(17)]);
hooks.get("read").onLeave.call(offsetLifecycleRead, int(17));
hooks.get("free").onEnter.call({}, [lifecycleBuffer]);
const offsetLifecycleReuseStart = sent.length;
const offsetLifecycleReuseLoad = {};
hooks.get("luaL_loadbufferx").onEnter.call(offsetLifecycleReuseLoad, [int(0), sameOffsetReuseBuffer, int(17), path("@preserved-after-free-q.res"), path("b")]);
hooks.get("luaL_loadbufferx").onLeave.call(offsetLifecycleReuseLoad, int(0));
assert.ok(
  sent.slice(offsetLifecycleReuseStart).some((event) => event.event === "FETEST_TOUCH" && event.byte_provenance?.buffer === "0xcb0"),
  "freeing Q must preserve the independent staged binding for P",
);

const closeOpen = {};
hooks.get("open").onEnter.call(closeOpen, [path(battlePath), int(0)]);
hooks.get("open").onLeave.call(closeOpen, int(46));
hooks.get("close").onEnter.call({}, [int(46)]);
const closeReuseStart = sent.length;
const closeReuseRead = {};
hooks.get("read").onEnter.call(closeReuseRead, [int(46), closeReuseBuffer, int(17)]);
hooks.get("read").onLeave.call(closeReuseRead, int(17));
assert.ok(
  !sent.slice(closeReuseStart).some((event) => event.event.startsWith("FETEST_")),
  "close followed by an untracked same-fd reuse must not inherit a FETest path",
);

function stagedBuffer(address) {
  return {
    readByteArray: (count) => header.slice(0, count),
    toString: () => address,
  };
}
function stageFETestBuffer(staged) {
  const read = {};
  hooks.get("read").onEnter.call(read, [int(45), staged, int(17)]);
  hooks.get("read").onLeave.call(read, int(17));
}
function loadStagedBuffer(staged, chunkName) {
  const load = {};
  hooks.get("luaL_loadbufferx").onEnter.call(load, [int(0), staged, int(17), path(chunkName), path("b")]);
  hooks.get("luaL_loadbufferx").onLeave.call(load, int(0));
}

const allocationBase = stagedBuffer("0xb000");
const allocationInterior = stagedBuffer("0xb002");
const allocationInteriorReuse = stagedBuffer("0xb002");
const malloc = {};
hooks.get("malloc").onEnter.call(malloc, [int(64)]);
hooks.get("malloc").onLeave.call(malloc, allocationBase);
stageFETestBuffer(allocationInterior);
hooks.get("free").onEnter.call({}, [allocationBase]);
const interiorFreeStart = sent.length;
loadStagedBuffer(allocationInteriorReuse, "@freed-interior.res");
assert.ok(
  !sent.slice(interiorFreeStart).some((event) => event.event === "FETEST_TOUCH"),
  "freeing allocation base P must invalidate a staged read at P+offset",
);

const reallocP = stagedBuffer("0x7000");
const reallocQ = stagedBuffer("0x7100");
for (const allocation of [reallocP, reallocQ]) {
  const trackedMalloc = {};
  hooks.get("malloc").onEnter.call(trackedMalloc, [int(32)]);
  hooks.get("malloc").onLeave.call(trackedMalloc, allocation);
}
stageFETestBuffer(reallocP);
stageFETestBuffer(reallocQ);
hooks.get("realloc").onEnter.call({}, [reallocQ, int(32)]);
hooks.get("realloc").onLeave.call({}, reallocQ);
const reallocPreserveStart = sent.length;
loadStagedBuffer(reallocP, "@preserved-after-realloc-q.res");
assert.ok(
  sent.slice(reallocPreserveStart).some((event) => event.event === "FETEST_TOUCH" && event.byte_provenance?.buffer === "0x7000"),
  "reallocating Q must preserve the independent staged binding for P",
);

const mappedP = stagedBuffer("0x8000");
const mappedQ = stagedBuffer("0x9000");
stageFETestBuffer(mappedP);
stageFETestBuffer(mappedQ);
hooks.get("munmap").onEnter.call({}, [mappedQ, int(0x100)]);
const munmapPreserveStart = sent.length;
hooks.get("munmap").onLeave.call({}, int(0));
loadStagedBuffer(mappedP, "@preserved-after-munmap-q.res");
assert.ok(
  sent.slice(munmapPreserveStart).some((event) => event.event === "FETEST_TOUCH" && event.byte_provenance?.buffer === "0x8000"),
  "munmap must preserve staged bindings outside its unmapped range",
);

const cappedBuffers = Array.from({ length: 129 }, (_, index) => stagedBuffer(`0xa${index.toString(16)}`));
for (const capped of cappedBuffers) {
  stageFETestBuffer(capped);
}
const evictionStart = sent.length;
loadStagedBuffer(cappedBuffers[0], "@evicted-buffer.res");
assert.ok(
  !sent.slice(evictionStart).some((event) => event.event === "FETEST_TOUCH"),
  "a binding evicted by the provenance cap must not emit FETEST_TOUCH",
);


const intervalBase = stagedBuffer("0x11000");
const intervalOffset = {
  readByteArray: (count) => header.slice(2, 2 + count),
  toString: () => "0x11002",
};
stageFETestBuffer(intervalBase);
const intervalReaderStart = sent.length;
const intervalReaderLoad = {};
hooks.get("lua_load").onEnter.call(intervalReaderLoad, [
  int(0), reader, int(0), path("@interval-reader.res"), path("b"),
]);
simulateReaderCallback(2, intervalBase);
simulateReaderCallback(14, intervalOffset);
simulateReaderCallback(0, null);
hooks.get("lua_load").onLeave.call(intervalReaderLoad, int(0));
const intervalTouches = sent.slice(intervalReaderStart).filter((event) => event.event === "FETEST_TOUCH");
assert.equal(intervalTouches.length, 1, "one staged interval must emit exactly one reader touch");
assert.equal(intervalTouches[0].path, battlePath);
assert.equal(intervalTouches[0].fd, 45);
assert.equal(intervalTouches[0].head16_hex, "1b4c7561530119930d0a1a0a04040408");
assert.equal(intervalTouches[0].byte_provenance?.buffer, "0x11000", "reader provenance must retain the staged interval base");

const freedAllocationBase = stagedBuffer("0x2000");
const freedAllocationInterior = stagedBuffer("0x2010");
const freedAllocationMalloc = {};
hooks.get("malloc").onEnter.call(freedAllocationMalloc, [int(0x40)]);
hooks.get("malloc").onLeave.call(freedAllocationMalloc, freedAllocationBase);
stageFETestBuffer(freedAllocationInterior);
hooks.get("free").onEnter.call({}, [freedAllocationBase]);
const freedAllocationLoadStart = sent.length;
loadStagedBuffer(freedAllocationInterior, "@freed-allocation-interior.res");
assert.ok(
  !sent.slice(freedAllocationLoadStart).some((event) => event.event === "FETEST_TOUCH"),
  "freeing a known allocation must invalidate staged interior reads",
);

const retainedAllocationABase = stagedBuffer("0x3000");
const retainedAllocationAInterior = stagedBuffer("0x3010");
const retainedAllocationBBase = stagedBuffer("0x4000");
for (const allocation of [retainedAllocationABase, retainedAllocationBBase]) {
  const trackedMalloc = {};
  hooks.get("malloc").onEnter.call(trackedMalloc, [int(0x40)]);
  hooks.get("malloc").onLeave.call(trackedMalloc, allocation);
}
stageFETestBuffer(retainedAllocationAInterior);
hooks.get("free").onEnter.call({}, [retainedAllocationBBase]);
const retainedAllocationLoadStart = sent.length;
loadStagedBuffer(retainedAllocationAInterior, "@retained-allocation-a.res");
assert.ok(
  sent.slice(retainedAllocationLoadStart).some((event) =>
    event.event === "FETEST_TOUCH" && event.byte_provenance?.buffer === "0x3010"
  ),
  "freeing a distinct known allocation must retain other allocation bindings",
);

const overlapBase = stagedBuffer("0x5000");
const overlapInterior = stagedBuffer("0x5002");
stageFETestBuffer(overlapBase);
const unrelatedOverlapRead = {};
hooks.get("read").onEnter.call(unrelatedOverlapRead, [int(99), overlapInterior, int(14)]);
hooks.get("read").onLeave.call(unrelatedOverlapRead, int(14));
const overlapInvalidationStart = sent.length;
loadStagedBuffer(overlapBase, "@overlap-base.res");
loadStagedBuffer(overlapInterior, "@overlap-interior.res");
assert.ok(
  !sent.slice(overlapInvalidationStart).some((event) => event.event === "FETEST_TOUCH"),
  "any later overlapping read must retire the prior staged interval at both base and interior pointers",
);

const evictedAllocationBase = stagedBuffer("0x120000");
const evictedAllocationInterior = stagedBuffer("0x120010");
const evictedAllocationMalloc = {};
hooks.get("malloc").onEnter.call(evictedAllocationMalloc, [int(0x40)]);
hooks.get("malloc").onLeave.call(evictedAllocationMalloc, evictedAllocationBase);
stageFETestBuffer(evictedAllocationInterior);
for (let index = 0; index < 128; index += 1) {
  const allocation = stagedBuffer(`0x${(0x130000 + index * 0x100).toString(16)}`);
  const trackedMalloc = {};
  hooks.get("malloc").onEnter.call(trackedMalloc, [int(0x40)]);
  hooks.get("malloc").onLeave.call(trackedMalloc, allocation);
}
const evictedAllocationLoadStart = sent.length;
loadStagedBuffer(evictedAllocationInterior, "@evicted-allocation-owner.res");
assert.ok(
  !sent.slice(evictedAllocationLoadStart).some((event) => event.event === "FETEST_TOUCH"),
  "evicting an allocation owner must retire its dependent staged provenance",
);

const nullPointer = { toString: () => "0x0" };
const freeNullBuffer = stagedBuffer("0x160000");
stageFETestBuffer(freeNullBuffer);
hooks.get("free").onEnter.call({}, [nullPointer]);
const freeNullLoadStart = sent.length;
loadStagedBuffer(freeNullBuffer, "@free-null.res");
assert.ok(
  sent.slice(freeNullLoadStart).some((event) => event.event === "FETEST_TOUCH"),
  "free(NULL) must preserve unknown-owner staged provenance",
);

const reallocNullBuffer = stagedBuffer("0x170000");
const reallocNullResult = stagedBuffer("0x180000");
stageFETestBuffer(reallocNullBuffer);
const reallocNull = {};
hooks.get("realloc").onEnter.call(reallocNull, [nullPointer, int(0x40)]);
hooks.get("realloc").onLeave.call(reallocNull, reallocNullResult);
const reallocNullLoadStart = sent.length;
loadStagedBuffer(reallocNullBuffer, "@realloc-null.res");
assert.ok(
  sent.slice(reallocNullLoadStart).some((event) => event.event === "FETEST_TOUCH"),
  "realloc(NULL, n) must preserve unknown-owner staged provenance",
);