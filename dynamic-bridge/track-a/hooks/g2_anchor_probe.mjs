'use strict';

// g2_anchor_probe.mjs — surgical dual-anchor probe for the G2 consumer __index
// closure location.  Settles WHERE the runtime __index closure lives:
//   A-static: base+0x164B4A0  (plan C1, class-record.md §2 lua_pushcclosure)
//   A-probe : base+0xA6C4A0   (RVA implied by the runtime metatable __index
//                              pointer read during Exec A run 2:
//                              cfunction_ptr 0x7449c6d4a0, base 0x7449201000)
//   A-alt   : base+0x166B4A0  (+0x20000 island-shift hypothesis)
// Observe-only: never writes, never blind-calls anything beyond the
// registration drive recipe (G2-REGISTRATION-PLAN §2 plan A).

const LUA_REGISTRYINDEX = -1001000; // 0xFFF0B9D8
const CLSKEY_OFFSET = 0x726d101;
const SUB_KEYS = [0x5e7, 0x6e7, 0xc07, 0xc1a, 0xdad];
const NUM_CASES = 881;
const RVA_L1 = 0x1589ACC;            // dispatcher (case 0..880)
const C_INDEX_STATIC = 0x164B4A0;    // plan C1
const C_INDEX_PROBE = 0xA6C4A0;      // runtime-metatable-implied
const C_INDEX_ALT = 0x166B4A0;       // +0x20000 shift hypothesis
const C_NEWINDEX_STATIC = 0x164B5F8; // plan C2 (reference only)

const LUA_EXPORTS = [
  'luaL_newstate', 'luaL_openlibs', 'lua_createtable', 'lua_rawsetp',
  'lua_rawset', 'lua_pushcclosure', 'lua_pcallk', 'lua_getglobal',
  'lua_getfield', 'lua_rawget', 'lua_rawgetp', 'lua_type', 'lua_next',
  'lua_gettop', 'lua_pushvalue', 'lua_settop', 'lua_pushnil',
  'lua_pushlightuserdata', 'lua_setglobal', 'lua_getmetatable',
  'lua_topointer', 'lua_tostring', 'lua_tolstring',
];

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;

const counts = { A_static: 0, A_probe: 0, A_alt: 0 };
const samples = [];
const hookStatus = {};

function sendEvent(payload) { send(payload); }

function text(value) {
  try { return value.toString(); } catch (_) { return null; }
}

function rva(address) {
  if (address === null || address === undefined || feprojBase === null) return null;
  try { return address.sub(feprojBase).toString(); } catch (_) { return null; }
}

function safeUtf8(pointer) {
  if (pointer === null || pointer === undefined) return null;
  try { return pointer.readUtf8String(); } catch (_) { return null; }
}

function moduleLuaExport(module, name) {
  try {
    return module.getExportByName(name);
  } catch (_) {
    return null;
  }
}

function resolveExports() {
  const resolved = {};
  for (const name of LUA_EXPORTS) {
    resolved[name] = moduleLuaExport(feprojModule, name);
  }
  return resolved;
}

function attachAnchor(key, rvaOffset, counterKey) {
  if (feprojBase === null) { hookStatus[key] = 'no-base'; return; }
  try {
    const addr = feprojBase.add(rvaOffset);
    Interceptor.attach(addr, {
      onEnter(args) {
        counts[counterKey] += 1;
        if (samples.length < 48) {
          let bt = [];
          try {
            bt = Thread.backtrace(this.context, Backtracer.ACCURATE).slice(0, 6).map(rva);
          } catch (_) { bt = []; }
          samples.push({
            anchor: key,
            seq: counts[counterKey],
            caller_rva: rva(this.returnAddress),
            x1: text(args[1]),
            x2: text(args[2]),
            bt: bt,
          });
        }
      },
    });
    hookStatus[key] = 'attached';
  } catch (e) {
    hookStatus[key] = 'failed:' + String(e);
  }
}

function attachAnchors() {
  attachAnchor('A-static-0x164B4A0', C_INDEX_STATIC, 'A_static');
  attachAnchor('A-probe-0xA6C4A0', C_INDEX_PROBE, 'A_probe');
  attachAnchor('A-alt-0x166B4A0', C_INDEX_ALT, 'A_alt');
}

function dumpBytes(offset, n) {
  try {
    const bytes = feprojBase.add(offset).readByteArray(n);
    return Array.from(new Uint8Array(bytes)).map((b) => b.toString(16).padStart(2, '0')).join('');
  } catch (e) {
    return 'err:' + String(e);
  }
}

function environment() {
  return {
    arch: Process.arch,
    pid: Process.id,
    pointer_size: Process.pointerSize,
  };
}

function setbattlelogicpath(path) {
  return { battle_logic_path: path };
}

function waitfeprojloaded(timeoutMs) {
  const deadline = Date.now() + (timeoutMs || 60000);
  while (Date.now() < deadline) {
    const mod = Process.findModuleByName('libFEProj.so');
    if (mod !== null) {
      feprojBase = mod.base;
      feprojSize = mod.size;
      feprojModule = mod;
      feprojLoaded = true;
      sendEvent({
        event: 'B2_MODULE_LOAD',
        library: 'libFEProj.so',
        base: text(mod.base),
        size: mod.size,
      });
      return { base: text(mod.base), name: 'libFEProj.so', size: mod.size };
    }
    Thread.sleep(0.25);
  }
  throw new Error('libFEProj.so not loaded within timeout');
}

function probeluaexports() {
  const out = {};
  for (const name of LUA_EXPORTS) {
    const address = moduleLuaExport(feprojModule, name);
    out[name] = address === null ? null : { address: text(address), rva: rva(address) };
  }
  return out;
}

// Register-and-consume in ONE fresh Lua state; attach anchors BEFORE driving.
function probeanchor(names) {
  if (!feprojLoaded || feprojBase === null || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  attachAnchors(); // attach AFTER load (post island decryption)

  const resolved = resolveExports();
  const sig = {
    luaL_newstate: ['pointer', []],
    luaL_openlibs: ['void', ['pointer']],
    lua_createtable: ['void', ['pointer', 'int', 'int']],
    lua_rawsetp: ['void', ['pointer', 'int', 'pointer']],
    lua_rawset: ['void', ['pointer', 'int']],
    lua_pushcclosure: ['void', ['pointer', 'pointer', 'int']],
    lua_pcallk: ['int', ['pointer', 'int', 'int', 'int', 'int', 'pointer']],
    lua_getglobal: ['int', ['pointer', 'pointer']],
    lua_getfield: ['int', ['pointer', 'int', 'pointer']],
    lua_rawget: ['int', ['pointer', 'int']],
    lua_type: ['int', ['pointer', 'int']],
    lua_next: ['int', ['pointer', 'int']],
    lua_gettop: ['int', ['pointer']],
    lua_pushvalue: ['void', ['pointer', 'int']],
    lua_settop: ['void', ['pointer', 'int']],
    lua_pushnil: ['void', ['pointer']],
    lua_pushlightuserdata: ['void', ['pointer', 'pointer']],
    lua_rawgetp: ['int', ['pointer', 'int', 'pointer']],
    lua_setglobal: ['void', ['pointer', 'pointer']],
    lua_getmetatable: ['int', ['pointer', 'int']],
    lua_topointer: ['pointer', ['pointer', 'int']],
    lua_tostring: ['pointer', ['pointer', 'int']],
  };
  const exp = {};
  const optional = new Set(['lua_tostring', 'lua_tolstring']);
  for (const name of Object.keys(sig)) {
    const address = resolved[name];
    if (address === null || address === undefined) {
      if (optional.has(name)) continue; // not exported in this build
      continue;
    }
    const [ret, args] = sig[name];
    exp[name] = new NativeFunction(address, ret, args);
  }
  const missing = Object.keys(sig).filter((n) => exp[n] === undefined && !optional.has(n));
  if (missing.length > 0) {
    return { error: 'unresolved exports: ' + missing.join(','), hookStatus: hookStatus };
  }

  const L = exp.luaL_newstate();
  if (L === null || L.isNull()) throw new Error('luaL_newstate returned null');
  exp.luaL_openlibs(L);

  // stock key count
  const gName = Memory.allocUtf8String('_G');
  exp.lua_getglobal(L, gName);
  exp.lua_pushnil(L);
  let stockKeys = 0;
  while (exp.lua_next(L, -2) !== 0) { stockKeys += 1; exp.lua_settop(L, -2); }
  exp.lua_settop(L, 0);

  // prime registry (plan A recipe)
  const clsKey = feprojBase.add(CLSKEY_OFFSET);
  exp.lua_createtable(L, 0, 8);
  exp.lua_pushvalue(L, -1);
  exp.lua_rawsetp(L, LUA_REGISTRYINDEX, clsKey);
  for (const k of SUB_KEYS) {
    exp.lua_createtable(L, 0, 8);
    exp.lua_rawsetp(L, -2, ptr(k));
  }
  exp.lua_settop(L, 0);

  // registration drive
  let nonzero = 0;
  let pcallk_rc = null;
  try {
    const dispatcher = new NativeFunction(feprojBase.add(RVA_L1), 'pointer', ['pointer', 'int']);
    const driver = new NativeCallback((state) => {
      for (let c = 0; c < NUM_CASES; c += 1) {
        const ret = dispatcher(state, c);
        if (ret !== null && !ret.isNull()) nonzero += 1;
      }
      return 0;
    }, 'int', ['pointer']);
    exp.lua_pushcclosure(L, driver, 0);
    pcallk_rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));
  } catch (e) {
    return { error: 'registration drive failed: ' + String(e), counts: counts, hookStatus: hookStatus };
  }

  // probe phase
  const results = [];
  for (const name of (names || ['GainDeckAssetObject', 'FEInterfaceConfig', 'FixTransform'])) {
    const namePtr = Memory.allocUtf8String(name);
    exp.lua_getglobal(L, namePtr);
    const tt = exp.lua_type(L, -1);
    const row = { name: name, global_type: tt };

    // read metatable __index / __newindex
    let hasMt = 0;
    try { hasMt = exp.lua_getmetatable(L, -1); } catch (e) { row.mt_error = String(e); }
    if (hasMt) {
      row.mt_type = exp.lua_type(L, -1);
      const key = Memory.allocUtf8String('__index');
      exp.lua_getfield(L, -1, key);
      const idxType = exp.lua_type(L, -1);
      row.index_type = idxType;
      if (exp.lua_topointer && idxType !== 0) {
        const p = exp.lua_topointer(L, -1);
        row.index_pointer = text(p);
        row.index_rva = rva(p);
        row.matches_static = row.index_rva === '0x' + C_INDEX_STATIC.toString(16);
        row.matches_probe = row.index_rva === '0x' + C_INDEX_PROBE.toString(16);
      }
      if (exp.lua_tostring && idxType === 4) {
        row.index_string = safeUtf8(exp.lua_tostring(L, -1));
      }
      exp.lua_settop(L, -3); // pop index + mt; class stays at -1
    } else {
      exp.lua_settop(L, -2); // pop nothing pushed; just drop class? getmetatable pushes nothing on false
      exp.lua_settop(L, -1); // keep class
    }

    // member access attempt (drives __index if it exists)
    const mPtr = Memory.allocUtf8String('LogError');
    try {
      exp.lua_getfield(L, -1, mPtr);
      row.getfield_ok = true;
      row.member_type = exp.lua_type(L, -1);
    } catch (e) {
      row.getfield_error = String(e);
    }
    exp.lua_settop(L, -2);
    results.push(row);
  }
  exp.lua_settop(L, 0);

  return {
    counts: counts,
    hookStatus: hookStatus,
    results: results,
    dumps: {
      static_0x164B4A0: dumpBytes(C_INDEX_STATIC, 16),
      probe_0xA6C4A0: dumpBytes(C_INDEX_PROBE, 16),
      alt_0x166B4A0: dumpBytes(C_INDEX_ALT, 16),
    },
    base: text(feprojBase),
    size: feprojSize,
    stock_keys: stockKeys,
    pcallk_rc: pcallk_rc,
    dispatcher_nonzero: nonzero,
    samples: samples,
  };
}

// dump a Lua table's raw keys (array + hash incl. lightuserdata keys)
function dumpTableKeys(L, exp, name) {
  const rows = [];
  exp.lua_pushnil(L);
  let i = 0;
  while (exp.lua_next(L, -2) !== 0 && i < 40) {
    const kType = exp.lua_type(L, -2);
    const vType = exp.lua_type(L, -1);
    let kStr = null;
    if (kType === 3) {
      try { kStr = String(exp.lua_tonumber ? exp.lua_tonumber(L, -2) : 0); } catch (_) { kStr = 'num?'; }
    } else if (kType === 4 && exp.lua_tolstring) {
      const s = exp.lua_tolstring(L, -2, ptr(0));
      kStr = safeUtf8(s);
    } else if (kType === 1) {
      try {
        const p = exp.lua_topointer(L, -2);
        kStr = p === null || p === undefined ? 'lightudata:?' : 'lightudata:' + text(p);
      } catch (_) { kStr = 'lightudata:?'; }
    } else {
      kStr = 't' + kType;
    }
    rows.push({ key: kStr, key_type: kType, value_type: vType });
    exp.lua_settop(L, -2);
    i += 1;
  }
  return rows;
}

// probeclass(name): dump proxy raw keys + member table (0x5e7) keys after
// registration — settles whether member tables are populated in harness.
function probeclass(name) {
  if (!feprojLoaded || feprojBase === null || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  const resolved = resolveExports();
  const sig = {
    luaL_newstate: ['pointer', []],
    luaL_openlibs: ['void', ['pointer']],
    lua_createtable: ['void', ['pointer', 'int', 'int']],
    lua_rawsetp: ['void', ['pointer', 'int', 'pointer']],
    lua_pushcclosure: ['void', ['pointer', 'pointer', 'int']],
    lua_pcallk: ['int', ['pointer', 'int', 'int', 'int', 'int', 'pointer']],
    lua_getglobal: ['int', ['pointer', 'pointer']],
    lua_getfield: ['int', ['pointer', 'int', 'pointer']],
    lua_rawget: ['int', ['pointer', 'int']],
    lua_rawgetp: ['int', ['pointer', 'int', 'pointer']],
    lua_type: ['int', ['pointer', 'int']],
    lua_next: ['int', ['pointer', 'int']],
    lua_gettop: ['int', ['pointer']],
    lua_pushvalue: ['void', ['pointer', 'int']],
    lua_settop: ['void', ['pointer', 'int']],
    lua_pushnil: ['void', ['pointer']],
    lua_pushlightuserdata: ['void', ['pointer', 'pointer']],
    lua_rawset: ['void', ['pointer', 'int']],
    lua_setglobal: ['void', ['pointer', 'pointer']],
    lua_topointer: ['pointer', ['pointer', 'int']],
    lua_tolstring: ['pointer', ['pointer', 'int', 'pointer']],
    lua_tonumber: ['double', ['pointer', 'int']],
  };
  const exp = {};
  for (const n of Object.keys(sig)) {
    const a = resolved[n];
    if (a === null || a === undefined) continue;
    const [ret, args] = sig[n];
    exp[n] = new NativeFunction(a, ret, args);
  }
  const L = exp.luaL_newstate();
  exp.luaL_openlibs(L);
  const clsKey = feprojBase.add(CLSKEY_OFFSET);
  exp.lua_createtable(L, 0, 8);
  exp.lua_pushvalue(L, -1);
  exp.lua_rawsetp(L, LUA_REGISTRYINDEX, clsKey);
  for (const k of SUB_KEYS) {
    exp.lua_createtable(L, 0, 8);
    exp.lua_rawsetp(L, -2, ptr(k));
  }
  exp.lua_settop(L, 0);
  const dispatcher = new NativeFunction(feprojBase.add(RVA_L1), 'pointer', ['pointer', 'int']);
  const driver = new NativeCallback((state) => {
    for (let c = 0; c < NUM_CASES; c += 1) dispatcher(state, c);
    return 0;
  }, 'int', ['pointer']);
  exp.lua_pushcclosure(L, driver, 0);
  exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));

  const out = {};
  for (const nm of (name || ['GainDeckAssetObject', 'FEInterfaceConfig', 'FixTransform'])) {
    const nPtr = Memory.allocUtf8String(nm);
    exp.lua_getglobal(L, nPtr);
    const tt = exp.lua_type(L, -1);
    const row = { name: nm, global_type: tt };
    if (tt === 5) {
      row.proxy_keys = dumpTableKeys(L, exp, nm); // [class]
      exp.lua_settop(L, 0);
      exp.lua_getglobal(L, nPtr);
      // member table at rawgetp(-1, lightuserdata(0x5e7))
      exp.lua_pushlightuserdata(L, ptr(0x5e7));
      exp.lua_rawget(L, -2); // -> [class, membertab]
      const mt = exp.lua_type(L, -1);
      row.membertab_type = mt;
      if (mt === 5) {
        exp.lua_pushvalue(L, -2); // -> [class, membertab, membertab]
        row.membertab_keys = dumpTableKeys(L, exp, nm);
        exp.lua_settop(L, -2);
      }
    }
    exp.lua_settop(L, 0);
    out[nm] = row;
  }
  return out;
}

rpc.exports = {
  environment: environment,
  setbattlelogicpath: setbattlelogicpath,
  waitfeprojloaded: waitfeprojloaded,
  probeluaexports: probeluaexports,
  probeanchor: probeanchor,
  probeclass: probeclass,
};
