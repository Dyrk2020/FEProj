"use strict";

// G2 registration observation hook (observe-only + controlled drive).
//
// Plan: G2-REGISTRATION-PLAN.md (track-a).  Two surfaces:
//   B-1 (runregobserve): prove the 792 native event registrations happened
//       during Java System.load (init_array) and that the 881-class
//       dispatcher does NOT run spontaneously.  Because Frida cannot attach
//       internal hooks synchronously inside the linker's call_constructors
//       (Interceptor.attach is async; init_array runs to completion first),
//       the 792 registrations are verified by CONTROLLED R1+R3 lookup:
//       for each of the 792 locked names, call R1 (name hash) twice and
//       R3 (map lookup) once, then compare the returned handler RVA against
//       the locked registry.  The R1/R2 hooks are still attached (poll-based)
//       and their counts are reported honestly (expected 0 in the window).
//   A   (runregistration): controlled drive of the 881-class Lua binding
//       registration, replicating the qemu probe-final recipe:
//         luaL_newstate -> luaL_openlibs -> prime registry key
//         (CLSKEY = base + 0x726d101, 5 sub-table keys) -> NativeCallback
//         loop dispatcher(base+0x1589ACC, c=0..880) inside a live VM frame
//         via lua_pushcclosure + lua_pcallk.
//
// Hook anchors (12): R1 0x1B13498, R2 0x42F2580, R3 0x42F28C4,
//   L1 0x1589ACC, L2 0x164AE88, L3 0x164AB04,
//   G1 lua_setglobal, G2 lua_rawset, G3 lua_rawsetp,
//   data tree 0x82E72A8 / inverse 0x82E72B0 (read-only), branch 0x5413D24.

const TARGET_NAME = "libFEProj.so";
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const LUA_REGISTRYINDEX = -1001000; // 0xFFF0B9D8
const CLSKEY_OFFSET = 0x726d101;
const SUB_KEYS = [0x5e7, 0x6e7, 0xc07, 0xc1a, 0xdad];
const NUM_CASES = 881;

// Internal anchors (runtime VA == RVA; attach at base + RVA after DT_INIT).
const RVA_R1 = 0x1B13498;      // name hash
const RVA_R2 = 0x42F2580;      // map write
const RVA_R3 = 0x42F28C4;      // map lookup (x0=hash, x1=func -> handler)
const RVA_L1 = 0x1589ACC;      // dispatcher
const RVA_L2 = 0x164AE88;      // beginClass
const RVA_L3 = 0x164AB04;      // registerClass
const RVA_TREE = 0x82E72A8;    // std::map tree base (read-only)
const RVA_INV = 0x82E72B0;     // inverse map (read-only)
const RVA_BRANCH = 0x5413D24;  // hook branch (read-only, expected not taken)

// Exported Lua ABI selectors (all verified present in libFEProj.so dynsym).
const LUA_EXPORTS = [
  "luaL_newstate", "luaL_openlibs", "lua_createtable", "lua_rawsetp",
  "lua_rawset", "lua_pushcclosure", "lua_pcallk", "lua_getglobal",
  "lua_type", "lua_next", "lua_gettop", "lua_pushvalue", "lua_settop",
  "lua_pushnil", "lua_pushlightuserdata", "lua_rawgetp", "lua_setglobal",
];

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;
let internalHooksAttached = false;
let luaHooksAttached = false;
let driving = false;
let expectedNames = [];
let registryNames = []; // [{name, len}] for the 792-event verification

const counters = {
  r1_enter: 0, r1_leave: 0,
  r2_enter: 0, r2_leave: 0,
  r3_enter: 0, r3_leave: 0,
  l1_enter: 0, l1_leave: 0,
  l2_enter: 0, l3_enter: 0,
  g1_enter: 0, g2_enter: 0, g3_enter: 0,
  branch_enter: 0,
};
const r1Calls = [];   // {name, len, retval_u32}
const r2Calls = [];   // {hash_hex, handler_abs, handler_rva, name, v0, v1}
const l1Cases = new Set();
const l2Names = [];
const l3Names = [];
const g1Names = [];
const hookStatus = {};

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

function u32(value) {
  try {
    return value.toUInt32();
  } catch (_) {
    return 0;
  }
}

function u64Hex(value) {
  try {
    return value.toString();
  } catch (_) {
    return null;
  }
}

function handlerRva(handler) {
  const s = u64Hex(handler);
  if (s === "0xffffffffffffffff" || s === "18446744073709551615") {
    return "0xffffffffffffffff"; // -1 sentinel (type-name nullsub entries)
  }
  if (feprojBase === null) {
    return null;
  }
  try {
    return handler.sub(feprojBase).toString();
  } catch (_) {
    return null;
  }
}

// Best-effort std::string read (libc++/libstdc++ both keep size at +8 in the
// long form; SSO keeps data at +0).  Not a judgement input.
function readStdString(ptr) {
  if (ptr === null || ptr === undefined) {
    return null;
  }
  try {
    const sizeAt8 = ptr.add(8).readU64();
    if (sizeAt8 > 0 && sizeAt8 < 64) {
      const dataPtr = ptr.readPointer();
      if (dataPtr !== null && !dataPtr.isNull()) {
        const s = dataPtr.readUtf8String(sizeAt8);
        if (s && s.length > 0) {
          return s;
        }
      }
    }
  } catch (_) {
    // fall through to SSO
  }
  try {
    const s = ptr.readUtf8String(64);
    if (s && s.length > 0) {
      return s;
    }
  } catch (_) {
    return null;
  }
  return null;
}

function readDataPoint(rva) {
  if (feprojBase === null) {
    return null;
  }
  try {
    const bytes = new Uint8Array(feprojBase.add(rva).readByteArray(16));
    let hex = "";
    for (let i = 0; i < bytes.length; i += 1) {
      hex += bytes[i].toString(16).padStart(2, "0");
    }
    return hex;
  } catch (_) {
    return null;
  }
}

function moduleLuaExport(module, name) {
  if (module !== null && module !== undefined && typeof module.findExportByName === "function") {
    try {
      const exported = module.findExportByName(name);
      if (exported !== null) {
        return exported;
      }
    } catch (_) {
      // fall through
    }
  }
  try {
    if (typeof Module !== "undefined" && typeof Module.findExportByName === "function") {
      return Module.findExportByName(null, name);
    }
  } catch (_) {
    return null;
  }
  return null;
}

// --- internal anchors (base + RVA) --------------------------------------

function attachInternal(name, rva, callbacks) {
  if (feprojBase === null) {
    hookStatus[name] = "no-base";
    return false;
  }
  const address = feprojBase.add(rva);
  try {
    Interceptor.attach(address, callbacks);
    hookStatus[name] = "attached";
    return true;
  } catch (error) {
    hookStatus[name] = "failed:" + String(error);
    return false;
  }
}

function attachInternalHooks(module) {
  if (internalHooksAttached) {
    return;
  }
  internalHooksAttached = true;

  // R1: name hash.  x0=name ptr, x1=len.  Returns 32-bit hash in w0.
  attachInternal("R1", RVA_R1, {
    onEnter(args) {
      counters.r1_enter += 1;
      this.name = safeUtf8(args[0]);
      this.len = numberValue(args[1]);
    },
    onLeave(retval) {
      counters.r1_leave += 1;
      const rec = { name: this.name, len: this.len, retval_u32: u32(retval) };
      r1Calls.push(rec);
      if (r1Calls.length <= 3) {
        send({ event: "R1_SAMPLE", name: this.name, len: this.len, retval_u32: rec.retval_u32 });
      }
    },
  });

  // R2: map write.  x0=hash, x1=handler.
  attachInternal("R2", RVA_R2, {
    onEnter(args) {
      counters.r2_enter += 1;
      this.hash = args[0];
      this.handler = args[1];
      let name = null;
      let v0 = null;
      let v1 = null;
      const n = r1Calls.length;
      if (n >= 2) {
        const a = r1Calls[n - 2];
        const b = r1Calls[n - 1];
        if (a.name !== null && a.name === b.name) {
          name = a.name;
          v0 = a.retval_u32;
          v1 = b.retval_u32;
        }
      }
      const rec = {
        hash_hex: u64Hex(this.hash),
        handler_abs: u64Hex(this.handler),
        handler_rva: handlerRva(this.handler),
        name: name,
        v0: v0,
        v1: v1,
      };
      r2Calls.push(rec);
      if (r2Calls.length <= 3) {
        send({ event: "R2_SAMPLE", hash_hex: rec.hash_hex, handler_abs: rec.handler_abs, name: name });
      }
    },
    onLeave() {
      counters.r2_leave += 1;
    },
  });

  // R3: map lookup (read-only).  x0=hash, x1=func -> handler.
  attachInternal("R3", RVA_R3, {
    onEnter(args) {
      counters.r3_enter += 1;
      this.hash = u64Hex(args[0]);
      this.func = u64Hex(args[1]);
    },
    onLeave(retval) {
      counters.r3_leave += 1;
      if (counters.r3_enter <= 3) {
        send({ event: "R3_SAMPLE", hash: this.hash, func: this.func, handler: u64Hex(retval) });
      }
    },
  });

  // L1: dispatcher.  x0=L, x1=case.
  attachInternal("L1", RVA_L1, {
    onEnter(args) {
      counters.l1_enter += 1;
      const c = numberValue(args[1]);
      l1Cases.add(c);
      if (!driving) {
        send({ event: "L1_SPONTANEOUS", case: c, state: pointerKey(args[0]) });
      }
    },
    onLeave() {
      counters.l1_leave += 1;
    },
  });

  // L2: beginClass.  x0=buf, x1=name(std::string), x2=flag.
  attachInternal("L2", RVA_L2, {
    onEnter(args) {
      counters.l2_enter += 1;
      const name = readStdString(args[1]);
      if (name !== null && l2Names.length < 20) {
        l2Names.push(name);
      }
    },
  });

  // L3: registerClass.  x0=buf, x1=name(std::string), x2=src, x3=id.
  attachInternal("L3", RVA_L3, {
    onEnter(args) {
      counters.l3_enter += 1;
      const name = readStdString(args[1]);
      if (name !== null && l3Names.length < 20) {
        l3Names.push(name);
      }
    },
  });

  // Branch: qword_82E72A0 != 0 hook branch (expected not taken).
  attachInternal("BRANCH", RVA_BRANCH, {
    onEnter() {
      counters.branch_enter += 1;
      send({ event: "BRANCH_TAKEN", note: "qword_82E72A0 != 0 hook branch entered" });
    },
  });
}

// --- exported Lua ABI hooks ----------------------------------------------

function attachLuaHooks(module) {
  if (luaHooksAttached) {
    return;
  }
  luaHooksAttached = true;

  const luaLNewstate = moduleLuaExport(module, "luaL_newstate");
  if (luaLNewstate !== null) {
    try {
      Interceptor.attach(luaLNewstate, {
        onLeave(retval) {
          send({ event: "B2_LUA_STATE", selector: "luaL_newstate", state: pointerKey(retval) });
        },
      });
      hookStatus["G-luaL_newstate"] = "attached";
    } catch (error) {
      hookStatus["G-luaL_newstate"] = "failed:" + String(error);
    }
  }

  const g1 = moduleLuaExport(module, "lua_setglobal");
  if (g1 !== null) {
    try {
      Interceptor.attach(g1, {
        onEnter(args) {
          counters.g1_enter += 1;
          const name = safeUtf8(args[1]);
          if (name !== null && g1Names.length < 20) {
            g1Names.push(name);
          }
        },
      });
      hookStatus["G1"] = "attached";
    } catch (error) {
      hookStatus["G1"] = "failed:" + String(error);
    }
  }

  const g2 = moduleLuaExport(module, "lua_rawset");
  if (g2 !== null) {
    try {
      Interceptor.attach(g2, {
        onEnter() {
          counters.g2_enter += 1;
        },
      });
      hookStatus["G2"] = "attached";
    } catch (error) {
      hookStatus["G2"] = "failed:" + String(error);
    }
  }

  const g3 = moduleLuaExport(module, "lua_rawsetp");
  if (g3 !== null) {
    try {
      Interceptor.attach(g3, {
        onEnter() {
          counters.g3_enter += 1;
        },
      });
      hookStatus["G3"] = "attached";
    } catch (error) {
      hookStatus["G3"] = "failed:" + String(error);
    }
  }
}

// --- module detection ----------------------------------------------------

function tryDetectFEProj() {
  if (feprojLoaded) {
    return true;
  }
  let module = null;
  try {
    module = Process.findModuleByName(TARGET_NAME);
  } catch (_) {
    module = null;
  }
  if (module === null || module === undefined) {
    return false;
  }
  feprojLoaded = true;
  feprojBase = module.base;
  feprojSize = module.size;
  feprojModule = module;
  send({
    event: "B2_MODULE_LOAD",
    library: TARGET_NAME,
    base: pointerKey(module.base),
    size: module.size,
    loaded_via: "java-system-load",
    captured_at: "poll-detect",
  });
  attachInternalHooks(module);
  attachLuaHooks(module);
  return true;
}

// --- RPC helpers ---------------------------------------------------------

function resolveExports() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  const resolved = {};
  for (const name of LUA_EXPORTS) {
    resolved[name] = moduleLuaExport(feprojModule, name);
  }
  return resolved;
}

function requireExport(resolved, name) {
  const address = resolved[name];
  if (address === null || address === undefined) {
    throw new Error("required Lua ABI export unresolved: " + name);
  }
  return address;
}

function countGKeys(L, exp) {
  const gName = Memory.allocUtf8String("_G");
  exp.lua_getglobal(L, gName);   // [_G]
  exp.lua_pushnil(L);            // [_G, nil]
  let count = 0;
  while (exp.lua_next(L, -2) !== 0) { // [_G, key, value]
    count += 1;
    exp.lua_settop(L, -2);       // [_G, key]
  }
  exp.lua_settop(L, 0);          // []
  return count;
}

function rawgetpType(L, exp, key) {
  exp.lua_rawgetp(L, LUA_REGISTRYINDEX, key); // push V[key]
  const t = exp.lua_type(L, -1);
  exp.lua_settop(L, -2);         // pop
  return t;
}

function primeRegistry(L, exp, clsKey) {
  exp.lua_createtable(L, 0, 8);              // [classreg]
  exp.lua_pushvalue(L, -1);                  // [classreg, classreg]
  exp.lua_rawsetp(L, LUA_REGISTRYINDEX, clsKey); // V[clsKey]=classreg, pop -> [classreg]
  for (const k of SUB_KEYS) {
    exp.lua_createtable(L, 0, 8);            // [classreg, sub]
    exp.lua_rawsetp(L, -2, ptr(k));          // classreg[k]=sub, pop -> [classreg]
  }
  exp.lua_settop(L, 0);                      // []
}

function driveDispatcher(L, exp) {
  const dispatcher = new NativeFunction(feprojBase.add(RVA_L1), "pointer", ["pointer", "int"]);
  let nonzero = 0;
  const driver = new NativeCallback((state) => {
    for (let c = 0; c < NUM_CASES; c += 1) {
      const ret = dispatcher(state, c);
      if (ret !== null && !ret.isNull()) {
        nonzero += 1;
      }
    }
    return 0;
  }, "int", ["pointer"]);
  exp.lua_pushcclosure(L, driver, 0);
  const rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));
  return { pcallk_rc: rc, dispatcher_nonzero: nonzero };
}

function judgeRegistration(L, exp) {
  let probeTotal = 0;
  let probeNonzero = 0;
  const missing = [];
  for (const name of expectedNames) {
    const namePtr = Memory.allocUtf8String(name);
    exp.lua_getglobal(L, namePtr);   // push _G[name]
    const t = exp.lua_type(L, -1);
    probeTotal += 1;
    if (t !== 0) {
      probeNonzero += 1;
    } else {
      missing.push(name);
    }
    exp.lua_settop(L, -2);           // pop
  }
  const gKeys = countGKeys(L, exp);
  return { probe_total: probeTotal, probe_nonzero: probeNonzero, missing: missing, g_keys: gKeys };
}

// Controlled verification of the 792-event registry: for each locked name,
// R1(name,len) twice -> hash = v0 ^ (v1 >> 16); R3(hash, 0) -> handler.
function verify792() {
  if (!feprojLoaded || feprojBase === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  const r1 = new NativeFunction(feprojBase.add(RVA_R1), "uint32", ["pointer", "int", "int", "int"]);
  const r3 = new NativeFunction(feprojBase.add(RVA_R3), "pointer", ["uint64", "uint64"]);
  const results = [];
  for (const entry of registryNames) {
    const name = entry.name;
    const len = entry.len;
    const namePtr = Memory.allocUtf8String(name);
    const v0 = r1(namePtr, len, 0, 0);
    const v1 = r1(namePtr, len, 0, 0);
    const hash = (v0 ^ (v1 >>> 16)) >>> 0;
    let handler = null;
    let handlerRvaStr = null;
    try {
      const h = r3(hash, 0);
      handler = u64Hex(h);
      handlerRvaStr = handlerRva(h);
    } catch (error) {
      handler = "err:" + String(error);
    }
    results.push({ name: name, len: len, v0: v0, v1: v1, hash: hash, handler_abs: handler, handler_rva: handlerRvaStr });
  }
  return results;
}

// --- RPC surface ---------------------------------------------------------

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
  return { name: TARGET_NAME, base: pointerKey(feprojBase), size: feprojSize };
}

function probeLuaExports() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  return LUA_EXPORTS.map((selector) => {
    const address = moduleLuaExport(feprojModule, selector);
    const result = { selector: selector, resolved: address !== null, address: pointerKey(address) };
    send({ event: "B2_EXPORT", selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

function runregobserve(registryEntries) {
  if (!feprojLoaded) {
    throw new Error("libFEProj.so is not loaded");
  }
  if (Array.isArray(registryEntries)) {
    registryNames = registryEntries;
  }
  const treeHex = readDataPoint(RVA_TREE);
  const invHex = readDataPoint(RVA_INV);
  const verified = verify792();
  send({
    event: "REG_OBSERVE_RESULT",
    r1_enter: counters.r1_enter,
    r2_enter: counters.r2_enter,
    dispatcher_enter: counters.l1_enter,
    branch_enter: counters.branch_enter,
    tree_hex: treeHex,
    inv_hex: invHex,
    verified_count: verified.length,
  });
  return {
    r1_enter: counters.r1_enter,
    r1_leave: counters.r1_leave,
    r2_enter: counters.r2_enter,
    r2_leave: counters.r2_leave,
    r1r2_pairs: r2Calls.length,
    dispatcher_enter: counters.l1_enter,
    branch_enter: counters.branch_enter,
    tree_hex: treeHex,
    inv_hex: invHex,
    verified: verified,
    r2_calls: r2Calls,
    hook_status: hookStatus,
  };
}

function runregistration(names, registryEntries) {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  if (Array.isArray(names)) {
    expectedNames = names;
  }
  if (Array.isArray(registryEntries)) {
    registryNames = registryEntries;
  }
  const resolved = resolveExports();
  const exp = {};
  const sig = {
    luaL_newstate: ["pointer", []],
    luaL_openlibs: ["void", ["pointer"]],
    lua_createtable: ["void", ["pointer", "int", "int"]],
    lua_rawsetp: ["void", ["pointer", "int", "pointer"]],
    lua_rawset: ["void", ["pointer", "int"]],
    lua_pushcclosure: ["void", ["pointer", "pointer", "int"]],
    lua_pcallk: ["int", ["pointer", "int", "int", "int", "int", "pointer"]],
    lua_getglobal: ["int", ["pointer", "pointer"]],
    lua_type: ["int", ["pointer", "int"]],
    lua_next: ["int", ["pointer", "int"]],
    lua_gettop: ["int", ["pointer"]],
    lua_pushvalue: ["void", ["pointer", "int"]],
    lua_settop: ["void", ["pointer", "int"]],
    lua_pushnil: ["void", ["pointer"]],
    lua_pushlightuserdata: ["void", ["pointer", "pointer"]],
    lua_rawgetp: ["int", ["pointer", "int", "pointer"]],
    lua_setglobal: ["void", ["pointer", "pointer"]],
  };
  for (const name of LUA_EXPORTS) {
    const [ret, args] = sig[name];
    exp[name] = new NativeFunction(requireExport(resolved, name), ret, args);
  }

  // 1. new state
  const L = exp.luaL_newstate();
  if (L === null || L.isNull()) {
    throw new Error("luaL_newstate returned null");
  }
  // 2. open standard libs
  exp.luaL_openlibs(L);
  const stockKeys = countGKeys(L, exp);

  // 3. prime registry
  const clsKey = feprojBase.add(CLSKEY_OFFSET);
  const beforeType = rawgetpType(L, exp, clsKey);
  primeRegistry(L, exp, clsKey);
  const afterType = rawgetpType(L, exp, clsKey);
  send({
    event: "REG_PRIME",
    cls_key: pointerKey(clsKey),
    before_type: beforeType,
    after_type: afterType,
    stock_keys: stockKeys,
  });

  // 4. drive dispatcher inside a live VM frame
  driving = true;
  let drive;
  try {
    drive = driveDispatcher(L, exp);
  } finally {
    driving = false;
  }
  send({
    event: "DISPATCHER_DONE",
    pcallk_rc: drive.pcallk_rc,
    dispatcher_nonzero: drive.dispatcher_nonzero,
    dispatcher_enter: counters.l1_enter,
  });

  // 5. judge
  const judge = judgeRegistration(L, exp);
  send({
    event: "JUDGE_RESULT",
    probe_total: judge.probe_total,
    probe_nonzero: judge.probe_nonzero,
    g_keys: judge.g_keys,
    missing_count: judge.missing.length,
  });

  // 6. controlled 792-event registry verification (J5)
  const verified = verify792();

  return {
    state: pointerKey(L),
    cls_key: pointerKey(clsKey),
    stock_keys: stockKeys,
    prime_before_type: beforeType,
    prime_after_type: afterType,
    dispatcher_enter: counters.l1_enter,
    dispatcher_leave: counters.l1_leave,
    dispatcher_nonzero: drive.dispatcher_nonzero,
    pcallk_rc: drive.pcallk_rc,
    beginclass_enter: counters.l2_enter,
    registerclass_enter: counters.l3_enter,
    setglobal_enter: counters.g1_enter,
    rawset_enter: counters.g2_enter,
    rawsetp_enter: counters.g3_enter,
    probe_total: judge.probe_total,
    probe_nonzero: judge.probe_nonzero,
    missing: judge.missing,
    g_keys: judge.g_keys,
    l1_cases: Array.from(l1Cases).sort((a, b) => a - b),
    l2_names: l2Names,
    l3_names: l3Names,
    g1_names: g1Names,
    r1_enter: counters.r1_enter,
    r2_enter: counters.r2_enter,
    r2_calls: r2Calls,
    verified: verified,
    tree_hex: readDataPoint(RVA_TREE),
    inv_hex: readDataPoint(RVA_INV),
    branch_enter: counters.branch_enter,
    hook_status: hookStatus,
  };
}

function finalcounts() {
  return {
    dispatcher_enter: counters.l1_enter,
    r1_enter: counters.r1_enter,
    r2_enter: counters.r2_enter,
    branch_enter: counters.branch_enter,
  };
}

// --- boot ----------------------------------------------------------------

setInterval(tryDetectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== "undefined") {
  rpc.exports = {
    environment: environment,
    setbattlelogicpath: (path) => {
      // Accepted for runner compatibility; the registration drive does not
      // read BattleLogic.res (it only needs the locked DSO + a fresh VM).
      return { battle_logic_path: path };
    },
    setexpectednames: (names) => {
      expectedNames = Array.isArray(names) ? names : [];
      return { expected_names: expectedNames.length };
    },
    setregistrynames: (entries) => {
      registryNames = Array.isArray(entries) ? entries : [];
      return { registry_names: registryNames.length };
    },
    waitfeprojloaded: waitFEProjLoaded,
    probeluaexports: probeLuaExports,
    runregobserve: runregobserve,
    runregistration: runregistration,
    finalcounts: finalcounts,
  };
}
