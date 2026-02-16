'use strict';

// G2 consumer observation hook (observe-only).
//
// Plan: docs/plans/2026-08-17-g2-consumer-observe.md
// Scope: 4th link (consumer) of G2 transform/parser/registration/consumer.
//   transform/parser closed by T1 (g2-metadata-chain-review.md);
//   registration observed (g2-registration-review.md, 881-class Lua binding,
//   J1-J4/J6/J7 PASS, J5 PARTIAL); consumer still NOT_OBSERVED; G2 overall
//   still NOT_ESTABLISHED.  This hook only OBSERVES consumer activity AFTER
//   registration has made the 881 class bindings live in _G.  It never
//   announces PASS.
//
// Hard constraints: helper package dev.wildriftresearch.logicharness only;
//   never attach the official package; never wide-scan FETest/FMN strings;
//   never blind-call internal VAs; never invent addresses (every anchor cites
//   its static source; uncertain anchors are marked 'TBD-CONFIRM' and are
//   resolved dynamically, never guessed).
//
// Runner: b2_host_runner.py --g2-registration-observe ... plus a consumer
//   post-rpc (see plan §3.2).  This hook reuses the registration drive (plan
//   A recipe) to make the bindings live, then drives controlled consumption
//   and records consumer events.  The runner's --post-rpc mechanism (already
//   used for runregistration/runregobserve) is the intended extension point.
//
// Anchor sources:
//   C1 __index closure  0x164B4A0   class-record.md §2 (T1["__index"]=closure)
//   C2 __newindex closure 0x164B5F8 class-record.md §2
//   C3 registerClass    0x164AB04   class-record.md §2 / G2-REGISTRATION-PLAN §3.2 L3
//   C4 beginClass       0x164AE88   class-record.md §2 / G2-REGISTRATION-PLAN §3.2 L2
//   C5 dispatcher       0x1589ACC   dispatcher-881.md / BINDINGS.md §0
//   C6 dispatcher caller 0x1589AC0/0x1589AB0/0x15883A4 BINDINGS.md §0
//   C7 metadata name-table lazy getter 0x3B95A08  g2-metadata-chain-review.md §4
//   C8 member C functions  TBD-CONFIRM (resolved dynamically from C1 onLeave)
// Exported Lua ABI (resolved dynamically, never hardcoded):
//   lua_getglobal, lua_getfield, lua_rawget, lua_rawgetp, lua_type,
//   lua_gettop, lua_settop, lua_pushnil, lua_next, lua_createtable,
//   lua_pushvalue, lua_rawset, lua_rawsetp, lua_pushlightuserdata,
//   luaL_newstate, luaL_openlibs, lua_pushcclosure, lua_pcallk.
//   NOTE (G2-REGISTRATION-PLAN §2.1): lua_pcall is NOT in .dynsym (only
//   lua_pcallk).  Consumer-side selectors (lua_getfield, lua_call) may also be
//   absent on this build; resolve dynamically and report honestly if missing.

const TARGET_NAME = 'libFEProj.so';
const POLL_INTERVAL_MS = 200;
const LOAD_TIMEOUT_MS = 60000;
const LUA_REGISTRYINDEX = -1001000; // 0xFFF0B9D8
const CLSKEY_OFFSET = 0x726d101;
const SUB_KEYS = [0x5e7, 0x6e7, 0xc07, 0xc1a, 0xdad];
const NUM_CASES = 881;

// Consumer anchor RVAs (runtime VA == static VA; attach at base + RVA after
// libFEProj.so is loaded via Java System.load).  Confirmed anchors cite their
// static source; C8 is resolved dynamically (TBD-CONFIRM).
const C_INDEX_CLOSURE = 0x164B4A0;      // C1 __index closure (class-record.md §2)
const C_NEWINDEX_CLOSURE = 0x164B5F8;   // C2 __newindex closure (class-record.md §2)
const C_REGISTER_CLASS = 0x164AB04;     // C3 registerClass shared body
const C_BEGIN_CLASS = 0x164AE88;        // C4 beginClass
const C_DISPATCHER = 0x1589ACC;         // C5 dispatcher
const C_DISPATCHER_CALLER = 0x1589AC0;  // C6 unique dispatcher caller (BINDINGS §0)
const C_DISPATCHER_TRAMP = 0x1589AB0;   // C6 trampoline
const C_DISPATCHER_UPSTREAM = 0x15883A4;// C6 upstream (TBD-CONFIRM whether it self-runs)

// Registration drive anchors (reused; G2-REGISTRATION-PLAN §2/§3).
const RVA_L1 = 0x1589ACC;               // dispatcher
const RVA_R1 = 0x1B13498;               // name hash (optional)
const RVA_R2 = 0x42F2580;               // map write (optional)

// Exported Lua ABI selectors to resolve dynamically (consumer-side; some may
// be absent on this build - resolve and report).
const LUA_EXPORTS = [
  'luaL_newstate', 'luaL_openlibs', 'lua_createtable', 'lua_rawsetp',
  'lua_rawset', 'lua_pushcclosure', 'lua_pcallk', 'lua_getglobal',
  'lua_getfield', 'lua_rawget', 'lua_rawgetp', 'lua_type', 'lua_next',
  'lua_gettop', 'lua_pushvalue', 'lua_settop', 'lua_pushnil',
  'lua_pushlightuserdata', 'lua_setglobal',
];

let feprojLoaded = false;
let feprojBase = null;
let feprojSize = null;
let feprojModule = null;
let internalHooksAttached = false;
let luaHooksAttached = false;
let driving = false;
let registrationDone = false;   // true once the 881 drive completes
let consuming = false;          // true during the controlled consumption segment
let expectedNames = [];
let luaTolstring = null;   // NativeFunction for lua_tolstring (resolved in runconsumerfull)

// Consumer counters (aggregated in RPC return, NOT per-event rows).
const counters = {
  index_enter: 0, index_leave: 0,          // K1
  newindex_enter: 0,                        // K1 (write side)
  member_call_enter: 0,                     // K2 (dynamic member fns)
  g_access_enter: 0,                        // K3 (_G via getglobal/getfield/rawget)
  dispatcher_enter: 0,                      // K4
  dispatcher_post_reg_enter: 0,             // K4 (re-entry after registration)
  metadata_getter_enter: 0,                 // K5
  register_class_enter: 0,                  // C3 (registration readiness)
  begin_class_enter: 0,                     // C4
};
const consumerEvents = [];   // sampled trace rows (cap enforced)
const indexSamples = [];     // {caller_rva, key, ret_kind} samples
const memberCallSamples = [];// {caller_rva, member_rva}
const metadataGetterHits = [];// {caller_rva, head16} samples
const dispatcherPostRegCallers = [];// {caller_rva} distinct
const gAccessCallers = [];
const hookStatus = {};
const attachedMemberFunctions = new Set();
const SAMPLE_CAP = 64;

function sendEvent(payload) {
  send(payload);
}

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
    return Number(value);
  } catch (_) {
    return 0;
  }
}

function text(value) {
  try {
    return value.toString();
  } catch (_) {
    return null;
  }
}

function pointerKey(pointer) {
  if (pointer === null || pointer === undefined) {
    return null;
  }
  try {
    const s = pointer.toString();
    return s === '0' || s === '0x0' ? null : s;
  } catch (_) {
    return null;
  }
}

function u64Hex(value) {
  try {
    return value.toString();
  } catch (_) {
    return null;
  }
}

// module-relative RVA of an absolute address (within libFEProj).
function addrRva(address) {
  if (address === null || address === undefined || feprojBase === null) {
    return null;
  }
  try {
    return address.sub(feprojBase).toString();
  } catch (_) {
    return null;
  }
}

// caller RVA of the immediate return address (consumer anchor for K1/K2/K4).
function callerRva(invocation) {
  if (!invocation || !invocation.returnAddress) {
    return null;
  }
  return addrRva(invocation.returnAddress);
}

// Full backtrace as RVA list (for caller attribution, sample-capped).
function backtraceRvas(context) {
  try {
    if (typeof Thread === 'undefined' || typeof Thread.backtrace !== 'function') {
      return [];
    }
    return Thread.backtrace(context, Backtracer.ACCURATE).slice(0, 16)
      .map(addrRva).filter((r) => r !== null);
  } catch (_) {
    return [];
  }
}

function head16(pointer) {
  if (pointer === null || pointer === undefined) {
    return null;
  }
  try {
    if (pointer.isNull()) {
      return null;
    }
    const bytes = pointer.readByteArray(16);
    return Array.prototype.map.call(
      new Uint8Array(bytes),
      (byte) => ('0' + byte.toString(16)).slice(-2),
    ).join('');
  } catch (_) {
    return null;
  }
}

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

// ---- module detection -----------------------------------------------

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
  sendEvent({
    event: 'B2_MODULE_LOAD',
    library: TARGET_NAME,
    base: pointerKey(module.base),
    size: module.size,
    loaded_via: 'java-system-load',
    captured_at: 'poll-detect',
  });
  attachInternalHooks(false);
  attachLuaHooks(module);
  return true;
}

function moduleLuaExport(module, name) {
  if (module !== null && module !== undefined && typeof module.findExportByName === 'function') {
    try {
      const e = module.findExportByName(name);
      if (e !== null) {
        return e;
      }
    } catch (_) {
      // fall through
    }
  }
  try {
    if (typeof Module !== 'undefined' && typeof Module.findExportByName === 'function') {
      return Module.findExportByName(null, name);
    }
  } catch (_) {
    return null;
  }
  return null;
}

// ---- consumer anchor hooks (C1..C7) ----------------------------------

function attachInternal(name, rva, callbacks) {
  if (feprojBase === null) {
    hookStatus[name] = 'no-base';
    return false;
  }
  const address = feprojBase.add(rva);
  try {
    Interceptor.attach(address, callbacks);
    hookStatus[name] = 'attached';
    return true;
  } catch (error) {
    hookStatus[name] = 'failed:' + String(error);
    return false;
  }
}

// C8 dynamic member-function attach (TBD-CONFIRM).  Called from C1 onLeave
// when the __index resolution returns what looks like a function pointer
// inside libFEProj.  Re-attaches the Interceptor once per distinct member fn.
function attachMemberFunction(memberFn, caller) {
  if (memberFn === null || memberFn === undefined || memberFn.isNull()) {
    return null;
  }
  if (feprojBase === null) {
    return null;
  }
  let inModule = false;
  try {
    inModule = memberFn.compare(feprojBase) >= 0 && memberFn.compare(feprojBase.add(feprojSize)) < 0;
  } catch (_) {
    inModule = false;
  }
  if (!inModule) {
    return { in_module: false, rva: null };
  }
  const rva = addrRva(memberFn);
  if (attachedMemberFunctions.has(rva)) {
    return { in_module: true, rva, already_attached: true };
  }
  try {
    Interceptor.attach(memberFn, {
      onEnter(args) {
        counters.member_call_enter += 1;
        const c = callerRva(this);
        if (memberCallSamples.length < SAMPLE_CAP) {
          memberCallSamples.push({
            caller_rva: c,
            member_rva: rva,
            consuming: consuming,
            registration_done: registrationDone,
          });
        }
        sendEvent({
          event: 'G2_CONSUMER',
          kind: 'member_call',
          seq: counters.member_call_enter,
          thread: text(Process.getCurrentThreadId()),
          member_rva: rva,
          caller_rva: c,
          consuming: consuming,
          registration_done: registrationDone,
        });
      },
      onLeave(retval) {
        if (counters.member_call_enter <= SAMPLE_CAP) {
          sendEvent({
            event: 'G2_CONSUMER',
            kind: 'member_call_leave',
            member_rva: rva,
            ret: text(retval),
          });
        }
      },
    });
    attachedMemberFunctions.add(rva);
    hookStatus['C8-member:' + rva] = 'attached';
    return { in_module: true, rva, already_attached: false };
  } catch (error) {
    hookStatus['C8-member:' + rva] = 'failed:' + String(error);
    return { in_module: true, rva, attach_error: String(error) };
  }
}

function attachInternalHooks(force) {
  if (internalHooksAttached && !force) {
    return;
  }
  internalHooksAttached = true;

  // C1 __index closure (0x164B4A0): consumer gateway.  Records the resolved
  // member key and, if the returned value is an in-module function pointer,
  // dynamically attaches it (C8).
  attachInternal('C1-index', C_INDEX_CLOSURE, {
    onEnter(args) {
      counters.index_enter += 1;
      // NOTE: __index closure native signature is `int fn(lua_State *L)` —
      // args[1]/args[2] are REGISTERS (garbage), NOT (table, key).  The key
      // lives on the Lua stack at index 2; read it via lua_tolstring(L, 2)
      // (resolved once in runconsumerfull; null if unresolved).
      this.keyStr = null;
      if (luaTolstring !== null) {
        try {
          const s = luaTolstring(args[0], 2, ptr(0));
          this.keyStr = safeUtf8(s);
        } catch (_) {
          this.keyStr = null;
        }
      }
      this.keyPtr = null;
      this.caller = callerRva(this);
      this.bt = backtraceRvas(this.context);
    },
    onLeave(retval) {
      counters.index_leave += 1;
      const rva = addrRva(retval);
      if (indexSamples.length < SAMPLE_CAP) {
        indexSamples.push({
          caller_rva: this.caller,
          key: this.keyStr,
          ret_rva: rva,
          consuming: consuming,
        });
      }
      sendEvent({
        event: 'G2_CONSUMER',
        kind: 'index',
        seq: counters.index_enter,
        thread: text(Process.getCurrentThreadId()),
        caller_rva: this.caller,
        key_str: this.keyStr,
        key_ptr: this.keyPtr,
        ret_rva: rva,
        ret_in_module: rva !== null,
        consuming: consuming,
        registration_done: registrationDone,
        backtrace: this.bt.slice(0, 4),
      });
      // C8: if the resolved member is an in-module function pointer, attach it.
      attachMemberFunction(retval, this.caller);
    },
  });

  // C2 __newindex closure (0x164B5F8): consumer write side.
  attachInternal('C2-newindex', C_NEWINDEX_CLOSURE, {
    onEnter(args) {
      counters.newindex_enter += 1;
      // key on Lua stack at index 2 (native arg is only lua_State*).
      this.keyStr = null;
      if (luaTolstring !== null) {
        try {
          const s = luaTolstring(args[0], 2, ptr(0));
          this.keyStr = safeUtf8(s);
        } catch (_) {
          this.keyStr = null;
        }
      }
      const c = callerRva(this);
      sendEvent({
        event: 'G2_CONSUMER',
        kind: 'newindex',
        seq: counters.newindex_enter,
        thread: text(Process.getCurrentThreadId()),
        caller_rva: c,
        key_str: this.keyStr,
        consuming: consuming,
        registration_done: registrationDone,
      });
    },
  });

  // C3 registerClass shared body (0x164AB04): registration readiness.
  attachInternal('C3-registerclass', C_REGISTER_CLASS, {
    onEnter(args) {
      counters.register_class_enter += 1;
      // Emit only a small sample of registration-ready events so the 512-event
      // buffer is not exhausted by the 881 registerClass calls (plan §3.5: the
      // per-event trace is a sample; the counter is the aggregation).
      if (counters.register_class_enter <= 5) {
        const name = readStdString(args[1]);
        sendEvent({
          event: 'G2_REGISTRATION_READY',
          seq: counters.register_class_enter,
          thread: text(Process.getCurrentThreadId()),
          class_name: name,
          registration_done: registrationDone,
        });
      }
    },
  });

  // C4 beginClass (0x164AE88): registration chain anchor.
  attachInternal('C4-beginclass', C_BEGIN_CLASS, {
    onEnter() {
      counters.begin_class_enter += 1;
    },
  });

  // C5 dispatcher (0x1589ACC): registration drive + re-entry after reg.
  attachInternal('C5-dispatcher', C_DISPATCHER, {
    onEnter(args) {
      counters.dispatcher_enter += 1;
      const c = numberValue(args[1]);
      const caller = callerRva(this);
      if (registrationDone) {
        counters.dispatcher_post_reg_enter += 1;
        if (dispatcherPostRegCallers.length < SAMPLE_CAP) {
          dispatcherPostRegCallers.push({ caller_rva: caller, case: c });
        }
        sendEvent({
          event: 'G2_CONSUMER',
          kind: 'dispatcher_post_reg',
          seq: counters.dispatcher_post_reg_enter,
          thread: text(Process.getCurrentThreadId()),
          case: c,
          caller_rva: caller,
          consuming: consuming,
        });
      }
      // C6: note caller attribution (trampoline vs upstream).
      if (!driving && !registrationDone && counters.dispatcher_enter <= 3) {
        sendEvent({
          event: 'G2_DISPATCHER_SAMPLE',
          case: c,
          caller_rva: caller,
          trampoline: addrRva(feprojBase === null ? null : feprojBase.add(C_DISPATCHER_TRAMP)),
          upstream: addrRva(feprojBase === null ? null : feprojBase.add(C_DISPATCHER_UPSTREAM)),
        });
      }
    },
  });

  // C7 metadata name-table lazy getter (0x3B95A08): consumer re-read of
  // metadata after registration (T1 baseline 27,320 hits during init).
  // K5 is defined as post-registration re-reads (plan §1.2), so only count
  // during the controlled consumption segment.
  attachInternal('C7-metadata-getter', 0x3B95A08, {
    onEnter(args) {
      if (!consuming) {
        return;
      }
      counters.metadata_getter_enter += 1;
      this.caller = callerRva(this);
      if (metadataGetterHits.length < SAMPLE_CAP) {
        metadataGetterHits.push({
          caller_rva: this.caller,
          consuming: consuming,
          registration_done: registrationDone,
        });
      }
    },
    onLeave(retval) {
      if (!consuming) {
        return;
      }
      if (counters.metadata_getter_enter <= SAMPLE_CAP) {
        sendEvent({
          event: 'G2_CONSUMER',
          kind: 'metadata_getter',
          seq: counters.metadata_getter_enter,
          thread: text(Process.getCurrentThreadId()),
          caller_rva: this.caller,
          ret_head16: head16(retval),
          ret_str: safeUtf8(retval),
          consuming: consuming,
          registration_done: registrationDone,
        });
      }
    },
  });
}

// ---- exported Lua ABI hooks (K3 _G access) ----------------------------

function attachLuaHooks(module) {
  if (luaHooksAttached) {
    return;
  }
  luaHooksAttached = true;

  // K3: _G access via exported getglobal / getfield / rawget.
  // NOTE: the registration drive itself calls lua_getglobal internally (the
  // dispatcher's registration path), which would inflate K3.  K3 is defined as
  // "_G access AFTER registration" (plan §1.2), so we only count/emit g_access
  // during the controlled consumption segment (consuming === true).
  const gAccessSelectors = ['lua_getglobal', 'lua_getfield', 'lua_rawget'];
  for (const selector of gAccessSelectors) {
    const address = moduleLuaExport(module, selector);
    if (address === null) {
      hookStatus['K3-' + selector] = 'missing-export';
      sendEvent({ event: 'B2_EXPORT', selector, resolved: false, address: null });
      continue;
    }
    hookStatus['K3-' + selector] = 'attached';
    sendEvent({ event: 'B2_EXPORT', selector, resolved: true, address: text(address) });
    Interceptor.attach(address, {
      onEnter(args) {
        if (!consuming) {
          return; // registration-drive access is not consumer evidence (K3)
        }
        counters.g_access_enter += 1;
        const c = callerRva(this);
        if (gAccessCallers.length < SAMPLE_CAP) {
          gAccessCallers.push({ selector, caller_rva: c, consuming: consuming });
        }
        // lua_getfield(L, idx, key); lua_getglobal(L, name); lua_rawget(L, idx).
        const keyIdx = selector === 'lua_getglobal' ? 1 : 2;
        const keyStr = selector === 'lua_rawget' ? null : safeUtf8(args[keyIdx]);
        sendEvent({
          event: 'G2_CONSUMER',
          kind: 'g_access',
          selector,
          seq: counters.g_access_enter,
          thread: text(Process.getCurrentThreadId()),
          caller_rva: c,
          key_str: keyStr,
          consuming: consuming,
          registration_done: registrationDone,
        });
      },
    });
  }

  // lua_rawsetp / lua_rawset (K3 write side, and registration tail).
  for (const selector of ['lua_rawsetp', 'lua_rawset']) {
    const address = moduleLuaExport(module, selector);
    if (address === null) {
      hookStatus['K3-' + selector] = 'missing-export';
      continue;
    }
    hookStatus['K3-' + selector] = 'attached';
    Interceptor.attach(address, {
      onEnter() {
        if (!consuming) {
          return;
        }
        counters.g_access_enter += 1;
        if (gAccessCallers.length < SAMPLE_CAP) {
          gAccessCallers.push({ selector, caller_rva: callerRva(this), consuming: consuming });
        }
      },
    });
  }
}

// ---- RPC helpers -------------------------------------------------------

function resolveExports() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
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
    throw new Error('required Lua ABI export unresolved: ' + name);
  }
  return address;
}

function countGKeys(L, exp) {
  const gName = Memory.allocUtf8String('_G');
  exp.lua_getglobal(L, gName);
  exp.lua_pushnil(L);
  let count = 0;
  while (exp.lua_next(L, -2) !== 0) {
    count += 1;
    exp.lua_settop(L, -2);
  }
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

// Registration drive (reused; G2-REGISTRATION-PLAN §2 plan A).  Makes the 881
// class bindings live in _G; must run BEFORE any consumer observation.
function runregistration(names) {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  if (Array.isArray(names)) {
    expectedNames = names;
  }
  const resolved = resolveExports();
  const exp = {};
  const sig = {
    luaL_newstate: ['pointer', []],
    luaL_openlibs: ['void', ['pointer']],
    lua_createtable: ['void', ['pointer', 'int', 'int']],
    lua_rawsetp: ['void', ['pointer', 'int', 'pointer']],
    lua_rawset: ['void', ['pointer', 'int']],
    lua_pushcclosure: ['void', ['pointer', 'pointer', 'int']],
    lua_pcallk: ['int', ['pointer', 'int', 'int', 'int', 'int', 'pointer']],
    lua_getglobal: ['int', ['pointer', 'pointer']],
    lua_type: ['int', ['pointer', 'int']],
    lua_next: ['int', ['pointer', 'int']],
    lua_gettop: ['int', ['pointer']],
    lua_pushvalue: ['void', ['pointer', 'int']],
    lua_settop: ['void', ['pointer', 'int']],
    lua_pushnil: ['void', ['pointer']],
    lua_pushlightuserdata: ['void', ['pointer', 'pointer']],
    lua_rawgetp: ['int', ['pointer', 'int', 'pointer']],
    lua_setglobal: ['void', ['pointer', 'pointer']],
  };
  for (const name of LUA_EXPORTS) {
    if (!sig[name]) {
      continue;
    }
    const [ret, args] = sig[name];
    exp[name] = new NativeFunction(requireExport(resolved, name), ret, args);
  }

  const L = exp.luaL_newstate();
  if (L === null || L.isNull()) {
    throw new Error('luaL_newstate returned null');
  }
  exp.luaL_openlibs(L);
  const stockKeys = countGKeys(L, exp);

  const clsKey = feprojBase.add(CLSKEY_OFFSET);
  primeRegistry(L, exp, clsKey);

  driving = true;
  let nonzero = 0;
  let pcallk_rc = null;
  try {
    const dispatcher = new NativeFunction(feprojBase.add(RVA_L1), 'pointer', ['pointer', 'int']);
    const driver = new NativeCallback((state) => {
      for (let c = 0; c < NUM_CASES; c += 1) {
        const ret = dispatcher(state, c);
        if (ret !== null && !ret.isNull()) {
          nonzero += 1;
        }
      }
      return 0;
    }, 'int', ['pointer']);
    exp.lua_pushcclosure(L, driver, 0);
    pcallk_rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));
  } finally {
    driving = false;
  }

  registrationDone = true;
  sendEvent({
    event: 'G2_REGISTRATION_DONE',
    pcallk_rc: pcallk_rc,
    dispatcher_nonzero: nonzero,
    dispatcher_enter: counters.dispatcher_enter,
    register_class_enter: counters.register_class_enter,
    begin_class_enter: counters.begin_class_enter,
    stock_keys: stockKeys,
  });

  return {
    state: pointerKey(L),
    cls_key: pointerKey(clsKey),
    stock_keys: stockKeys,
    pcallk_rc: pcallk_rc,
    dispatcher_enter: counters.dispatcher_enter,
    dispatcher_nonzero: nonzero,
    register_class_enter: counters.register_class_enter,
    begin_class_enter: counters.begin_class_enter,
    registration_done: registrationDone,
    hook_status: hookStatus,
  };
}

// Controlled consumption segment (K1-K5).  The consumer segment MUST observe
// the SAME Lua state that registration built (the 881 bindings live in that
// state's _G).  Because a Lua state is not exported across RPC calls, the
// correct, provenance-tight flow is register-and-consume in ONE RPC, which is
// what `runconsumerfull` provides.  `runconsumer` is therefore a thin alias to
// it; it requires fresh `names`/`sampleNames` because it re-drives
// registration in its own self-contained state.
function runconsumer(names, sampleNames) {
  return runconsumerfull(names, sampleNames);
}

// Combined register-then-consume in ONE fresh Lua state (recommended; keeps
// provenance tight: registration -> controlled consumption on the same _G).
function runconsumerfull(names, sampleNames) {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  if (Array.isArray(names)) {
    expectedNames = names;
  }
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
  };
  const exp = {};
  for (const name of LUA_EXPORTS) {
    if (!sig[name]) {
      continue;
    }
    const [ret, args] = sig[name];
    exp[name] = new NativeFunction(requireExport(resolved, name), ret, args);
  }

  const L = exp.luaL_newstate();
  if (L === null || L.isNull()) {
    throw new Error('luaL_newstate returned null');
  }
  exp.luaL_openlibs(L);
  const stockKeys = countGKeys(L, exp);
  const clsKey = feprojBase.add(CLSKEY_OFFSET);
  primeRegistry(L, exp, clsKey);

  // --- registration drive (same recipe as plan A) ---
  driving = true;
  let nonzero = 0;
  let pcallk_rc = null;
  try {
    const dispatcher = new NativeFunction(feprojBase.add(RVA_L1), 'pointer', ['pointer', 'int']);
    const driver = new NativeCallback((state) => {
      for (let c = 0; c < NUM_CASES; c += 1) {
        const ret = dispatcher(state, c);
        if (ret !== null && !ret.isNull()) {
          nonzero += 1;
        }
      }
      return 0;
    }, 'int', ['pointer']);
    exp.lua_pushcclosure(L, driver, 0);
    pcallk_rc = exp.lua_pcallk(L, 0, 0, 0, 0, ptr(0));
  } finally {
    driving = false;
  }
  registrationDone = true;

  // Attach consumer anchors NOW (post-load, post-registration).  Attaching at
  // module-map time races the island decryption (stub overwritten -> hook
  // never fires); attaching here guarantees plaintext .text (probe-verified:
  // base+0x164B4A0 is the real __index closure and fires when attached late).
  attachInternalHooks(true);
  if (luaTolstring === null) {
    const ts = moduleLuaExport(feprojModule, 'lua_tolstring');
    if (ts !== null) {
      luaTolstring = new NativeFunction(ts, 'pointer', ['pointer', 'int', 'pointer']);
    }
  }

  sendEvent({
    event: 'G2_REGISTRATION_DONE',
    pcallk_rc: pcallk_rc,
    dispatcher_nonzero: nonzero,
    register_class_enter: counters.register_class_enter,
    begin_class_enter: counters.begin_class_enter,
    stock_keys: stockKeys,
  });

  // --- controlled consumption segment (K1-K5) ---
  consuming = true;
  const consumeTargets = Array.isArray(sampleNames) && sampleNames.length > 0
    ? sampleNames
    : (expectedNames.length > 0 ? expectedNames.slice(0, 5) : ['GainDeckAssetObject', 'FixTransform', 'FEInterfaceConfig']);
  // Real members per class (API-INDEX.md; presence not assumed at runtime).
  const memberCandidates = {
    FEInterfaceConfig: ['isRiotLogEnabled', 'hasException', 'logicAppVersion'],
    GainDeckAssetObject: ['resID'],
    GainDeckResObject: ['recordDict', 'recordList'],
    FixTransform: ['position', 'rotation'],
    FEMsgQueue: ['msgSeq'],
    Flow: ['buff', 'variables'],
  };
  const accessResults = [];
  try {
    for (const name of consumeTargets) {
      // K3: _G access.
      const namePtr = Memory.allocUtf8String(name);
      exp.lua_getglobal(L, namePtr);   // push _G[name] -> [class]
      const tt = exp.lua_type(L, -1);
      const row = { name: name, global_type: tt };
      accessResults.push(row);
      // K1: drive __index with REAL member keys (missing members crash this
      // build's closure: access violation 0xb — recorded, not fatal).
      if (exp.lua_getfield && tt !== 0) {
        const members = memberCandidates[name] || ['__index'];
        for (const member of members.slice(0, 2)) {
          const mPtr = Memory.allocUtf8String(member);
          try {
            exp.lua_getfield(L, -1, mPtr); // -> [class, member]
            const mt = exp.lua_type(L, -1);
            row[member + '_type'] = mt;
            if (mt === 6 && exp.lua_pcallk) {
              // K2 attempt: call the resolved member function with self
              // (class table) — catchable; rc != 0 = Lua error, thrown =
              // native fault, both recorded honestly.
              exp.lua_pushvalue(L, -2);   // -> [class, member, self]
              try {
                const rc = exp.lua_pcallk(L, 1, 0, 0, 0, ptr(0));
                row[member + '_pcallk_rc'] = rc;
              } catch (callError) {
                row[member + '_call_error'] = String(callError);
              }
              exp.lua_settop(L, -1);      // -> [class]
            } else {
              exp.lua_settop(L, -2);      // drop member value
            }
          } catch (getfieldError) {
            row[member + '_error'] = String(getfieldError);
            exp.lua_settop(L, -1);        // recover: drop class (stack may be
                                          // corrupt after native fault; next
                                          // iteration re-pushes from global)
          }
        }
      }
      exp.lua_settop(L, 0); // clear stack before next iteration
    }
  } finally {
    consuming = false;
  }
  sendEvent({
    event: 'G2_CONSUMER_SEGMENT_DONE',
    consumed_names: accessResults.length,
    index_enter: counters.index_enter,
    member_call_enter: counters.member_call_enter,
    g_access_enter: counters.g_access_enter,
  });

  return {
    state: pointerKey(L),
    cls_key: pointerKey(clsKey),
    stock_keys: stockKeys,
    pcallk_rc: pcallk_rc,
    dispatcher_enter: counters.dispatcher_enter,
    register_class_enter: counters.register_class_enter,
    begin_class_enter: counters.begin_class_enter,
    // K criteria (aggregated; RPC return, not per-event rows)
    criteria: {
      K1_index_enter: counters.index_enter,
      K1_newindex_enter: counters.newindex_enter,
      K2_member_call_enter: counters.member_call_enter,
      K3_g_access_enter: counters.g_access_enter,
      K4_dispatcher_enter: counters.dispatcher_enter,
      K4_dispatcher_post_reg_enter: counters.dispatcher_post_reg_enter,
      K5_metadata_getter_enter: counters.metadata_getter_enter,
      K6_consuming_window: 0,
    },
    samples: {
      index: indexSamples,
      member_call: memberCallSamples,
      metadata_getter: metadataGetterHits,
      dispatcher_post_reg_callers: dispatcherPostRegCallers,
      g_access_callers: gAccessCallers,
    },
    access_results: accessResults,
    hook_status: hookStatus,
  };
}

// B-1 style no-drive observation (K6): report whether consumer activity
// occurs spontaneously outside the controlled consumption window.
function observeNoDrive(windowMs) {
  const began = Date.now();
  const before = {
    index: counters.index_enter,
    member: counters.member_call_enter,
    dispatcher: counters.dispatcher_post_reg_enter,
    g_access: counters.g_access_enter,
  };
  const wait = typeof windowMs === 'number' && windowMs > 0 ? windowMs : 30000;
  // Poll-free: we rely on the event hooks; just sleep the window and snapshot.
  const sleep = (ms) => {
    const t0 = Date.now();
    while (Date.now() - t0 < ms) {
      Thread.sleep(5);
    }
  };
  sleep(wait);
  const after = {
    index: counters.index_enter,
    member: counters.member_call_enter,
    dispatcher: counters.dispatcher_post_reg_enter,
    g_access: counters.g_access_enter,
  };
  const spontaneous = {
    index: after.index - before.index,
    member: after.member - before.member,
    dispatcher: after.dispatcher - before.dispatcher,
    g_access: after.g_access - before.g_access,
  };
  sendEvent({
    event: 'G2_CONSUMER_NODRIVE',
    window_ms: wait,
    before: before,
    after: after,
    spontaneous: spontaneous,
    criteria: { K6_spontaneous: spontaneous },
  });
  return {
    window_ms: wait,
    before: before,
    after: after,
    spontaneous: spontaneous,
    criteria: { K6_spontaneous: spontaneous },
  };
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
  return { name: TARGET_NAME, base: pointerKey(feprojBase), size: feprojSize };
}

function probeLuaExports() {
  if (!feprojLoaded || feprojModule === null) {
    throw new Error('libFEProj.so is not loaded');
  }
  return LUA_EXPORTS.map((selector) => {
    const address = moduleLuaExport(feprojModule, selector);
    const result = { selector: selector, resolved: address !== null, address: pointerKey(address) };
    sendEvent({ event: 'B2_EXPORT', selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

function finalcounts() {
  return {
    index_enter: counters.index_enter,
    member_call_enter: counters.member_call_enter,
    dispatcher_enter: counters.dispatcher_enter,
    dispatcher_post_reg_enter: counters.dispatcher_post_reg_enter,
    g_access_enter: counters.g_access_enter,
    metadata_getter_enter: counters.metadata_getter_enter,
    register_class_enter: counters.register_class_enter,
    begin_class_enter: counters.begin_class_enter,
    registration_done: registrationDone,
  };
}

// --- boot ----------------------------------------------------------------

setInterval(tryDetectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== 'undefined') {
  rpc.exports = {
    environment: environment,
    setbattlelogicpath: (path) => {
      // Accepted for runner compatibility; registration drive does not read
      // BattleLogic.res (it only needs the locked DSO + a fresh VM).
      return { battle_logic_path: path };
    },
    setexpectednames: (names) => {
      expectedNames = Array.isArray(names) ? names : [];
      return { expected_names: expectedNames.length };
    },
    waitfeprojloaded: waitFEProjLoaded,
    probeluaexports: probeLuaExports,
    runregistration: runregistration,
    runconsumerfull: runconsumerfull,
    runconsumer: runconsumer,
    observenodrive: observeNoDrive,
    finalcounts: finalcounts,
  };
}
