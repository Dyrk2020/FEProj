"use strict";

// crit_rng_observe.mjs —  RNG  + FixRandom getter H 
//
// Plan: docs/plans/2026-08-17-crit-rng-fixrandom-hooks.md
// Evidence level: H (helper APK dev.wildriftresearch.logicharness + Frida ).
// Toolchain: Frida host/Gadget 17.15.5 (embedded Gadget listen 127.0.0.1:27042).
// Device: OnePlus Ace 3 (PJE110 / OP5CF9L1, arm64-v8a).
//
// Two observation surfaces:
//   C1 (flow evaluator crit path): hook A1/A2/A3/A4 (vtable+32 dispatch, event
//       dispatch core, isCrit write point).  Records vtable+32 dispatch target
//       RVA and isCrit write values.  If not triggered in the observation
//       window, reports c1_observed: false (NOT_OBSERVED) — no hard push.
//   C2 (FixRandom getter): reuse the G2-REGISTRATION-PLAN scheme-A controlled
//       drive (luaL_newstate -> luaL_openlibs -> prime registry ->
//       dispatcher(0..880)), then call FixRandom case-409 getters
//       (fix_seed/useed) via Lua API.  Records getter calls and values.
//
// Anchors (all in libFEProj.so, runtime VA == static VA, module size 0x8DDA000):
//   A1 0x4AFF72C  vtable+32 dispatch (crit trigger helper)
//   A2 0x4B067C0  flow step engine (vtable+32 dispatch, +232 isCrit read)
//   A3 0x1E8CD34  event dispatch core
//   A4 0x1FDAF40  isCrit write point (STRB W9,[X27,#0x1FA] = v30+506 = a14&1)
//   A5 0x4B0684C  +232 isCrit flag read (inside sub_4B067C0)
//   A6 0x15E2B00  FixRandom case-409 registrar
//   A7 0x1752E00  fix_seed getter (reads *(u64*)(a1+16))
//   A8 0x1753050  useed getter (reads *(u64*)(a1+24))
//   A9 0x1753A9C  battle attr getter (registration ref; body TBD)
//   A10 0x175307C FixRandom template registrar
//   A11 0x1B13498 name hash (792 registry)
//   A12 0x42F2580 map write
//   A13 0x42F28C4 map lookup (read-only)
//   A14 0x1589ACC 881-class dispatcher
//   A15 0x6ADB350 / 0x56BA2A0 / 0x720A800 FixRandom typeinfo/RTTI/vptr (data)
//   A16 0x6EC4438 NromalAttackPreCrit descriptor (data)
//   A17 0x57F5350 NromalAttackHurtCanCri (data)

const TARGET_NAME = "libFEProj.so";
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const LUA_REGISTRYINDEX = -1001000; // 0xFFF0B9D8
const CLSKEY_OFFSET = 0x726d101;
const SUB_KEYS = [0x5e7, 0x6e7, 0xc07, 0xc1a, 0xdad];
const NUM_CASES = 881;

// Internal anchors (runtime VA == RVA; attach at base + RVA after DT_INIT).
const RVA_A1 = 0x4AFF72C;      // vtable+32 dispatch (crit trigger helper)
const RVA_A2 = 0x4B067C0;      // flow step engine
const RVA_A3 = 0x1E8CD34;      // event dispatch core
const RVA_A4 = 0x1FDAF40;      // isCrit write point (inside sub_1FDA454)
const RVA_A5 = 0x4B0684C;      // +232 isCrit flag read (inside sub_4B067C0)
const RVA_A6 = 0x15E2B00;      // FixRandom case-409 registrar
const RVA_A7 = 0x1752E00;      // fix_seed getter
const RVA_A8 = 0x1753050;      // useed getter
const RVA_A9 = 0x1753A9C;      // battle attr getter (body TBD)
const RVA_A10 = 0x175307C;     // FixRandom template registrar
const RVA_A11 = 0x1B13498;     // name hash
const RVA_A12 = 0x42F2580;     // map write
const RVA_A13 = 0x42F28C4;     // map lookup (read-only)
const RVA_A14 = 0x1589ACC;     // 881-class dispatcher
const RVA_A15_TI = 0x6ADB350;  // FixRandom typeinfo (data)
const RVA_A15_RTTI = 0x56BA2A0; // FixRandom RTTI name (data)
const RVA_A15_VPTR = 0x720A800; // FixRandom vptr (data)
const RVA_A16 = 0x6EC4438;     // NromalAttackPreCrit descriptor (data)
const RVA_A17 = 0x57F5350;     // NromalAttackHurtCanCri (data)

// Exported Lua ABI selectors (all verified present in libFEProj.so dynsym).
const LUA_EXPORTS = [
  "luaL_newstate", "luaL_openlibs", "lua_createtable", "lua_rawsetp",
  "lua_rawset", "lua_pushcclosure", "lua_pcallk", "lua_getglobal",
  "lua_getfield", "lua_type", "lua_next", "lua_gettop", "lua_pushvalue",
  "lua_settop", "lua_pushnil", "lua_pushlightuserdata", "lua_rawgetp",
  "lua_setglobal",
];

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;
let internalHooksAttached = false;
let luaHooksAttached = false;
let driving = false;
let expectedNames = [];

const counters = {
  a1_enter: 0, a1_leave: 0,
  a2_enter: 0, a2_leave: 0,
  a3_enter: 0, a3_leave: 0,
  a4_enter: 0, a4_leave: 0,
  a5_enter: 0,
  a6_enter: 0, a6_leave: 0,
  a7_enter: 0, a7_leave: 0,
  a8_enter: 0, a8_leave: 0,
  a9_enter: 0, a9_leave: 0,
  a10_enter: 0,
  a11_enter: 0,
  a12_enter: 0,
  a13_enter: 0,
  a14_enter: 0, a14_leave: 0,
};
const vtableDispatchTargets = []; // {rva, target_rva, ts}
const isCritWrites = [];          // {rva, v30_plus_506, w9, ts}
const fixRandomGetters = [];      // {kind, userdata, value, ts}
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

function rvaOf(pointer) {
  if (pointer === null || pointer === undefined || feprojBase === null) {
    return null;
  }
  try {
    return pointer.sub(feprojBase).toString();
  } catch (_) {
    return null;
  }
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

  // A1: vtable+32 dispatch (crit trigger helper).  x0 = a1 (context).
  //   result = (*(vtable+32))(result);  a1+328 = result.
  attachInternal("A1", RVA_A1, {
    onEnter(args) {
      counters.a1_enter += 1;
      this.ctx = args[0];
      this.obj = null;
      try {
        this.obj = this.ctx.add(256).readPointer();
      } catch (_) {
        this.obj = null;
      }
    },
    onLeave(retval) {
      counters.a1_leave += 1;
      const target = rvaOf(retval);
      if (target !== null) {
        vtableDispatchTargets.push({ rva: "0x4AFF72C", target_rva: target, ts: Date.now() });
        if (vtableDispatchTargets.length <= 8) {
          send({ event: "CRIT_RNG_VTABLE_DISPATCH", anchor: "A1", target_rva: target, ctx: pointerKey(this.ctx), obj: pointerKey(this.obj) });
        }
      }
    },
  });

  // A2: flow step engine.  x0 = a1 (flow context).  Reads +232 isCrit flag.
  attachInternal("A2", RVA_A2, {
    onEnter(args) {
      counters.a2_enter += 1;
      this.ctx = args[0];
      this.flag232 = null;
      try {
        this.flag232 = this.ctx.add(232).readU8();
      } catch (_) {
        this.flag232 = null;
      }
    },
    onLeave(retval) {
      counters.a2_leave += 1;
      if (counters.a2_enter <= 8) {
        send({ event: "CRIT_RNG_FLOW_STEP", anchor: "A2", ctx: pointerKey(this.ctx), flag232: this.flag232, ret: u64Hex(retval) });
      }
    },
  });

  // A3: event dispatch core.  x0 = a1, x1 = a2 (event index).
  attachInternal("A3", RVA_A3, {
    onEnter(args) {
      counters.a3_enter += 1;
      this.idx = numberValue(args[1]);
    },
    onLeave() {
      counters.a3_leave += 1;
      if (counters.a3_enter <= 8) {
        send({ event: "CRIT_RNG_EVENT_DISPATCH", anchor: "A3", idx: this.idx });
      }
    },
  });

  // A4: isCrit write point (inside sub_1FDA454, LABEL_173).
  //   *(u8*)(v30+506) = v111;  v111 = a14 & 1.
  //   At this instruction: X27 = v30 (damage record), W9 = v111 (isCrit flag).
  attachInternal("A4", RVA_A4, {
    onEnter(args) {
      counters.a4_enter += 1;
      const ctx = this.context;
      let v30 = null;
      let w9 = null;
      try {
        v30 = ctx.x27;
        w9 = ctx.w9;
      } catch (_) {
        v30 = null;
        w9 = null;
      }
      let v30_plus_506 = null;
      if (v30 !== null) {
        try {
          v30_plus_506 = v30.add(506).readU8();
        } catch (_) {
          v30_plus_506 = null;
        }
      }
      isCritWrites.push({ rva: "0x1FDAF40", v30_plus_506: v30_plus_506, w9: w9, ts: Date.now() });
      if (isCritWrites.length <= 8) {
        send({ event: "CRIT_RNG_ISCRIT_WRITE", anchor: "A4", v30_plus_506: v30_plus_506, w9: w9 });
      }
    },
    onLeave() {
      counters.a4_leave += 1;
    },
  });

  // A5: +232 isCrit flag read (inside sub_4B067C0).  x0 = a1 (flow context).
  attachInternal("A5", RVA_A5, {
    onEnter(args) {
      counters.a5_enter += 1;
      let flag = null;
      try {
        flag = args[0].add(232).readU8();
      } catch (_) {
        flag = null;
      }
      if (counters.a5_enter <= 8) {
        send({ event: "CRIT_RNG_FLAG232_READ", anchor: "A5", flag232: flag });
      }
    },
  });

  // A6: FixRandom case-409 registrar.
  attachInternal("A6", RVA_A6, {
    onEnter() {
      counters.a6_enter += 1;
    },
    onLeave() {
      counters.a6_leave += 1;
      if (counters.a6_enter <= 4) {
        send({ event: "CRIT_RNG_FIXRANDOM_REGISTRAR", anchor: "A6" });
      }
    },
  });

  // A7: fix_seed getter.  x0 = a1 (userdata).  Returns *(u64*)(a1+16).
  attachInternal("A7", RVA_A7, {
    onEnter(args) {
      counters.a7_enter += 1;
      this.userdata = args[0];
    },
    onLeave(retval) {
      counters.a7_leave += 1;
      const value = u64Hex(retval);
      fixRandomGetters.push({ kind: "fix_seed", userdata: pointerKey(this.userdata), value: value, ts: Date.now() });
      if (fixRandomGetters.length <= 8) {
        send({ event: "CRIT_RNG_FIXRANDOM_GETTER", anchor: "A7", kind: "fix_seed", userdata: pointerKey(this.userdata), value: value });
      }
    },
  });

  // A8: useed getter.  x0 = a1 (userdata).  Returns *(u64*)(a1+24).
  attachInternal("A8", RVA_A8, {
    onEnter(args) {
      counters.a8_enter += 1;
      this.userdata = args[0];
    },
    onLeave(retval) {
      counters.a8_leave += 1;
      const value = u64Hex(retval);
      fixRandomGetters.push({ kind: "useed", userdata: pointerKey(this.userdata), value: value, ts: Date.now() });
      if (fixRandomGetters.length <= 8) {
        send({ event: "CRIT_RNG_FIXRANDOM_GETTER", anchor: "A8", kind: "useed", userdata: pointerKey(this.userdata), value: value });
      }
    },
  });

  // A9: battle attr getter (body TBD).  Observe entry/return only.
  attachInternal("A9", RVA_A9, {
    onEnter(args) {
      counters.a9_enter += 1;
      this.userdata = args[0];
    },
    onLeave(retval) {
      counters.a9_leave += 1;
      if (counters.a9_enter <= 4) {
        send({ event: "CRIT_RNG_FIXRANDOM_BATTLE", anchor: "A9", userdata: pointerKey(this.userdata), ret: u64Hex(retval) });
      }
    },
  });

  // A10: FixRandom template registrar.
  attachInternal("A10", RVA_A10, {
    onEnter() {
      counters.a10_enter += 1;
    },
  });

  // A11: name hash (792 registry).  x0 = name ptr, x1 = len.
  attachInternal("A11", RVA_A11, {
    onEnter(args) {
      counters.a11_enter += 1;
      this.name = safeUtf8(args[0]);
      this.len = numberValue(args[1]);
    },
    onLeave(retval) {
      if (counters.a11_enter <= 4) {
        send({ event: "CRIT_RNG_NAME_HASH", anchor: "A11", name: this.name, len: this.len, retval_u32: u32(retval) });
      }
    },
  });

  // A12: map write.  x0 = hash, x1 = handler.
  attachInternal("A12", RVA_A12, {
    onEnter(args) {
      counters.a12_enter += 1;
      this.hash = u64Hex(args[0]);
      this.handler = u64Hex(args[1]);
    },
    onLeave() {
      if (counters.a12_enter <= 4) {
        send({ event: "CRIT_RNG_MAP_WRITE", anchor: "A12", hash: this.hash, handler: this.handler });
      }
    },
  });

  // A13: map lookup (read-only).  x0 = hash, x1 = func.
  attachInternal("A13", RVA_A13, {
    onEnter(args) {
      counters.a13_enter += 1;
      this.hash = u64Hex(args[0]);
    },
    onLeave(retval) {
      if (counters.a13_enter <= 4) {
        send({ event: "CRIT_RNG_MAP_LOOKUP", anchor: "A13", hash: this.hash, handler: u64Hex(retval) });
      }
    },
  });

  // A14: 881-class dispatcher.  x0 = L, x1 = case.
  attachInternal("A14", RVA_A14, {
    onEnter(args) {
      counters.a14_enter += 1;
      this.case = numberValue(args[1]);
      if (!driving) {
        send({ event: "CRIT_RNG_DISPATCHER_SPONTANEOUS", case: this.case });
      }
    },
    onLeave() {
      counters.a14_leave += 1;
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
          send({ event: "CRIT_RNG_LUA_STATE", selector: "luaL_newstate", state: pointerKey(retval) });
        },
      });
      hookStatus["G-luaL_newstate"] = "attached";
    } catch (error) {
      hookStatus["G-luaL_newstate"] = "failed:" + String(error);
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
  const dispatcher = new NativeFunction(feprojBase.add(RVA_A14), "pointer", ["pointer", "int"]);
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

// C2: call FixRandom case-409 getters via Lua API.
//   After 881-class registration, the FixRandom class (case 409) is registered
//   in _G.  We call its fix_seed/useed getters via lua_getglobal + lua_getfield.
//   This is the minimal trigger for C2 (RNG source getter observation).
function callFixRandomGetters(L, exp) {
  const results = [];
  const classNames = ["FixRandom", "FrameEngine.FixRandom"];
  for (const className of classNames) {
    const namePtr = Memory.allocUtf8String(className);
    exp.lua_getglobal(L, namePtr);   // push _G[className]
    const t = exp.lua_type(L, -1);
    if (t === 5) {                   // table
      for (const field of ["fix_seed", "useed"]) {
        const fieldPtr = Memory.allocUtf8String(field);
        let ft = -1;
        let error = null;
        try {
          exp.lua_getfield(L, -1, fieldPtr); // push _G[className][field]
          ft = exp.lua_type(L, -1);
        } catch (e) {
          // hollow-proxy member access crashes with access violation 0xb in
          // this harness (G2 consumer review 2026-08-18); record, not fatal.
          error = String(e);
          ft = -2;
        }
        results.push({ className: className, field: field, type: ft, error: error });
        exp.lua_settop(L, -2);       // pop field (recover stack either way)
      }
    }
    exp.lua_settop(L, -2);           // pop class
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
    send({ event: "CRIT_RNG_EXPORT", selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

// Main RPC: drive 881-class registration (C2 prerequisite), then call
// FixRandom getters (C2), and report C1 observation status.
function runcritrng(names) {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error("libFEProj.so is not loaded");
  }
  if (Array.isArray(names)) {
    expectedNames = names;
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
    lua_getfield: ["int", ["pointer", "int", "pointer"]],
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
    event: "CRIT_RNG_REG_PRIME",
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
    event: "CRIT_RNG_DISPATCHER_DONE",
    pcallk_rc: drive.pcallk_rc,
    dispatcher_nonzero: drive.dispatcher_nonzero,
    dispatcher_enter: counters.a14_enter,
  });

  // 5. C2: call FixRandom getters via Lua API
  const fixRandomCalls = callFixRandomGetters(L, exp);
  send({
    event: "CRIT_RNG_FIXRANDOM_CALLS",
    calls: fixRandomCalls,
    getter_count: fixRandomGetters.length,
  });

  // 6. C1 observation status
  const c1Observed = vtableDispatchTargets.length > 0 || isCritWrites.length > 0;
  send({
    event: "CRIT_RNG_C1_STATUS",
    c1_observed: c1Observed,
    vtable_dispatch_count: vtableDispatchTargets.length,
    iscrit_write_count: isCritWrites.length,
  });

  return {
    state: pointerKey(L),
    cls_key: pointerKey(clsKey),
    stock_keys: stockKeys,
    prime_before_type: beforeType,
    prime_after_type: afterType,
    dispatcher_enter: counters.a14_enter,
    dispatcher_leave: counters.a14_leave,
    dispatcher_nonzero: drive.dispatcher_nonzero,
    pcallk_rc: drive.pcallk_rc,
    fixrandom_calls: fixRandomCalls,
    fixrandom_getter_count: fixRandomGetters.length,
    fixrandom_getters: fixRandomGetters,
    c1_observed: c1Observed,
    vtable_dispatch_count: vtableDispatchTargets.length,
    vtable_dispatch_targets: vtableDispatchTargets,
    iscrit_write_count: isCritWrites.length,
    iscrit_writes: isCritWrites,
    a1_enter: counters.a1_enter,
    a2_enter: counters.a2_enter,
    a3_enter: counters.a3_enter,
    a4_enter: counters.a4_enter,
    a5_enter: counters.a5_enter,
    a6_enter: counters.a6_enter,
    a7_enter: counters.a7_enter,
    a8_enter: counters.a8_enter,
    a9_enter: counters.a9_enter,
    a10_enter: counters.a10_enter,
    a11_enter: counters.a11_enter,
    a12_enter: counters.a12_enter,
    a13_enter: counters.a13_enter,
    a14_enter: counters.a14_enter,
    data_points: {
      fixrandom_typeinfo: readDataPoint(RVA_A15_TI),
      fixrandom_rtti: readDataPoint(RVA_A15_RTTI),
      fixrandom_vptr: readDataPoint(RVA_A15_VPTR),
      precrit_descriptor: readDataPoint(RVA_A16),
      hurtcancri: readDataPoint(RVA_A17),
    },
    hook_status: hookStatus,
  };
}

function finalcounts() {
  return {
    a1_enter: counters.a1_enter,
    a2_enter: counters.a2_enter,
    a3_enter: counters.a3_enter,
    a4_enter: counters.a4_enter,
    a5_enter: counters.a5_enter,
    a6_enter: counters.a6_enter,
    a7_enter: counters.a7_enter,
    a8_enter: counters.a8_enter,
    a9_enter: counters.a9_enter,
    a10_enter: counters.a10_enter,
    a11_enter: counters.a11_enter,
    a12_enter: counters.a12_enter,
    a13_enter: counters.a13_enter,
    a14_enter: counters.a14_enter,
    vtable_dispatch_count: vtableDispatchTargets.length,
    iscrit_write_count: isCritWrites.length,
    fixrandom_getter_count: fixRandomGetters.length,
  };
}

// --- boot ----------------------------------------------------------------

setInterval(tryDetectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== "undefined") {
  rpc.exports = {
    environment: environment,
    setbattlelogicpath: (path) => {
      // Accepted for runner compatibility; the crit RNG drive does not read
      // BattleLogic.res (it only needs the locked DSO + a fresh VM).
      return { battle_logic_path: path };
    },
    setexpectednames: (names) => {
      expectedNames = Array.isArray(names) ? names : [];
      return { expected_names: expectedNames.length };
    },
    waitfeprojloaded: waitFEProjLoaded,
    probeluaexports: probeLuaExports,
    runcritrng: runcritrng,
    finalcounts: finalcounts,
  };
}
