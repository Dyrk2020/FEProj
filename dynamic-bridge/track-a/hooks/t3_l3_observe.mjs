'use strict';

// T3-L3 live adjudication hook v3 (observe-only).
// Plan: docs/plans/2026-08-22-t3-l3-live-adjudication.md
//
// v2: segment-scatter-aware RVA resolution (r-x mapping whose file-offset
//     range covers the RVA; observed scatter up to ~1.87GB from Module.base).
// v3: H4 SetKey captures candidate buffers from args[0..2] (arg layout
//     uncertain; offline analysis picks the 48B key blob).

const FE = 'libFEProj.so';
const LN = 'libLNet.so';
const POLL_MS = 2000;
const MAX_EVENTS_PER_SEC = 400;

let installedKey = null;
let listeners = [];
let counters = {};
let dropped = 0;

function pk(p) { return p === null || p === undefined ? null : p.toString(); }

function env() { return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id }; }

function emit(event) {
  const now = Date.now();
  if (!(counters.__secT && now - counters.__secT < 1000)) { counters.__sec = 0; counters.__secT = now; }
  counters.__sec += 1;
  if (counters.__sec > MAX_EVENTS_PER_SEC) { dropped += 1; return; }
  send(event);
}

function bump(name) { counters[name] = (counters[name] || 0) + 1; return counters[name]; }

function hexHead(ptrObj, n) {
  try {
    const ab = ptrObj.readByteArray(n);
    return ab === null ? null : Array.from(new Uint8Array(ab)).map(b => b.toString(16).padStart(2, '0')).join('');
  } catch (_) { return null; }
}

function resolveRva(pathSubstr, rva) {
  let ranges = [];
  try { ranges = Process.enumerateRanges({ protection: 'r-x', coalesce: false }); }
  catch (_) { return null; }
  for (const r of ranges) {
    if (!r.file || !r.file.path || r.file.path.indexOf(pathSubstr) < 0) continue;
    const off = r.file.offset >>> 0;
    if (rva >= off && rva < off + r.size) return r.base.add(rva - off);
  }
  return null;
}

function snapshotExecKey() {
  const keys = [];
  try {
    for (const r of Process.enumerateRanges({ protection: 'r-x', coalesce: false })) {
      if (r.file && r.file.path && r.file.path.indexOf(FE) >= 0)
        keys.push(pk(r.base) + '@' + (r.file.offset >>> 0).toString(16));
    }
  } catch (_) {}
  return keys.join(',');
}

function makeAnchor(rva, label, opts) {
  const addr = resolveRva(FE, rva);
  if (addr === null) {
    emit({ event: 'ANCHOR_RESOLVE_FAIL', label: label, rva: rva.toString(16) });
    return false;
  }
  listeners.push(Interceptor.attach(addr, {
    onEnter(args) {
      const rec = { event: 'ANCHOR_ENTER', label: label,
                    x0: pk(args[0]), x1: pk(args[1]), x2: pk(args[2]) };
      if (opts && opts.isCritStore) {
        try {
          const ctx = this.context.x27;
          rec.ctx = pk(ctx);
          rec.old_flag = ctx.add(0x1FA).readU8();
          rec.new_value = Number(this.context.x9) & 1;
        } catch (_) {}
      }
      emit(rec);
    },
    onLeave(retval) {
      emit({ event: 'ANCHOR_LEAVE', label: label, retval: retval.toInt32() });
    },
  }));
  bump('installed_' + label);
  return true;
}

function installAll() {
  let ok = 0, fail = 0;

  const feDefs = [
    [0x1FDA454, 'H1_CRIT_ADJ', {}],
    [0x1FDAF40, 'H2_ISCRIT_STORE', { isCritStore: true }],
    [0x15E2B00, 'H6_CASE409_TEMPLATE', {}],
  ];
  for (const [rva, label, o] of feDefs) {
    if (makeAnchor(rva, label, o)) ok += 1; else fail += 1;
  }

  const h3 = resolveRva(FE, 0x4B067C0);
  if (h3 !== null) {
    listeners.push(Interceptor.attach(h3, { onEnter() {
      const n = bump('h3');
      if (n === 1 || n % 5000 === 0) emit({ event: 'H3_FLOW_STEP', n: n });
    }}));
    ok += 1;
  } else fail += 1;

  // H4 SetKey — capture candidate buffers from args[0..2]
  const setkeyAddr = resolveRva(LN, 0x9F640);
  if (setkeyAddr !== null) {
    listeners.push(Interceptor.attach(setkeyAddr, {
      onEnter(args) {
        bump('h4');
        const rec = { event: 'H4_SETKEY',
                      x0: pk(args[0]), x1: pk(args[1]), x2: pk(args[2]), x3: pk(args[3]) };
        for (const ai of [0, 1, 2]) {
          try { rec['arg' + ai + '_head64'] = hexHead(args[ai], 64); } catch (_) {}
        }
        emit(rec);
      },
    }));
    ok += 1;
  } else fail += 1;

  for (const def of [[0xd0d80, 'H5_ENC'], [0xd310c, 'H5_DEC']]) {
    const addr = resolveRva(LN, def[0]);
    if (addr === null) { fail += 1; continue; }
    listeners.push(Interceptor.attach(addr, {
      onEnter(args) {
        const n = bump(def[1]);
        if (n <= 10 || n % 200 === 0)
          emit({ event: def[1], n: n, a0: pk(args[0]), a1: pk(args[1]), a2: pk(args[2]) });
      },
    }));
    ok += 1;
  }

  try {
    const tdr = Process.findModuleByName('libtdr.so');
    const ta = tdr ? tdr.findExportByName('tdr_load_metalib_buf') : null;
    if (ta) {
      listeners.push(Interceptor.attach(ta, { onEnter() {
        const n = bump('h7');
        if (n <= 5 || n % 100 === 0) emit({ event: 'H7_TDR_LOAD', n: n });
      }}));
      ok += 1;
    }
  } catch (_) { fail += 1; }

  emit({ event: 'INSTALL_SUMMARY', ok: ok, fail: fail, counters: snapshotCounters() });
  return ok > 0;
}

function snapshotCounters() {
  const c = {}; for (const k in counters) if (k !== '__sec' && k !== '__secT') c[k] = counters[k];
  return c;
}

let lastInstallOk = false;
function tryInstall() {
  if (installedKey !== null) return true;
  const probe = resolveRva(FE, 0x1FDA454);
  if (probe === null) return false;
  installedKey = snapshotExecKey();
  lastInstallOk = installAll();
  emit({ event: 'INSTALLED', exec_key: installedKey });
  return lastInstallOk;
}

setInterval(function () {
  if (installedKey === null) { tryInstall(); return; }
  const cur = snapshotExecKey();
  if (cur !== installedKey) {
    emit({ event: 'DRIFT_DETECTED', old: installedKey, new: cur });
    for (const l of listeners) { try { l.detach(); } catch (_) {} }
    listeners = [];
    installedKey = cur;
    installAll();
    emit({ event: 'REINSTALLED', counters: snapshotCounters() });
  }
}, POLL_MS);

if (typeof rpc !== 'undefined') {
  rpc.exports = {
    environment: env,
    probeandinstall: function () {
      const ok = tryInstall();
      return { installed: ok, exec_key: installedKey, counters: snapshotCounters() };
    },
    stats: function () { return { counters: snapshotCounters(), dropped: dropped }; },
  };
}
