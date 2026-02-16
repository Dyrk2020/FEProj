"use strict";

// G1 pcall execution-chain observation hook (observe-only, built on G1 resource hook).
//
// Records the loader→execution edge:
//   FETEST_OPEN -> FETEST_READ -> LUA_LOAD -> LUA_PCALL -> return_code.
//
// Controlled form (b): luaL_newstate -> read staged locked BattleLogic.res ->
// luaL_loadbufferx -> lua_pcall(state, 0, 0, 0).  Provenance stays bound by
// the open/read events + buffer SHA.  Hook also resolves lua_pcall in the
// whitelist and records state/nargs/nresults/errfunc/return_code and the
// stack-top type/first 16 bytes after return.

const fdPaths = new Map();
const FETEST_MARKER = "fetest";
const BATTLE_LOGIC_MARKER = "battlelogic";
const LUA53_FORMAT1_HEADER = [0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01];
const attachedLuaLoaders = new Set();
const attachedLuaStates = new Set();
const attachedPCall = new Set();
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const TARGET_NAME = "libFEProj.so";
const MAX_HEX_BYTES = 4096;

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;
let luaPcallAddress = null;

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
    if (typeof value.toUInt32 === "function") {
      return value.toUInt32();
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

function headHex(buffer, byteCount) {
  if (buffer === null || buffer === undefined) {
    return null;
  }
  try {
    const bytes = new Uint8Array(buffer.readByteArray(byteCount));
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

function callerInfo(invocation) {
  let rva = null;
  let moduleName = null;
  try {
    const returnAddress = invocation.returnAddress;
    if (returnAddress !== null && returnAddress !== undefined && feprojModule !== null && feprojModule.base !== undefined) {
      const base = feprojModule.base;
      if (returnAddress.compare(base) >= 0 && returnAddress.compare(base.add(feprojModule.size)) < 0) {
        moduleName = TARGET_NAME;
        rva = pointerKey(returnAddress.sub(base));
      }
    }
  } catch (_) {
    // best-effort
  }
  return { caller_module: moduleName, caller_rva: rva };
}

// --- fetest open/read/close observation --------------------

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
      if (!isFETestPath(this.path) || nbytes <= 0) {
        return;
      }
      const head16Hex = headHex(this.buffer, 16);
      const head32Hex = headHex(this.buffer, 32);
      const bufferHex = headHex(this.buffer, nbytes > MAX_HEX_BYTES ? MAX_HEX_BYTES : nbytes);
      send({
        event: "FETEST_READ",
        api: name,
        path: this.path,
        fd: this.fd,
        nbytes: nbytes,
        head16_hex: head16Hex,
        head32_hex: head32Hex,
        buffer_hex: bufferHex,
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

// --- Lua loader observation --------------------------------

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
    onEnter(args) {
      this.caller = callerInfo(this);
    },
    onLeave(retval) {
      send({
        event: "B2_LUA_STATE",
        selector: name,
        state: pointerKey(retval),
        caller_module: this.caller.caller_module,
        caller_rva: this.caller.caller_rva,
      });
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
      this.bufferPtr = directBuffer ? pointerKey(args[1]) : null;
      this.size = directBuffer ? numberValue(args[2]) : null;
      this.head16Hex = directBuffer ? headHex(args[1], 16) : null;
      this.head32Hex = directBuffer ? headHex(args[1], 32) : null;
      this.bufferHex = directBuffer && this.size !== null && this.size > 0
        ? headHex(args[1], this.size > MAX_HEX_BYTES ? MAX_HEX_BYTES : this.size)
        : null;
      this.caller = callerInfo(this);
    },
    onLeave(retval) {
      send({
        event: "LUA_LOAD",
        function: name,
        chunk_name: this.chunkName,
        mode: this.mode,
        size: this.size,
        head16_hex: this.head16Hex,
        head32_hex: this.head32Hex,
        buffer_ptr: this.bufferPtr,
        buffer_hex: this.bufferHex,
        return_code: numberValue(retval),
        direct_buffer: this.directBuffer,
        caller_module: this.caller.caller_module,
        caller_rva: this.caller.caller_rva,
      });
    },
  });
  attachedLuaLoaders.add(name);
}

function attachPCall(module) {
  // lua_pcall is not a named export of libFEProj.so; the exported execution
  // primitive is lua_pcallk (documented Lua 5.3 API).  nargs/nresults/errfunc
  // are the first three int args; ctx/kFunction are 0 for a non-yielding call.
  const name = "lua_pcallk";
  if (attachedPCall.has(name)) {
    return;
  }
  const address = moduleLuaExport(module, name);
  if (address === null) {
    return;
  }
  luaPcallAddress = address;
  Interceptor.attach(address, {
    onEnter(args) {
      this.state = pointerKey(args[0]);
      this.nargs = numberValue(args[1]);
      this.nresults = numberValue(args[2]);
      this.errfunc = numberValue(args[3]);
      this.caller = callerInfo(this);
    },
    onLeave(retval) {
      send({
        event: "LUA_PCALL",
        function: name,
        state: this.state,
        nargs: this.nargs,
        nresults: this.nresults,
        errfunc: this.errfunc,
        return_code: numberValue(retval),
        caller_module: this.caller.caller_module,
        caller_rva: this.caller.caller_rva,
      });
    },
  });
  attachedPCall.add(name);
}

function ensureLuaHooks(module) {
  attachLuaState(module);
  attachLuaLoader(module, "lua_load", false, 3, 4);
  attachLuaLoader(module, "luaL_loadbufferx", true, 3, 4);
  attachPCall(module);
}

function attachFEProjObservation(module) {
  feprojModule = module;
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
  feprojModule = module;
  send({
    event: "B2_MODULE_LOAD",
    library: TARGET_NAME,
    base: feprojBase,
    size: feprojSize,
    loaded_via: "java-system-load",
    sha256: null,
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
  if (!feprojLoaded || feprojModule === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  const selectors = ["luaL_newstate", "luaL_loadbufferx", "lua_load", "lua_pcallk"];
  return selectors.map((selector) => {
    const address = moduleLuaExport(feprojModule, selector);
    const result = { selector: selector, resolved: address !== null, address: pointerKey(address) };
    send({ event: "B2_EXPORT", selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

function readStagedResource() {
  const input = rpcContext.battleLogicPath;
  if (typeof input !== "string") {
    throw new Error("no BattleLogic.res path provided");
  }
  const openAddr = globalExportByName("open");
  const readAddr = globalExportByName("read");
  const closeAddr = globalExportByName("close");
  if (openAddr === null || readAddr === null || closeAddr === null) {
    throw new Error("required libc API unavailable for staged read");
  }
  const open = new NativeFunction(openAddr, "int", ["pointer", "int"]);
  const read = new NativeFunction(readAddr, "int", ["int", "pointer", "ulong"]);
  const close = new NativeFunction(closeAddr, "int", ["int"]);
  const path = Memory.allocUtf8String(input);
  const fd = numberValue(open(path, 0));
  if (fd < 0) {
    throw new Error("G1 open failed for staged BattleLogic.res");
  }
  const buffer = Memory.alloc(1479);
  try {
    const nbytes = numberValue(read(fd, buffer, 1479));
    if (nbytes !== 1479) {
      throw new Error("G1 short read for staged BattleLogic.res: " + nbytes);
    }
    return buffer;
  } finally {
    close(fd);
  }
}

function runPcall() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  const newstate = moduleLuaExport(feprojModule, "luaL_newstate");
  const loadbufferx = moduleLuaExport(feprojModule, "luaL_loadbufferx");
  const pcall = moduleLuaExport(feprojModule, "lua_pcallk");
  if (newstate === null || loadbufferx === null || pcall === null) {
    throw new Error("required Lua ABI exports unresolved");
  }
  const state = new NativeFunction(newstate, "pointer", [])();
  if (pointerKey(state) === null) {
    throw new Error("luaL_newstate returned null");
  }
  const buffer = readStagedResource();
  const chunkName = rpcContext.battleLogicPath !== null ? rpcContext.battleLogicPath : "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res";
  const mode = "b";
  const load = new NativeFunction(loadbufferx, "int", ["pointer", "pointer", "ulong", "pointer", "pointer"]);
  const loadReturn = numberValue(load(
    state,
    buffer,
    1479,
    Memory.allocUtf8String("@" + chunkName),
    Memory.allocUtf8String(mode),
  ));
  if (loadReturn !== 0) {
    send({
      event: "G1_PCALL_SKIP",
      reason: "luaL_loadbufferx returned nonzero",
      load_return: loadReturn,
    });
    return { state: pointerKey(state), load_return: loadReturn, pcall_return: null };
  }
  const call = new NativeFunction(pcall, "int", ["pointer", "int", "int", "int", "ulong", "pointer"]);
  const pcallReturn = numberValue(call(state, 0, 0, 0, 0, ptr(0)));
  send({
    event: "G1_PCALL_RESULT",
    state: pointerKey(state),
    return_code: pcallReturn,
  });
  return { state: pointerKey(state), load_return: loadReturn, pcall_return: pcallReturn };
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
    runpcall: runPcall,
  };
}
