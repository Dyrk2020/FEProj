"use strict";

// B2 R1 native-observe hook.
//
// Strategy: JavaART (System.load in the helper app) performs the dlopen of
// libFEProj.so on a controlled ART thread — the path proven by E0/E2 to NOT
// crash.  This Frida script is observe-only: it watches for the module to
// appear, then attaches the B2 Lua-loader / fetest observation surface to it.
//
// It must NOT call Module.load for libFEProj, and must NOT synthesize any
// loader-side effect; it only intercepts and reports.

const fdPaths = new Map();
const FETEST_MARKER = "fetest";
const BATTLE_LOGIC_MARKER = "battlelogic";
const LUA53_FORMAT1_HEADER = [0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01];
const attachedLuaLoaders = new Set();
const attachedLuaStates = new Set();
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const TARGET_NAME = "libFEProj.so";

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let loadSeenAt = null;

function safeUtf8(pointer) {
  if (pointer === null || pointer === undefined) {
    return null;
  }
  try {
    return pointer.readUtf8String();
  } catch (_) {
    return null;
  }
}

function numberValue(value) {
  if (value === null || value === undefined) {
    return 0;
  }
  try {
    if (typeof value.toInt32 === "function") {
      return value.toInt32();
    }
    return Number(value);
  } catch (_) {
    return 0;
  }
}

function pointerKey(pointer) {
  if (pointer === null || pointer === undefined) {
    return null;
  }
  try {
    const text = pointer.toString();
    return text === "0" || text === "0x0" ? null : text;
  } catch (_) {
    return null;
  }
}

function isFETestPath(path) {
  if (path === null || path === undefined) {
    return false;
  }
  const normalized = path.replace(/\\/g, "/").toLowerCase();
  return normalized.indexOf(FETEST_MARKER) !== -1 || normalized.indexOf(BATTLE_LOGIC_MARKER) !== -1;
}

function readHead16(buffer) {
  if (buffer === null || buffer === undefined) {
    return null;
  }
  try {
    const bytes = new Uint8Array(buffer.readByteArray(16));
    let hex = "";
    for (let index = 0; index < bytes.length; index += 1) {
      hex += bytes[index].toString(16).padStart(2, "0");
    }
    return hex;
  } catch (_) {
    return null;
  }
}

function isLua53Format1(head16Hex) {
  if (head16Hex === null || head16Hex.length < LUA53_FORMAT1_HEADER.length * 2) {
    return false;
  }
  let expected = "";
  for (let index = 0; index < LUA53_FORMAT1_HEADER.length; index += 1) {
    expected += LUA53_FORMAT1_HEADER[index].toString(16).padStart(2, "0");
  }
  return head16Hex.slice(0, expected.length) === expected;
}

function globalExportByName(name) {
  if (typeof Module === "undefined") {
    return null;
  }
  try {
    if (typeof Module.findExportByName === "function") {
      const address = Module.findExportByName(null, name);
      if (address !== null) {
        return address;
      }
    }
  } catch (_) {
    // fall through
  }
  if (typeof Module.findGlobalExportByName === "function") {
    return Module.findGlobalExportByName(name);
  }
  return null;
}

function moduleLuaExport(module, name) {
  if (module !== null && module !== undefined && typeof module.findExportByName === "function") {
    const exported = module.findExportByName(name);
    if (exported !== null) {
      return exported;
    }
  }
  return globalExportByName(name);
}

// --- fetest open/read/close observation (observe-only) --------------------

function attachOpen(name, pathIndex, flagsIndex) {
  const address = globalExportByName(name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.path = safeUtf8(args[pathIndex]);
      this.flags = numberValue(args[flagsIndex]);
    },
    onLeave(retval) {
      const fd = numberValue(retval);
      if (fd >= 0) {
        fdPaths.set(fd, this.path);
      }
      if (!isFETestPath(this.path)) {
        return;
      }
      send({
        event: "FETEST_OPEN",
        api: name,
        path: this.path,
        fd: fd,
        flags: this.flags,
        priority: "high",
      });
    },
  });
}

function attachRead(name) {
  const address = globalExportByName(name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.fd = numberValue(args[0]);
      this.buffer = args[1];
      this.count = numberValue(args[2]);
      this.path = fdPaths.get(this.fd);
    },
    onLeave(retval) {
      const nbytes = numberValue(retval);
      const head16Hex = nbytes > 0 ? readHead16(this.buffer) : null;
      if (!isFETestPath(this.path)) {
        return;
      }
      send({
        event: "FETEST_READ",
        api: name,
        path: this.path,
        fd: this.fd,
        nbytes: nbytes,
        head16_hex: head16Hex,
        priority: isLua53Format1(head16Hex) ? "high" : "normal",
      });
    },
  });
}

function attachClose(name) {
  const address = globalExportByName(name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      fdPaths.delete(numberValue(args[0]));
    },
  });
}

// --- Lua loader observation (attached only AFTER FEProj is loaded) --------

function attachLuaState(module) {
  const name = "luaL_newstate";
  if (attachedLuaStates.has(name)) {
    return;
  }
  const address = moduleLuaExport(module, name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onLeave(retval) {
      send({ event: "B2_LUA_STATE", selector: name, state: pointerKey(retval) });
    },
  });
  attachedLuaStates.add(name);
}

function attachLuaLoader(module, name, directBuffer, chunkNameIndex, modeIndex) {
  if (attachedLuaLoaders.has(name)) {
    return;
  }
  const address = moduleLuaExport(module, name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.functionName = name;
      this.chunkName = safeUtf8(args[chunkNameIndex]);
      this.mode = modeIndex === null ? null : safeUtf8(args[modeIndex]);
      this.directBuffer = directBuffer;
      this.size = directBuffer ? numberValue(args[2]) : null;
      this.head16Hex = directBuffer ? readHead16(args[1]) : null;
    },
    onLeave(retval) {
      send({
        event: "LUA_LOAD",
        function: name,
        chunk_name: this.chunkName,
        mode: this.mode,
        size: this.size,
        head16_hex: this.head16Hex,
        return_code: numberValue(retval),
        direct_buffer: this.directBuffer,
      });
    },
  });
  attachedLuaLoaders.add(name);
}

function ensureLuaHooks(module) {
  attachLuaState(module);
  attachLuaLoader(module, "lua_load", false, 3, 4);
  attachLuaLoader(module, "luaL_loadbufferx", true, 3, 4);
}

function attachFEProjObservation(module) {
  ensureLuaHooks(module);
  send({
    event: "B2_LUA_HOOK_ATTACH_READY",
    library: TARGET_NAME,
    base: pointerKey(module.base),
    size: module.size,
  });
}

function tryDetectFEProj() {
  if (feprojLoaded) {
    return true;
  }
  let module = null;
  try {
    if (typeof Process.findModuleByName === "function") {
      module = Process.findModuleByName(TARGET_NAME);
    }
  } catch (_) {
    module = null;
  }
  if (module === null || module === undefined) {
    return false;
  }
  feprojLoaded = true;
  feprojBase = pointerKey(module.base);
  feprojSize = module.size;
  loadSeenAt = Date.now();
  send({
    event: "B2_MODULE_LOAD",
    library: TARGET_NAME,
    base: feprojBase,
    size: feprojSize,
    loaded_via: "java-system-load",
  });
  attachFEProjObservation(module);
  return true;
}

function installObservers() {
  attachOpen("open", 0, 1);
  attachOpen("openat", 1, 2);
  attachRead("read");
  attachRead("pread64");
  attachClose("close");
  send({ event: "B2_OBSERVER_READY", via: "java-system-load" });
}

function environment() {
  return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id };
}

function waitFEProjLoaded(timeoutMs) {
  const began = Date.now();
  while (!tryDetectFEProj()) {
    if (Date.now() - began > (typeof timeoutMs === "number" && timeoutMs > 0 ? timeoutMs : LOAD_TIMEOUT_MS)) {
      throw new Error("timed out waiting for libFEProj.so to appear via java System.load");
    }
    Thread.sleep(50);
  }
  return { name: TARGET_NAME, base: feprojBase, size: feprojSize };
}

function probeLuaExports() {
  if (!feprojLoaded) {
    throw new Error("libFEProj.so is not loaded");
  }
  let module = null;
  try {
    module = Process.findModuleByName(TARGET_NAME);
  } catch (_) {
    module = null;
  }
  if (module === null || module === undefined) {
    throw new Error("libFEProj.so module disappeared");
  }
  const selectors = ["luaL_newstate", "luaL_loadbufferx", "lua_load"];
  return selectors.map((selector) => {
    const address = moduleLuaExport(module, selector);
    const result = { selector: selector, resolved: address !== null, address: pointerKey(address) };
    send({ event: "B2_EXPORT", selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

function fetestTouch() {
  // Read the staged BattleLogic.res through the observed path so the fetest
  // open/read hooks record a real provenance event from FEProj's own loader
  // surface.  The read is done by libc, not by FEProj; it only proves the
  // observation surface is live after the module load.
  const input = rpcContext.battleLogicPath;
  if (typeof input !== "string") {
    throw new Error("no BattleLogic.res path provided");
  }
  const openAddr = globalExportByName("open");
  const readAddr = globalExportByName("read");
  const closeAddr = globalExportByName("close");
  if (openAddr === null || readAddr === null || closeAddr === null) {
    throw new Error("required libc API unavailable for fetest read");
  }
  const open = new NativeFunction(openAddr, "int", ["pointer", "int"]);
  const read = new NativeFunction(readAddr, "int", ["int", "pointer", "ulong"]);
  const close = new NativeFunction(closeAddr, "int", ["int"]);
  const path = Memory.allocUtf8String(input);
  const fd = numberValue(open(path, 0));
  if (fd < 0) {
    throw new Error("B2 open failed for staged BattleLogic.res");
  }
  const buffer = Memory.alloc(1479);
  try {
    const nbytes = numberValue(read(fd, buffer, 1479));
    send({ event: "B2_INPUT_READ", path: input, nbytes: nbytes, sha_known: true });
    return { fd: fd, nbytes: nbytes };
  } finally {
    close(fd);
  }
}

let rpcContext = { battleLogicPath: null };

installObservers();
setInterval(tryDetectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== "undefined") {
  rpc.exports = {
    environment: environment,
    setbattlelogicpath: (path) => {
      rpcContext.battleLogicPath = path;
      return { battle_logic_path: path };
    },
    waitfeprojloaded: waitFEProjLoaded,
    probeluaexports: probeLuaExports,
    fetesttouch: fetestTouch,
  };
}
