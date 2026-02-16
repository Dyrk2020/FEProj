'use strict';

// K2 member-level consumption hook (observe-only + controlled probe).
//
// Plan: docs/plans/2026-08-22-g2-k2-member-fill.md
// Basis:
//   - work/ai-cfg-recovery-2026-08-04/full-bind.md §6.1 working recipe
//     (probe-final.c, variant f): flat prime + NESTED fill
//     classreg[0xc1a][0xc07] = classreg[0xc07]; beginClass continuation reads
//     that nested slot (0x164acb4/0x164acc4) into record 0xdad slots and
//     V[base+0x726d110]. Flat-only priming leaves it nil (" proxy" era).
//   - track-a/g2-consumer-review.md: empty-shell proxy finding (K2 gap).
//   - TemplateAnatomy scout (2026-08-22): templates are void f(lua_State*),
//     member registration executes inside dispatcher-driven bodies.
// Design: ONE process, TWO fresh lua_States:
//   state A = flat prime (replicates 2026-08-17 registration condition),
//   state B = variant-f prime (treatment).
// Identical member-probe battery on both -> paired evidence.
// Probes are typed-guarded (lua_type checks before every field access);
// a native fault during __index resolution is itself recorded evidence
// (driver captures the detached/crash event).

const TARGET_NAME = "libFEProj.so";
const LOAD_TIMEOUT_MS = 60000;
const LUA_REGISTRYINDEX = -1001000;
const CLSKEY_OFFSET = 0x726d101;
const NESTED_SLOT_V = 0x726d110;
const SUB_KEYS = [0x5e7, 0x6e7, 0xc07, 0xc1a, 0xdad];
const NUM_CASES = 881;
const RVA_DISPATCHER = 0x1589ACC;

const LUA_EXPORTS = [
  "luaL_newstate", "luaL_openlibs", "lua_createtable", "lua_rawsetp",
  "lua_rawset", "lua_pushcclosure", "lua_pcallk", "lua_getglobal",
  "lua_type", "lua_next", "lua_gettop", "lua_pushvalue", "lua_settop",
  "lua_pushnil", "lua_pushlightuserdata", "lua_rawgetp", "lua_setglobal",
  "lua_getfield",
];

const SIG = {
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
  lua_getfield: ["int", ["pointer", "int", "pointer"]],
};

// Paired probe battery: classes with members documented in
// ai-cfg-recovery-2026-08-04/dispatcher-881-cases.tsv / fe-lua-api.md,
// plus existence-only checks for the scout trio.
const PROBE_BATTERY = [
  { cls: "RuneAssetObject", members: ["resID"] },
  { cls: "ChampionResObject", members: ["shared", "attackType"] },
  { cls: "MonsterStageBuffApplyNode", members: ["removeType"] },
  { cls: "GainDeckAssetObject", members: [] },
  { cls: "FEInterfaceConfig", members: [] },
  { cls: "FixTransform", members: [] },
];

let feprojModule = null;

function pk(p) { return p === null || p === undefined ? null : p.toString(); }

function environment() {
  return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id };
}

function tryDetectFEProj() {
  if (feprojModule !== null) return true;
  const m = Process.findModuleByName(TARGET_NAME);
  if (m !== null && m.size > 0x1000000) {
    feprojModule = m;
    send({ event: "FEPROJ_LOADED", base: pk(m.base), size: m.size });
    return true;
  }
  return false;
}

function waitFEProjLoaded(timeoutMs) {
  const began = Date.now();
  while (!tryDetectFEProj()) {
    const spinUntil = Date.now() + 50;
    while (Date.now() < spinUntil) { /* busy wait: single JS thread */ }
    if (Date.now() - began > (typeof timeoutMs === "number" && timeoutMs > 0 ? timeoutMs : LOAD_TIMEOUT_MS)) {
      throw new Error("timed out waiting for libFEProj.so");
    }
  }
  return { loaded: true, name: TARGET_NAME, base: pk(feprojModule.base), size: feprojModule.size };
}

function moduleExportByName(moduleObj, name) {
  try {
    if (moduleObj !== null && moduleObj !== undefined
        && typeof moduleObj.findExportByName === "function") {
      const address = moduleObj.findExportByName(name);
      if (address !== null && address !== undefined) return address;
    }
  } catch (_) { /* fall through */ }
  try {
    if (typeof Module.findExportByName === "function") {
      const address = Module.findExportByName(TARGET_NAME, name);
      if (address !== null && address !== undefined) return address;
    }
  } catch (_) { /* fall through */ }
  return null;
}

function resolveExp() {
  const exp = {};
  for (const name of LUA_EXPORTS) {
    const addr = moduleExportByName(feprojModule, name);
    if (addr === null) throw new Error("missing export: " + name);
    const [ret, args] = SIG[name];
    exp[name] = new NativeFunction(addr, ret, args);
  }
  return exp;
}

function countGKeys(L, exp) {
  exp.lua_getglobal(L, Memory.allocUtf8String("_G"));
  exp.lua_pushnil(L);
  let count = 0;
  while (exp.lua_next(L, -2) !== 0) {
    count += 1;
    exp.lua_settop(L, -2);
  }
  exp.lua_settop(L, 0);
  return count;
}

function rawgetpType(L, exp, key) {
  exp.lua_rawgetp(L, LUA_REGISTRYINDEX, key);
  const t = exp.lua_type(L, -1);
  exp.lua_settop(L, -2);
  return t;
}

function primeRegistry(L, exp, clsKey, variantF) {
  exp.lua_createtable(L, 0, 8);                    // [classreg]
  exp.lua_pushvalue(L, -1);
  exp.lua_rawsetp(L, LUA_REGISTRYINDEX, clsKey);   // V[clsKey]=classreg
  for (const k of SUB_KEYS) {
    exp.lua_createtable(L, 0, 8);                  // [classreg, sub]
    exp.lua_rawsetp(L, -2, ptr(k));                // classreg[k]=sub
  }
  if (variantF) {
    // Nested fill (full-bind.md §6.1 step 2): classreg[0xc1a][0xc07]=classreg[0xc07]
    exp.lua_rawgetp(L, -1, ptr(0xc1a));            // [classreg, T1]
    exp.lua_rawgetp(L, -2, ptr(0xc07));            // [classreg, T1, Tc07]
    exp.lua_rawsetp(L, -2, ptr(0xc07));            // T1[0xc07]=Tc07; [classreg, T1]
    exp.lua_settop(L, -2);                         // [classreg]
  }
  exp.lua_settop(L, 0);
}

function driveDispatcher(L, exp) {
  const dispatcher = new NativeFunction(
    feprojModule.base.add(RVA_DISPATCHER), "pointer", ["pointer", "int"]);
  let nonzero = 0;
  const driver = new NativeCallback((state) => {
    for (let c = 0; c < NUM_CASES; c += 1) {
      const ret = dispatcher(state, c);
      if (ret !== null && !ret.isNull()) nonzero += 1;
    }
    return 0;
  }, "int", ["pointer"]);
  exp.lua_pushcclosure(L, driver, 0);
  const rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));
  return { pcallk_rc: rc, dispatcher_nonzero: nonzero };
}

function nestedSlotTypes(L, exp, clsKey) {
  const out = {};
  exp.lua_rawgetp(L, LUA_REGISTRYINDEX, clsKey);          // [classreg]
  out.classreg = exp.lua_type(L, -1);
  exp.lua_rawgetp(L, -1, ptr(0xc1a));                     // [classreg, T1]
  out.c1a = exp.lua_type(L, -1);
  exp.lua_rawgetp(L, -1, ptr(0xc07));                     // [classreg, T1, T1c07]
  out.c1a_c07 = exp.lua_type(L, -1);
  exp.lua_settop(L, -3);                                  // []
  out.v_nested = rawgetpType(L, exp, feprojModule.base.add(NESTED_SLOT_V));
  return out;
}

function memberProbe(L, exp) {
  const results = [];
  for (const entry of PROBE_BATTERY) {
    const rec = { cls: entry.cls, exists: false, type: 0, members: {} };
    exp.lua_getglobal(L, Memory.allocUtf8String(entry.cls)); // [..., cls|nil]
    const t = exp.lua_type(L, -1);
    rec.type = t;
    rec.exists = t === 5; // LUA_TTABLE
    if (rec.exists) {
      for (const m of entry.members) {
        // Real consumption path: lua_getfield triggers __index closure.
        exp.lua_getfield(L, -1, Memory.allocUtf8String(m));
        rec.members[m] = { type: exp.lua_type(L, -1) };
        exp.lua_settop(L, -2);
      }
    }
    exp.lua_settop(L, -2);                                 // pop cls
    results.push(rec);
    send({ event: "K2_PROBE_CLASS", cls: entry.cls, rec: rec });
  }
  return results;
}

function runProbeInFrame(L, exp) {
  const collector = new NativeCallback((state) => {
    memberProbe(state, exp);
    return 0;
  }, "int", ["pointer"]);
  exp.lua_pushcclosure(L, collector, 0);
  const rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));
  return rc;
}

function runk2() {
  if (feprojModule === null) throw new Error("libFEProj.so not loaded");
  const exp = resolveExp();
  const clsKeyBase = feprojModule.base.add(CLSKEY_OFFSET);
  const out = {};

  const build = (label, variantF) => {
    send({ event: "K2_STATE_BEGIN", label: label, variant_f: variantF });
    const L = exp.luaL_newstate();
    if (L === null || L.isNull()) throw new Error("luaL_newstate null");
    exp.luaL_openlibs(L);
    const stockKeys = countGKeys(L, exp);
    const clsKey = clsKeyBase;
    const beforeType = rawgetpType(L, exp, clsKey);
    primeRegistry(L, exp, clsKey, variantF);
    const afterPrimeType = rawgetpType(L, exp, clsKey);
    const drive = driveDispatcher(L, exp);
    const nested = nestedSlotTypes(L, exp, clsKey);
    const probeRc = runProbeInFrame(L, exp);
    const gKeys = countGKeys(L, exp);
    send({
      event: "K2_STATE_DONE", label: label, stock_keys: stockKeys,
      before_type: beforeType, after_prime_type: afterPrimeType,
      pcallk_rc: drive.pcallk_rc, dispatcher_nonzero: drive.dispatcher_nonzero,
      nested: nested, probe_pcallk_rc: probeRc, g_keys: gKeys,
    });
    return {
      label, stock_keys: stockKeys, before_type: beforeType,
      after_prime_type: afterPrimeType, dispatcher_nonzero: drive.dispatcher_nonzero,
      pcallk_rc: drive.pcallk_rc, nested: nested,
      probe_pcallk_rc: probeRc, g_keys: gKeys,
    };
  };

  out.flat = build("flat_control", false);
  out.variant_f = build("variant_f_treatment", true);
  send({ event: "K2_RUN_RESULT", result: out });
  return out;
}

if (typeof rpc !== "undefined") {
  rpc.exports = {
    environment: environment,
    waitfeprojloaded: waitFEProjLoaded,
    runk2: runk2,
  };
}
