'use strict';

// C1 anchor attribution probe (observe-only).
// Goal: determine the ACTUAL __index closure pointer for a registered proxy
// class (e.g. _G.GainDeckAssetObject) and compare it to the plan anchor
// 0x164B4A0.  Run 1 showed the __index closure body runs (lua_rawget callers
// 0x164b4d0/0x164b514) but the entry hook at 0x164B4A0 never fired
// (index_enter == 0), so the closure entry may be relocated (island/slot
// transformation) on this build.  This probe reads the metatable __index
// pointer from the Lua side and reports its RVA.

const TARGET_NAME = 'libFEProj.so';
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const LUA_REGISTRYINDEX = -1001000;
const CLSKEY_OFFSET = 0x726d101;
const SUB_KEYS = [0x5e7, 0x6e7, 0xc07, 0xc1a, 0xdad];
const NUM_CASES = 881;
const RVA_L1 = 0x1589ACC;

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;

function sendEvent(payload) { send(payload); }
function pointerKey(p) {
  if (p === null || p === undefined) return null;
  try { const s = p.toString(); return (s === '0' || s === '0x0') ? null : s; } catch (_) { return null; }
}
function addrRva(a) {
  if (a === null || a === undefined || feprojBase === null) return null;
  try { return a.sub(feprojBase).toString(); } catch (_) { return null; }
}
function moduleLuaExport(module, name) {
  if (module && typeof module.findExportByName === 'function') {
    try { const e = module.findExportByName(name); if (e !== null) return e; } catch (_) {}
  }
  try { return Module.findExportByName(null, name); } catch (_) { return null; }
}

function tryDetectFEProj() {
  if (feprojLoaded) return true;
  let module = null;
  try { module = Process.findModuleByName(TARGET_NAME); } catch (_) { module = null; }
  if (module === null || module === undefined) return false;
  feprojLoaded = true;
  feprojBase = module.base;
  feprojSize = module.size;
  feprojModule = module;
  sendEvent({ event: 'B2_MODULE_LOAD', library: TARGET_NAME, base: pointerKey(module.base), size: module.size, loaded_via: 'java-system-load' });
  return true;
}

function resolveExports() {
  if (!feprojLoaded || feprojModule === null) throw new Error('libFEProj.so is not loaded');
  const resolved = {};
  for (const name of ['luaL_newstate','luaL_openlibs','lua_createtable','lua_rawsetp','lua_rawset','lua_pushcclosure','lua_pcallk','lua_getglobal','lua_getfield','lua_rawget','lua_rawgetp','lua_type','lua_next','lua_gettop','lua_pushvalue','lua_settop','lua_pushnil','lua_pushlightuserdata','lua_setglobal','lua_getmetatable','lua_gettable','lua_pushstring','lua_topointer','lua_touserdata','lua_tocfunction','lua_isfunction','lua_iscfunction','lua_tostring']) {
    resolved[name] = moduleLuaExport(feprojModule, name);
  }
  return resolved;
}

function probeExports() {
  const resolved = resolveExports();
  const out = {};
  for (const name of Object.keys(resolved)) {
    out[name] = resolved[name] !== null;
    sendEvent({ event: 'B2_EXPORT', selector: name, resolved: resolved[name] !== null, address: pointerKey(resolved[name]) });
  }
  return out;
}

function countGKeys(L, exp) {
  const gName = Memory.allocUtf8String('_G');
  exp.lua_getglobal(L, gName);
  exp.lua_pushnil(L);
  let count = 0;
  while (exp.lua_next(L, -2) !== 0) { count += 1; exp.lua_settop(L, -2); }
  exp.lua_settop(L, 0);
  return count;
}

function primeRegistry(L, exp, clsKey) {
  exp.lua_createtable(L, 0, 8);
  exp.lua_pushvalue(L, -1);
  exp.lua_rawsetp(L, LUA_REGISTRYINDEX, clsKey);
  for (const k of SUB_KEYS) {
    exp.lua_createtable(L, 0, 8);
    exp.lua_rawsetp(L, -2, ptr(k));
  }
  exp.lua_settop(L, 0);
}

// Read the __index closure pointer of a proxy class from the Lua side.
function probeIndexClosure(className) {
  const resolved = resolveExports();
  const sig = {
    luaL_newstate: ['pointer', []],
    luaL_openlibs: ['void', ['pointer']],
    lua_createtable: ['void', ['pointer','int','int']],
    lua_rawsetp: ['void', ['pointer','int','pointer']],
    lua_rawset: ['void', ['pointer','int']],
    lua_pushcclosure: ['void', ['pointer','pointer','int']],
    lua_pcallk: ['int', ['pointer','int','int','int','int','pointer']],
    lua_getglobal: ['int', ['pointer','pointer']],
    lua_getfield: ['int', ['pointer','int','pointer']],
    lua_rawget: ['int', ['pointer','int']],
    lua_rawgetp: ['int', ['pointer','int','pointer']],
    lua_type: ['int', ['pointer','int']],
    lua_next: ['int', ['pointer','int']],
    lua_gettop: ['int', ['pointer']],
    lua_pushvalue: ['void', ['pointer','int']],
    lua_settop: ['void', ['pointer','int']],
    lua_pushnil: ['void', ['pointer']],
    lua_pushlightuserdata: ['void', ['pointer','pointer']],
    lua_setglobal: ['void', ['pointer','pointer']],
    lua_getmetatable: ['int', ['pointer','int']],
    lua_gettable: ['int', ['pointer','int']],
    lua_pushstring: ['void', ['pointer','pointer']],
    lua_topointer: ['pointer', ['pointer','int']],
    lua_touserdata: ['pointer', ['pointer','int']],
    lua_tocfunction: ['pointer', ['pointer','int']],
    lua_isfunction: ['int', ['pointer','int']],
    lua_iscfunction: ['int', ['pointer','int']],
    lua_tostring: ['pointer', ['pointer','int']],
  };
  const exp = {};
  for (const name of Object.keys(sig)) {
    if (resolved[name] === null) continue;
    const [ret, args] = sig[name];
    exp[name] = new NativeFunction(resolved[name], ret, args);
  }

  const L = exp.luaL_newstate();
  if (L === null || L.isNull()) throw new Error('luaL_newstate returned null');
  exp.luaL_openlibs(L);
  const stockKeys = countGKeys(L, exp);
  const clsKey = feprojBase.add(CLSKEY_OFFSET);
  primeRegistry(L, exp, clsKey);

  // registration drive (plan A recipe)
  const dispatcher = new NativeFunction(feprojBase.add(RVA_L1), 'pointer', ['pointer','int']);
  const driver = new NativeCallback((state) => {
    for (let c = 0; c < NUM_CASES; c += 1) { dispatcher(state, c); }
    return 0;
  }, 'int', ['pointer']);
  exp.lua_pushcclosure(L, driver, 0);
  const pcallk_rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));

  // read _G[className] -> metatable -> __index
  const namePtr = Memory.allocUtf8String(className);
  exp.lua_getglobal(L, namePtr);
  const tt = exp.lua_type(L, -1);
  const result = { className, global_type: tt, pcallk_rc, stock_keys: stockKeys };
  if (tt !== 0) {
    const hasMeta = exp.lua_getmetatable ? exp.lua_getmetatable(L, -1) : 0;
    result.has_metatable = hasMeta;
    if (hasMeta) {
      // stack: [class, metatable]
      const idxPtr = Memory.allocUtf8String('__index');
      if (exp.lua_getfield) {
        exp.lua_getfield(L, -1, idxPtr); // -> [class, metatable, __index]
        const itt = exp.lua_type(L, -1);
        result.index_type = itt;
        const ip = exp.lua_topointer ? exp.lua_topointer(L, -1) : null;
        result.index_ptr = pointerKey(ip);
        result.index_rva = addrRva(ip);
        result.index_in_module = ip !== null && !ip.isNull() && ip.compare(feprojBase) >= 0 && ip.compare(feprojBase.add(feprojSize)) < 0;
        // compare to plan anchor
        result.plan_anchor = '0x164B4A0';
        result.plan_anchor_rva = '0x164B4A0';
        result.matches_plan_anchor = result.index_rva === '0x164B4A0';
        // if __index is a function, try to get its C function pointer
        if (exp.lua_iscfunction && exp.lua_iscfunction(L, -1)) {
          const cf = exp.lua_tocfunction ? exp.lua_tocfunction(L, -1) : null;
          result.cfunction_ptr = pointerKey(cf);
          result.cfunction_rva = addrRva(cf);
        }
        exp.lua_settop(L, -2); // pop __index, keep [class, metatable]
      }
      exp.lua_settop(L, -2); // pop metatable, keep [class]
    }
  }
  exp.lua_settop(L, 0);
  sendEvent({ event: 'C1_PROBE', result });
  return result;
}

function environment() {
  return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id };
}

function waitFEProjLoaded(timeoutMs) {
  const began = Date.now();
  while (!tryDetectFEProj()) {
    if (Date.now() - began > (typeof timeoutMs === 'number' && timeoutMs > 0 ? timeoutMs : LOAD_TIMEOUT_MS)) {
      throw new Error('timed out waiting for libFEProj.so');
    }
    Thread.sleep(50);
  }
  return { name: TARGET_NAME, base: pointerKey(feprojBase), size: feprojSize };
}

setInterval(tryDetectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== 'undefined') {
  rpc.exports = {
    environment: environment,
    setbattlelogicpath: (path) => ({ battle_logic_path: path }),
    waitfeprojloaded: waitFEProjLoaded,
    probeluaexports: probeExports,
    probeindexclosure: probeIndexClosure,
  };
}
