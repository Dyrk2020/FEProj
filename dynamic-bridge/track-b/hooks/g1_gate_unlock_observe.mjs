'use strict';

// G1 gate-unlock observation hook (observe-only + controlled-call sequence).
//
// Plan: docs/plans/2026-08-22-g1-gate-unlock-testmain.md
//
// Static basis (IDA rttext session 085203a9, 2026-08-22):
//   registrar fe_registrar_rt_158853C  sole writer of off_726D0C8(ctx)/
//     qword_726D0D0(g_buf)/dword_726D0D8(g_len); rc 0 ok, 1116 len<1.
//   validator 0x3EC3F28(blob=a3,len=a4,flag=a5,ctx2=a6): flag==0 skips stamp
//     scan; stamp = ASCII "202002211706" OR sub_3EC3E04-transformed version
//     string OR magic12 EF 4D 2A 72 74 C1 9E E7 7F 0D 97 1E; miss -> rc 1115;
//     strlen(version) >= len -> rc 1114. Success path: *(ctx+24)==0 ->
//     sub_3EC3534(ctx) then registrar(blob, len, ctx2).
//   Gates: 0x1588258 -> sub_1589728 -> core 0x15898A4; 0x158840C ->
//     bootstrap 0x158C44C (luaL_openlibs, lazy 0x726DEA0/0x726DEA8, DoCommand
//     w/ cmd string). Conditions: qword_726D0E0 && *+8 else 1113;
//     qword_726D0D0 && dword_726D0D8 else 1117. Bootstrap additionally needs
//     *(a1+8) != 0 else 1118.
//
// a1 CONVENTION HISTORY (evidence-driven):
//   Attempt 1 (2026-08-22 run pair 0e6b20/971d57): a1 = allocated ctx struct.
//   Result: validator rc=0, registrar rc=0 wrote all three slots (writer
//   attribution CONFIRMED), but bootstrap returned 1118 because *(ctx+8)=0:
//   luaL_openlibs() decompiles argument-less => x0 passthrough => bootstrap's
//   a1 is expected to be a lua_State* (or env whose +8 is non-trivial), not
//   the bare validator ctx.
//   Attempt 2 (this revision): a1 = fresh luaL_newstate() handle for the two
//   gates; validator keeps its own ctx struct. Snapshots dump both memories.
//
// Frida 17 API notes: Module.getExportByName / Memory.readByteArray statics
// are removed; use compat chain + NativePointer.readByteArray.

const TARGET_NAME = 'libFEProj.so';
const POLL_INTERVAL_MS = 200;
const TESTMAIN_SIZE = 698;

const ANCHORS = {
  validator: 0x3EC3F28,
  ctxInit: 0x3EC3534,
  singletonFactory: 0x3EC45F8,
  gateA: 0x1588258,
  gateB: 0x158840C,
  bootstrap: 0x158C44C,
  doCommandEntry: 0x1589728,
  registrar: 0x158853C,
  teardown: 0x1587F44,
};

const SLOTS = {
  ctx_0x726D0C8: { rva: 0x726D0C8, kind: 'ptr' },
  g_buf_0x726D0D0: { rva: 0x726D0D0, kind: 'ptr' },
  g_len_0x726D0D8: { rva: 0x726D0D8, kind: 'u32' },
  state_0x726D0E0: { rva: 0x726D0E0, kind: 'ptr' },
  ctx_cache_0x726DEA0: { rva: 0x726DEA0, kind: 'ptr' },
  second_0x726DEA8: { rva: 0x726DEA8, kind: 'ptr' },
};

let feprojModule = null;

function pk(p) { return p === null || p === undefined ? null : p.toString(); }

function env() { return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id }; }

function hexHead(ptrObj, n) {
  try {
    const ab = ptrObj.readByteArray(n);
    if (ab === null) return null;
    return Array.from(new Uint8Array(ab))
      .map((b) => b.toString(16).padStart(2, '0')).join('');
  } catch (_) { return null; }
}

function readSlots() {
  const snap = {};
  for (const [name, spec] of Object.entries(SLOTS)) {
    try {
      const addr = feprojModule.base.add(spec.rva);
      snap[name] = spec.kind === 'u32' ? addr.readU32() : pk(addr.readPointer());
    } catch (_) { snap[name] = null; }
  }
  try {
    const st = feprojModule.base.add(0x726D0E0).readPointer();
    snap.state_plus8 = st.isNull() ? null : pk(st.add(8).readPointer());
  } catch (_) { snap.state_plus8 = null; }
  return snap;
}

function attachAnchor(rva, label, opts) {
  Interceptor.attach(feprojModule.base.add(rva), {
    onEnter(args) {
      const rec = {
        event: 'ANCHOR_ENTER', label: label, rva: rva.toString(16),
        x0: pk(args[0]), x1: pk(args[1]), x2: pk(args[2]), x3: pk(args[3]),
        slots: readSlots(),
      };
      if (opts && opts.blobArgIndex !== undefined) {
        rec.blob_head16 = hexHead(args[opts.blobArgIndex], 16);
      }
      send(rec);
    },
    onLeave(retval) {
      send({
        event: 'ANCHOR_LEAVE', label: label, rva: rva.toString(16),
        retval: retval.toInt32(), slots: readSlots(),
      });
    },
  });
}

function installAnchors() {
  attachAnchor(ANCHORS.validator, 'validator_D', { blobArgIndex: 2 });
  attachAnchor(ANCHORS.ctxInit, 'testscript_ctx_init');
  attachAnchor(ANCHORS.singletonFactory, 'singleton_factory');
  attachAnchor(ANCHORS.gateA, 'dispatch_gate_A');
  attachAnchor(ANCHORS.gateB, 'bootstrap_gate_B');
  attachAnchor(ANCHORS.bootstrap, 'check_driver_bootstrap');
  attachAnchor(ANCHORS.doCommandEntry, 'DoCommand_entry');
  attachAnchor(ANCHORS.registrar, 'fe_registrar', { blobArgIndex: 0 });
  attachAnchor(ANCHORS.teardown, 'teardown');
}

function globalExportByName(name) {
  try {
    if (typeof Module.findExportByName === 'function') {
      const address = Module.findExportByName(null, name);
      if (address !== null) return address;
    }
  } catch (_) { /* fall through */ }
  if (typeof Module.findGlobalExportByName === 'function') {
    return Module.findGlobalExportByName(name);
  }
  return null;
}

function numberSafe(v) { return typeof v === 'number' ? v : Number(v); }

function readStagedFile(path, size) {
  const openAddr = globalExportByName('open');
  const readAddr = globalExportByName('read');
  const closeAddr = globalExportByName('close');
  const open = new NativeFunction(openAddr, 'int', ['pointer', 'int']);
  const read = new NativeFunction(readAddr, 'int', ['int', 'pointer', 'ulong']);
  const close = new NativeFunction(closeAddr, 'int', ['int']);
  const fd = numberSafe(open(Memory.allocUtf8String(path), 0));
  if (fd < 0) throw new Error('open failed: ' + path);
  const buffer = Memory.alloc(size);
  try {
    const got = numberSafe(read(fd, buffer, size));
    if (got !== size) throw new Error('short read ' + got + '/' + size + ': ' + path);
    return buffer;
  } finally { close(fd); }
}

function unlockSequence(testMainPath) {
  if (feprojModule === null) throw new Error('libFEProj.so not loaded');
  const newstateAddr = (function () {
    try {
      if (typeof feprojModule.findExportByName === 'function') {
        const a = feprojModule.findExportByName('luaL_newstate');
        if (a !== null && a !== undefined) return a;
      }
    } catch (_) { /* fall through */ }
    try {
      if (typeof Module.findExportByName === 'function') {
        return Module.findExportByName(TARGET_NAME, 'luaL_newstate');
      }
    } catch (_) { /* fall through */ }
    return null;
  })();
  if (newstateAddr === null || newstateAddr === undefined) {
    throw new Error('luaL_newstate not resolvable');
  }
  const luaNewstate = new NativeFunction(newstateAddr, 'pointer', []);
  const out = { steps: [] };
  const snap = (label) => {
    const s = readSlots();
    s.ctx_hex64 = hexHead(out.ctx || ptr(0), 64);
    out.steps.push({ label: label, slots: s });
    return s;
  };

  // Step 0: fresh Lua state for the gate/bootstrap chain (attempt-2 convention).
  const L = luaNewstate();
  if (L === null || L.isNull()) throw new Error('luaL_newstate returned null');

  // Step 0b: wrapper env object — disasm proves bootstrap reads *(a1+8) as
  // the lua_State handed to luaL_openlibs (0x158c464 ldr x0,[x20,#8];
  // 0x158c474 bl luaL_openlibs@plt). Build X = {0:0, 8:L}.
  const envObj = Memory.alloc(32);
  envObj.add(8).writePointer(L);
  out.env_obj = pk(envObj);
  out.L = pk(L);

  // Step 1: zeroed ctx struct for the validator.
  out.ctx = Memory.alloc(64);
  snap('pre');

  // Step 2: locked TestMain.res blob.
  const blob = readStagedFile(testMainPath, TESTMAIN_SIZE);
  out.blob_head16 = hexHead(blob, 16);

  // Step 3: validator D (flag=1 -> full stamp scan).
  const validator = new NativeFunction(
    feprojModule.base.add(ANCHORS.validator), 'int',
    ['pointer', 'pointer', 'pointer', 'uint', 'uint', 'pointer']);
  let rcValidator = -1;
  try { rcValidator = numberSafe(validator(out.ctx, ptr(0), blob, TESTMAIN_SIZE, 1, out.ctx)); }
  catch (e) { out.validator_error = String(e); }
  out.rc_validator = rcValidator;
  snap('after_validator');

  if (rcValidator !== 0) {
    out.stopped_at = 'validator';
    send({ event: 'UNLOCK_RESULT', ...out });
    return out;
  }

  // Step 3b: the one store the game's native LuaManager bootstrap performs
  // before dispatch: second = *(state+8); second->+8 = L.
  // Disasm chain: 0x158842c x0=*(state+8); 0x158c464 ldr x0,[x20,#8];
  // 0x158c474 bl luaL_openlibs@plt. Controlled precondition, recorded as
  // such — never reported as game-spontaneous.
  const statePtr = feprojModule.base.add(0x726D0E0).readPointer();
  const second = statePtr.add(8).readPointer();
  out.state_ptr = pk(statePtr);
  out.second_ptr = pk(second);
  if (second.isNull()) {
    out.stopped_at = 'second_null';
    send({ event: 'UNLOCK_RESULT', ...out });
    return out;
  }
  second.add(8).writePointer(L);
  snap('after_second_plus8_L');

  // Step 4: bootstrap via gate B (gates load their own operands from
  // globals; passed a1 is ignored upstream of the substitution).
  const gateB = new NativeFunction(
    feprojModule.base.add(ANCHORS.gateB), 'int',
    ['pointer', 'pointer', 'uint', 'uint']);
  let rcGateB = -1;
  try { rcGateB = numberSafe(gateB(envObj, blob, TESTMAIN_SIZE, TESTMAIN_SIZE)); }
  catch (e) { out.gateB_error = String(e); }
  out.rc_gate_b = rcGateB;
  snap('after_gate_B');

  // Step 5: dispatch gate A, same convention.
  const gateA = new NativeFunction(
    feprojModule.base.add(ANCHORS.gateA), 'int',
    ['pointer', 'pointer', 'uint', 'uint']);
  let rcGateA = -1;
  try { rcGateA = numberSafe(gateA(envObj, blob, TESTMAIN_SIZE, TESTMAIN_SIZE)); }
  catch (e) { out.gateA_error = String(e); }
  out.rc_gate_a = rcGateA;
  snap('after_gate_A');

  send({ event: 'UNLOCK_RESULT', ...out });
  return out;
}

function detectFEProj() {
  if (feprojModule !== null) return feprojModule;
  const m = Process.findModuleByName(TARGET_NAME);
  if (m !== null && m.size > 0x1000000) {
    feprojModule = m;
    send({ event: 'FEPROJ_LOADED', base: pk(m.base), size: m.size });
    installAnchors();
    send({ event: 'ANCHORS_INSTALLED', slots: readSlots() });
  }
  return feprojModule;
}

setInterval(detectFEProj, POLL_INTERVAL_MS);

if (typeof rpc !== 'undefined') {
  rpc.exports = {
    environment: env,
    waitfeprojloaded: function (timeoutMs) {
      // Single JS thread: busy-poll detectFEProj(); never Thread.sleep here.
      const deadline = Date.now() + (timeoutMs || 60000);
      while (Date.now() < deadline) {
        if (detectFEProj() !== null) {
          return { loaded: true, base: pk(feprojModule.base) };
        }
        const spinUntil = Date.now() + 50;
        while (Date.now() < spinUntil) { /* busy wait */ }
      }
      return { loaded: false };
    },
    snapshot: function () {
      if (feprojModule === null) throw new Error('libFEProj.so not loaded');
      return readSlots();
    },
    unlocksequence: unlockSequence,
  };
}
