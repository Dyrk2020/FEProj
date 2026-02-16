'use strict';

// G1 spontaneous loader-edge observation hook (observe-only).
//
// Plan: docs/plans/2026-08-17-g1-spontaneous-chain.md
// Scope: observe whether a named FETest resource is opened/read by FEProj
//   itself (caller_module == libFEProj.so) and fed into the Lua loader
//   spontaneously (no controlled luaL_loadbufferx call).  This is the
//   "spontaneous" edge that the controlled form (b) could not establish.
//   G1-resource-to-Lua-dispatch remains NOT_ESTABLISHED; this hook only
//   OBSERVES, never announces PASS.
//
// Hard constraints: helper package dev.wildriftresearch.logicharness only;
//   never attach the official package; never wide-scan FETest/FMN strings;
//   never blind-call internal VAs; never invent addresses (every anchor cites
//   its static source; uncertain anchors are marked 'TBD-CONFIRM' and are
//   resolved dynamically, never guessed).
//
// U2 pin-down (plan §1): the string "luaL_loadbuffer %d--%s" (runtime RVA
//   0x565d9b2 substring / 0x565d9a0 full "LuaEnv::DoCommand luaL_loadbuffer
//   %d--%s") is referenced by core LuaEnv::DoCommand @ 0x15898a4 (ADRP+ADD at
//   0x15898f0).  Caller chain (plan §1.4):
//     0x3ec3464 (LuaManager wrapper, indirect) -> 0x1588144 (island-27 entry)
//       -> 0x1588258 (ts_check) -> 0x1589728 (DoCommand entry)
//       -> 0x15898a4 (core DoCommand) -> luaL_loadbufferx / lua_pcallk
//   Second path into core: check driver 0x158C44C @0x158c524.
//
// Anchor sources (plan §3.3):
//   A1 core LuaEnv::DoCommand  0x15898a4  plan §1.3 (references the string)
//   A2 DoCommand entry         0x1589728  plan §1.4
//   A3 ts_check                0x1588258  callee-158853c.md §2
//   A4 check driver            0x158C44C  CALLERS.md §2.4
//   A5 LuaManager wrapper      0x3ec3464  CALLERS.md §2.1 (indirect entry)
//   A6 island-27 entry         0x1588144  plan §1.4
//   A7 validator D             0x3EC3F28  validator-audit.md §3
//   A8 registrar callsite      0x3EC41E8  validator-audit.md §3
//   A9 registrar body          0x158853C  callee-158853c.md §1
//   A10 testscript_ctx_init    0x3EC3534  validator-audit.md §2
//   A11 flat loader entry      0x194CC44  validator-audit.md §5
//   A12 teardown               0x1587F44  callee-158853c.md §2
//   A13 dispatch gate          0x15883A4  BINDINGS.md §0
//   A14 dispatch trampoline    0x1589AB0  BINDINGS.md §0
//   A15 dispatch 881           0x1589ACC  BINDINGS.md §0
// Exported Lua ABI (resolved dynamically, never hardcoded):
//   luaL_newstate, lua_load, luaL_loadbufferx, luaL_loadfilex, lua_pcallk.
//   NOTE (g1-pcall-review.md): lua_pcall is NOT in .dynsym (only lua_pcallk).

const TARGET_NAME = 'libFEProj.so';
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const MAX_HEX_BYTES = 4096;
const LUA53_FORMAT1_HEADER = [0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01];
const FETEST_MARKER = 'fetest';
const BATTLE_LOGIC_MARKER = 'battlelogic';

// Locked inputs (SHA bound on the host side; sizes used for staging reads).
const TESTMAIN_SIZE = 698;
const BATTLE_LOGIC_SIZE = 1479;

// U2-pinned internal anchors (runtime RVA; attach at base + RVA after load).
const INTERNAL_ANCHORS = [
  // [rva, label, argSummary]
  [0x15898A4, 'core_luaenv_docommand', (args) => ({ state: pointerKey(args[0]), g_buf: pointerKey(args[1]), g_len: numberValue(args[2]) })],
  [0x1589728, 'docommand_entry', (args) => ({ state: pointerKey(args[0]), g_buf: pointerKey(args[1]), g_len: numberValue(args[2]), g_len2: numberValue(args[3]) })],
  [0x1588258, 'ts_check', (args) => ({ state: pointerKey(args[0]) })],
  [0x158C44C, 'check_driver', (args) => ({ state: pointerKey(args[0]), g_buf: pointerKey(args[1]), g_len: numberValue(args[2]), g_len2: numberValue(args[3]) })],
  [0x3EC3464, 'luamanager_wrapper', (args) => ({ this_: pointerKey(args[0]) })],
  [0x1588144, 'island27_entry', (args) => ({ this_: pointerKey(args[0]) })],
  [0x3EC3F28, 'validator_D_entry', (args) => ({ this_: pointerKey(args[0]), blob: pointerKey(args[2]), len: numberValue(args[3]), flag: numberValue(args[4]), ctx: pointerKey(args[5]) })],
  [0x3EC41E8, 'registrar_callsite', (args) => ({})],
  [0x158853C, 'registrar_body', (args) => ({ src: pointerKey(args[0]), len: numberValue(args[1]), ctx: pointerKey(args[2]) })],
  [0x3EC3534, 'testscript_ctx_init', (args) => ({ this_: pointerKey(args[0]) })],
  [0x194CC44, 'flat_loader_entry', (args) => ({ this_: pointerKey(args[0]) })],
  [0x1587F44, 'teardown', (args) => ({})],
  [0x15883A4, 'dispatch_gate', (args) => ({ this_: pointerKey(args[0]) })],
  [0x1589AB0, 'dispatch_trampoline', (args) => ({ this_: pointerKey(args[0]) })],
  [0x1589ACC, 'dispatch_881', (args) => ({ this_: pointerKey(args[0]) })],
];

const fdPaths = new Map();
const attachedLuaLoaders = new Set();
const attachedLuaStates = new Set();
const attachedPCall = new Set();
const attachedAnchors = new Set();

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;

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
    if (typeof value.toInt32 === 'function') {
      return value.toInt32();
    }
    if (typeof value.toUInt32 === 'function') {
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
    return text === '0' || text === '0x0' ? null : text;
  } catch (_) {
    return null;
  }
}

function isFETestPath(path) {
  if (path === null || path === undefined) {
    return false;
  }
  const normalized = path.replace(/\\/g, '/').toLowerCase();
  return normalized.indexOf(FETEST_MARKER) !== -1 || normalized.indexOf(BATTLE_LOGIC_MARKER) !== -1;
}

function headHex(buffer, byteCount) {
  if (buffer === null || buffer === undefined) {
    return null;
  }
  try {
    const bytes = new Uint8Array(buffer.readByteArray(byteCount));
    let hex = '';
    for (let index = 0; index < bytes.length; index += 1) {
      hex += bytes[index].toString(16).padStart(2, '0');
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
  let expected = '';
  for (let index = 0; index < LUA53_FORMAT1_HEADER.length; index += 1) {
    expected += LUA53_FORMAT1_HEADER[index].toString(16).padStart(2, '0');
  }
  return head16Hex.slice(0, expected.length) === expected;
}

function globalExportByName(name) {
  if (typeof Module === 'undefined') {
    return null;
  }
  try {
    if (typeof Module.findExportByName === 'function') {
      const address = Module.findExportByName(null, name);
      if (address !== null) {
        return address;
      }
    }
  } catch (_) {
    // fall through
  }
  if (typeof Module.findGlobalExportByName === 'function') {
    return Module.findGlobalExportByName(name);
  }
  return null;
}

function moduleLuaExport(module, name) {
  if (module !== null && module !== undefined && typeof module.findExportByName === 'function') {
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

// --- fetest open/read/close observation (with caller attribution) ---------

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
      const caller = callerInfo(this);
      send({
        event: 'FETEST_OPEN',
        api: name,
        path: this.path,
        fd: fd,
        flags: this.flags,
        caller_module: caller.caller_module,
        caller_rva: caller.caller_rva,
        priority: 'high',
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
      const caller = callerInfo(this);
      send({
        event: 'FETEST_READ',
        api: name,
        path: this.path,
        fd: this.fd,
        nbytes: nbytes,
        head16_hex: head16Hex,
        head32_hex: head32Hex,
        buffer_hex: bufferHex,
        caller_module: caller.caller_module,
        caller_rva: caller.caller_rva,
        priority: isLua53Format1(head16Hex) ? 'high' : 'normal',
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

// --- Lua loader observation ------------------------------------------------

function attachLuaState(module) {
  const name = 'luaL_newstate';
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
        event: 'B2_LUA_STATE',
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
      // Dynamic attribution (plan §1.6): flag whether the caller RVA falls
      // within the U2-pinned core LuaEnv::DoCommand body (0x15898a4..0x1589a1c).
      let callerIsDoCommand = false;
      if (this.caller.caller_module === TARGET_NAME && this.caller.caller_rva !== null) {
        try {
          const rva = parseInt(this.caller.caller_rva, 16);
          callerIsDoCommand = rva >= 0x15898A4 && rva < 0x1589A1C;
        } catch (_) {
          callerIsDoCommand = false;
        }
      }
      send({
        event: 'LUA_LOAD',
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
        caller_is_docommand: callerIsDoCommand,
      });
    },
  });
  attachedLuaLoaders.add(name);
}

function attachPCall(module) {
  const name = 'lua_pcallk';
  if (attachedPCall.has(name)) {
    return;
  }
  const address = moduleLuaExport(module, name);
  if (address === null) {
    return;
  }
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
        event: 'LUA_PCALL',
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
  attachLuaLoader(module, 'lua_load', false, 3, 4);
  attachLuaLoader(module, 'luaL_loadbufferx', true, 3, 4);
  attachLuaLoader(module, 'luaL_loadfilex', false, 1, 2);
  attachPCall(module);
}

// --- internal anchors (plan §3.3, U2-pinned) --------------------------------

function attachInternalAnchor(module, rva, label, argSummary) {
  if (attachedAnchors.has(label)) {
    return;
  }
  const address = module.base.add(rva);
  try {
    Interceptor.attach(address, {
      onEnter(args) {
        let summary = {};
        try {
          summary = argSummary(args);
        } catch (_) {
          summary = {};
        }
        const caller = callerInfo(this);
        send({
          event: 'ANCHOR_ENTER',
          anchor: label,
          rva: '0x' + rva.toString(16),
          caller_module: caller.caller_module,
          caller_rva: caller.caller_rva,
          args: summary,
        });
      },
    });
    attachedAnchors.add(label);
    send({ event: 'ANCHOR_ATTACH', anchor: label, rva: '0x' + rva.toString(16), attached: true });
  } catch (error) {
    send({ event: 'ANCHOR_ATTACH', anchor: label, rva: '0x' + rva.toString(16), attached: false, error: String(error) });
  }
}

function attachInternalAnchors(module) {
  for (const [rva, label, argSummary] of INTERNAL_ANCHORS) {
    attachInternalAnchor(module, rva, label, argSummary);
  }
}

function attachFEProjObservation(module) {
  feprojModule = module;
  ensureLuaHooks(module);
  attachInternalAnchors(module);
  send({
    event: 'B2_LUA_HOOK_ATTACH_READY',
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
    if (typeof Process.findModuleByName === 'function') {
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
    event: 'B2_MODULE_LOAD',
    library: TARGET_NAME,
    base: feprojBase,
    size: feprojSize,
    loaded_via: 'java-system-load',
  });
  attachFEProjObservation(module);
  return true;
}

function installObservers() {
  attachOpen('open', 0, 1);
  attachOpen('openat', 1, 2);
  attachRead('read');
  attachRead('pread64');
  attachClose('close');
  send({ event: 'B2_OBSERVER_READY', via: 'java-system-load' });
}

function environment() {
  return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id };
}

function waitFEProjLoaded(timeoutMs) {
  const began = Date.now();
  while (!tryDetectFEProj()) {
    if (Date.now() - began > (typeof timeoutMs === 'number' && timeoutMs > 0 ? timeoutMs : LOAD_TIMEOUT_MS)) {
      throw new Error('timed out waiting for libFEProj.so to appear via java System.load');
    }
    Thread.sleep(50);
  }
  return { name: TARGET_NAME, base: feprojBase, size: feprojSize };
}

function probeLuaExports() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const selectors = ['luaL_newstate', 'luaL_loadbufferx', 'lua_load', 'luaL_loadfilex', 'lua_pcallk'];
  return selectors.map((selector) => {
    const address = moduleLuaExport(feprojModule, selector);
    const result = { selector: selector, resolved: address !== null, address: pointerKey(address) };
    send({ event: 'B2_EXPORT', selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

// --- registry pre-read (U3/U4, read-only) ----------------------------------

function readPointerAt(rva) {
  try {
    const value = feprojModule.base.add(rva).readPointer();
    return pointerKey(value);
  } catch (_) {
    return null;
  }
}

function readU32At(rva) {
  try {
    return feprojModule.base.add(rva).readU32();
  } catch (_) {
    return null;
  }
}

function preReadRegistry() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const snapshot = {
    g_ctx_0x726D0C8: readPointerAt(0x726D0C8),
    g_buf_0x726D0D0: readPointerAt(0x726D0D0),
    g_len_0x726D0D8: readU32At(0x726D0D8),
    ctx_cache_0x726DEA0: readPointerAt(0x726DEA0),
    state_0x726D0E0: readPointerAt(0x726D0E0),
  };
  send({ event: 'REGISTRY_PREREAD', snapshot: snapshot });
  return snapshot;
}

// --- staged resource read (via observed open/read surface) ------------------

function readStagedFile(path, size) {
  const openAddr = globalExportByName('open');
  const readAddr = globalExportByName('read');
  const closeAddr = globalExportByName('close');
  if (openAddr === null || readAddr === null || closeAddr === null) {
    throw new Error('required libc API unavailable for staged read');
  }
  const open = new NativeFunction(openAddr, 'int', ['pointer', 'int']);
  const read = new NativeFunction(readAddr, 'int', ['int', 'pointer', 'ulong']);
  const close = new NativeFunction(closeAddr, 'int', ['int']);
  const pathPtr = Memory.allocUtf8String(path);
  const fd = numberValue(open(pathPtr, 0));
  if (fd < 0) {
    throw new Error('open failed for staged file: ' + path);
  }
  const buffer = Memory.alloc(size);
  try {
    const nbytes = numberValue(read(fd, buffer, size));
    if (nbytes !== size) {
      throw new Error('short read for staged file: ' + path + ' got ' + nbytes);
    }
    return buffer;
  } finally {
    close(fd);
  }
}

// --- Plan A: controlled call to validator D at base+0x3EC3F28 ---------------

function callValidatorD(blob, len, flag, ctx) {
  const validator = new NativeFunction(
    feprojModule.base.add(0x3EC3F28),
    'int',
    ['pointer', 'pointer', 'pointer', 'uint', 'uint', 'pointer'],
  );
  const ret = numberValue(validator(ctx, ptr(0), blob, len, flag, ctx));
  send({
    event: 'VALIDATOR_D_RETURN',
    blob: pointerKey(blob),
    len: len,
    flag: flag,
    ctx: pointerKey(ctx),
    return_code: ret,
  });
  return ret;
}

function planA1() {
  // A-1: validator D with locked TestMain.res blob (flag=1 -> four-way stamp scan).
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const ctx = readPointerAt(0x726DEA0);
  if (ctx === null) {
    send({ event: 'PLAN_A1_SKIP', reason: 'ctx_cache_0x726DEA0 is null' });
    return { skipped: true, reason: 'ctx_cache_0x726DEA0 is null' };
  }
  const blob = readStagedFile(rpcContext.testMainPath, TESTMAIN_SIZE);
  const ret = callValidatorD(blob, TESTMAIN_SIZE, 1, ptr(ctx));
  return { skipped: false, return_code: ret, ctx: ctx };
}

function planA2() {
  // A-2: validator D with a stamp-less (all-zero) blob -> expected 0x45B (no stamp hit).
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const ctx = readPointerAt(0x726DEA0);
  const blob = Memory.alloc(TESTMAIN_SIZE);
  blob.writeByteArray(new Uint8Array(TESTMAIN_SIZE));
  const ret = callValidatorD(blob, TESTMAIN_SIZE, 1, ctx === null ? ptr(0) : ptr(ctx));
  return { return_code: ret, ctx: ctx };
}

// --- Plan B: controlled call to check driver base+0x158C44C -----------------

function planB1() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const state = readPointerAt(0x726D0E0);
  const g_buf = readPointerAt(0x726D0D0);
  const g_len = readU32At(0x726D0D8);
  if (state === null || g_buf === null) {
    send({ event: 'PLAN_B1_SKIP', reason: 'state or g_buf null', state: state, g_buf: g_buf, g_len: g_len });
    return { skipped: true, reason: 'state or g_buf null', state: state, g_buf: g_buf, g_len: g_len };
  }
  const checkDriver = new NativeFunction(
    feprojModule.base.add(0x158C44C),
    'int',
    ['pointer', 'pointer', 'uint', 'uint'],
  );
  const ret = numberValue(checkDriver(ptr(state), ptr(g_buf), g_len, g_len));
  send({ event: 'CHECK_DRIVER_RETURN', state: state, g_buf: g_buf, g_len: g_len, return_code: ret });
  return { skipped: false, return_code: ret, state: state, g_buf: g_buf, g_len: g_len };
}

// --- Plan T3: controlled call to core LuaEnv::DoCommand base+0x15898A4 ------

function planT3() {
  // T3: controlled call to core DoCommand (0x15898A4) with (state, g_buf, g_len).
  // Precondition: state@0x726D0E0 and g_buf@0x726D0D0 non-null (observe-only,
  // never fabricate).  If null, record 0x459-style not-ready and stop.
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const state = readPointerAt(0x726D0E0);
  const g_buf = readPointerAt(0x726D0D0);
  const g_len = readU32At(0x726D0D8);
  if (state === null || g_buf === null || g_len === 0) {
    send({ event: 'PLAN_T3_SKIP', reason: 'state or g_buf null or g_len 0', state: state, g_buf: g_buf, g_len: g_len });
    return { skipped: true, reason: 'state or g_buf null or g_len 0', state: state, g_buf: g_buf, g_len: g_len };
  }
  const doCommand = new NativeFunction(
    feprojModule.base.add(0x15898A4),
    'int',
    ['pointer', 'pointer', 'uint'],
  );
  const ret = numberValue(doCommand(ptr(state), ptr(g_buf), g_len));
  send({ event: 'PLAN_T3_RETURN', state: state, g_buf: g_buf, g_len: g_len, return_code: ret });
  return { skipped: false, return_code: ret, state: state, g_buf: g_buf, g_len: g_len };
}

// --- U2 bisect: locate "luaL_loadbuffer %d--%s" string and references -------

function scanLoadbufferString() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const needle = 'luaL_loadbuffer %d--%s';
  const needleBytes = [];
  for (let index = 0; index < needle.length; index += 1) {
    needleBytes.push(needle.charCodeAt(index));
  }
  const pattern = needleBytes.map((byte) => byte.toString(16).padStart(2, '0')).join(' ');
  const matches = [];
  const ranges = [];
  try {
    const moduleRanges = feprojModule.enumerateRanges('r--');
    for (const range of moduleRanges) {
      ranges.push({ base: pointerKey(range.base), size: range.size, protection: range.protection });
      try {
        const results = Memory.scanSync(range.base, range.size, pattern);
        for (const match of results) {
          matches.push({ address: pointerKey(match.address), rva: pointerKey(match.address.sub(feprojModule.base)) });
        }
      } catch (_) {
        // skip unreadable sub-range
      }
    }
  } catch (error) {
    send({ event: 'U2_SCAN', pattern: pattern, error: String(error), matches: matches, ranges: ranges });
    return { pattern: pattern, error: String(error), matches: matches, ranges: ranges };
  }
  send({ event: 'U2_SCAN', pattern: pattern, matches: matches, ranges: ranges });
  return { pattern: pattern, matches: matches, ranges: ranges };
}

let rpcContext = { battleLogicPath: null, testMainPath: null };

installObservers();
setInterval(tryDetectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== 'undefined') {
  rpc.exports = {
    environment: environment,
    setbattlelogicpath: (path) => {
      rpcContext.battleLogicPath = path;
      return { battle_logic_path: path };
    },
    settestmainpath: (path) => {
      rpcContext.testMainPath = path;
      return { test_main_path: path };
    },
    waitfeprojloaded: waitFEProjLoaded,
    probeluaexports: probeLuaExports,
    prereadregistry: preReadRegistry,
    plana1: planA1,
    plana2: planA2,
    planb1: planB1,
    plant3: planT3,
    scanloadbufferstr: scanLoadbufferString,
  };
}
