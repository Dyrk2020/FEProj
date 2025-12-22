/*
 * u16_dump.js — type=07  5B  dump2026-08-12, HookPrep 
 *
 * dump  5B `03 01 [u16  BE][u8  0..10]` u16 
 *       0e/0d  StaticLocate  libFEProj.so 
 *        x0-x4  64B
 *
 * run_dump.py --attach <pid>    python  send  JSONL
 *
 * VA == file offsetPIE  0  = base + RVA
 *
 * work/type07-parse-20260812/Type07Fields/fields.mdhlen=4 
 *   out[0:4]   = head4wire u32
 *   out[4:8]   = CRC32
 *   out[8:12]  = type u3207 = 
 *   out[12:16] = msgseq u32 +1
 *   out[16]    = 0x02 
 *   out[17]    = 0x00 
 *   out[18]    = subtype
 *   out[19]    = focus
 *   out[20:]   = 5B  + 0d/0e  +  00 
 *    = 03 01 [u16 ][u8 ]0e  16B = 0e 65 03 00 00 [6B ] ff ff ff ff
 *   0d  14B = 0d 0c 06 XX 01 YY 09 65 ZZ 06 00 00 00 00
 *
 * StaticLocate hook libLNet.so Decrypt vtbl+0x20  0xd310c
 * NetCryptoDecrypt(ctx, wire, hlen, tlen, out, outlen)x0=ctx,x1=wire,w2=hlen,
 *  w3=tlen,x4=out,x5=outlen——onLeave  x4  type=07
 *
 * XOR Interceptor  base+RVA  XOR 
 */
"use strict";

/* run_dump.py  StaticLocate/report.json {"rvas":[int|{rva,when}]}  null */
var STATIC_LOCATE = __STATIC_LOCATE_JSON__;

var FE_PROJ = "libFEProj.so";
var LNET = "libLNet.so";
var FALLBACK_DEC = 0xd310c;          // libLNet Decrypt 
var MAX_RECORDS = 128;               // /
var MAX_FRAME_BYTES = 512;           // 
var SNIFF_WINDOW = 160;              // 

function ts() { return Date.now(); }

function hex(p, n) {
  n = n || 64;
  try {
    var a = p.readByteArray(n);
    if (!a) return "";
    var u = new Uint8Array(a);
    var s = "";
    for (var i = 0; i < u.length; i++) s += ("0" + u[i].toString(16)).slice(-2);
    return s;
  } catch (e) { return "ERR"; }
}

function hexOf(p, n) {
  if (!p || p.isNull()) return "";
  return hex(p, n);
}

function bytesOf(p, n) {
  try {
    var a = p.readByteArray(n);
    return a ? Array.prototype.slice.call(new Uint8Array(a)) : null;
  } catch (e) { return null; }
}

function emit(ch, rec) {
  rec.t = ts();
  send({ ch: ch, rec: rec });
}

function emitInfo(rec) { emit("info", rec); }


function parseRecordsFromBytes(b, recOff) {
  var recs = [];
  var i = recOff;
  var end = b.length;
  while (i < end - 4 && recs.length < MAX_RECORDS) {
    if (b[i] === 0x03 && b[i + 1] === 0x01) {
      var val = (b[i + 2] << 8) | b[i + 3];
      var idx = b[i + 4];
      var raw = "";
      for (var k = 0; k < 5; k++) raw += ("0" + b[i + k].toString(16)).slice(-2);
      recs.push({ off: i - recOff, val: val, idx: idx, raw: raw });
      i += 5;
    } else {
      i += 1;
    }
  }
  return recs;
}

function parseBlocksFromBytes(b, recOff) {
  /* 0e 0e 65 03 00 00 [6B] ff ff ff ff16B0d 0d 0c …14B */
  var blocks = [];
  var i = recOff;
  var end = b.length;
  while (i < end - 1) {
    if (b[i] === 0x0e && b[i + 1] === 0x65 && b[i + 2] === 0x03 && b[i + 3] === 0x00 && b[i + 4] === 0x00 && i + 16 <= end) {
      var rawe = "";
      for (var ke = 0; ke < 16; ke++) rawe += ("0" + b[i + ke].toString(16)).slice(-2);
      blocks.push({ kind: "0e", off: i - recOff, len: 16, raw: rawe });
      i += 16;
    } else if (b[i] === 0x0d && b[i + 1] === 0x0c && i + 14 <= end) {
      var rawd = "";
      for (var kd = 0; kd < 14; kd++) rawd += ("0" + b[i + kd].toString(16)).slice(-2);
      blocks.push({ kind: "0d", off: i - recOff, len: 14, raw: rawd });
      i += 14;
    } else {
      i += 1;
    }
  }
  return blocks;
}

function groupByPlayer(recs) {
  var g = {};
  for (var i = 0; i < recs.length; i++) {
    var r = recs[i];
    (g[r.idx] = g[r.idx] || []).push(r.val);
  }
  return g;
}

/* b = recOff =  20 */
function parseFrameBytes(b, recOff) {
  var recs = parseRecordsFromBytes(b, recOff);
  var blocks = parseBlocksFromBytes(b, recOff);
  var tail = b.length > 8 ? b.slice(b.length - 8) : b;
  var tailHex = "";
  for (var k = 0; k < tail.length; k++) tailHex += ("0" + tail[k].toString(16)).slice(-2);
  var head = { head4: "", crc: "", type: 0, msgseq: 0, b16: 0, b17: 0, subtype: 0, focus: 0 };
  if (b.length >= 12) {
    var h = "";
    for (var kh = 0; kh < 4; kh++) h += ("0" + b[kh].toString(16)).slice(-2);
    head.head4 = h;
    var c = "";
    for (var kc = 4; kc < 8; kc++) c += ("0" + b[kc].toString(16)).slice(-2);
    head.crc = c;
    head.type = (b[8] << 24) | (b[9] << 16) | (b[10] << 8) | b[11];
  }
  if (b.length >= 20) {
    head.msgseq = (b[12] << 24) | (b[13] << 16) | (b[14] << 8) | b[15];
    head.b16 = b[16]; head.b17 = b[17]; head.subtype = b[18]; head.focus = b[19];
  }
  return {
    head: head,
    records: recs,
    by_player: groupByPlayer(recs),
    blocks: blocks,
    tail_hex: tailHex
  };
}

/* ptr  type=07 [8:12]=00 00 00 0703 01  */
function sniffFrame(p) {
  if (!p || p.isNull()) return null;
  var b = bytesOf(p, SNIFF_WINDOW);
  if (!b || b.length < 12) return null;
  var type = (b[8] << 24) | (b[9] << 16) | (b[10] << 8) | b[11];
  if (type === 7) return parseFrameBytes(b, 20);
  return null;
}

function sniffRecordStream(p) {
  if (!p || p.isNull()) return null;
  var b = bytesOf(p, SNIFF_WINDOW);
  if (!b || b.length < 6) return null;
  if (b[0] === 0x03 && b[1] === 0x01) {
    var recs = parseRecordsFromBytes(b, 0);
    return { records: recs, by_player: groupByPlayer(recs) };
  }
  return null;
}

/* ---- 1. StaticLocate  hooklibFEProj.so base + RVA ---- */

function hookConsumeRva(entry) {
  var rva = typeof entry === "object" ? entry.rva : entry;
  var when = typeof entry === "object" && entry.when ? entry.when : "enter";
  var m = Process.findModuleByName(FE_PROJ);
  if (!m) { emitInfo({ evt: "no_module", name: FE_PROJ }); return; }
  var target = m.base.add(rva);
  var makeRec = function (args) {
    var rec = {
      evt: "consume",
      rva: rva,
      addr: target.toString(),
      regs: {},
      mem: {}
    };
    for (var i = 0; i < 5; i++) {
      rec.regs["x" + i] = args[i].toString();
      rec.mem["x" + i + "_64"] = hexOf(args[i], 64);
    }
    for (var j = 0; j < 5; j++) {
      var f = sniffFrame(args[j]);
      if (f) { rec.frame_at = "x" + j; rec.frame = f; break; }
    }
    if (!rec.frame) {
      for (var k = 0; k < 5; k++) {
        var rs = sniffRecordStream(args[k]);
        if (rs) { rec.records_at = "x" + k; rec.records = rs.records; rec.by_player = rs.by_player; break; }
      }
    }
    return rec;
  };
  try {
    Interceptor.attach(target, {
      onEnter: function (args) {
        if (when === "leave") {
          this._args = [];
          for (var i = 0; i < 5; i++) this._args.push(args[i]);
          return;
        }
        emit("consume", makeRec(args));
      },
      onLeave: function (ret) {
        if (when !== "leave") return;
        if (!this._args) return;
        var args = this._args;
        var rec = makeRec(args);
        rec.retval = ret.toString();
        emit("consume", rec);
      }
    });
    emitInfo({ evt: "attached", tag: "consume", rva: rva, when: when, addr: target.toString() });
  } catch (e) {
    emitInfo({ evt: "attach_fail", tag: "consume", rva: rva, err: e.message });
  }
}

(function () {
  var list = [];
  if (STATIC_LOCATE && STATIC_LOCATE.rvas) list = STATIC_LOCATE.rvas;
  emitInfo({ evt: "static_locate", present: !!STATIC_LOCATE, rvas: list.map(function (e) { return typeof e === "object" ? e.rva : e; }) });
  for (var i = 0; i < list.length; i++) {
    try { hookConsumeRva(list[i]); } catch (e) { emitInfo({ evt: "hook_error", rva: list[i], err: e.message }); }
  }
})();

/* ---- 2. libLNet.so Decrypt  0xd310c  type=07 ---- */

(function () {
  var m = Process.findModuleByName(LNET);
  if (!m) { emitInfo({ evt: "no_module", name: LNET }); return; }
  emitInfo({ evt: "module", name: LNET, base: m.base.toString(), size: m.size });
  var counter = { n: 0 };
  try {
    Interceptor.attach(m.base.add(FALLBACK_DEC), {
      onEnter: function (args) {
        this.hlen = args[2].toInt32();
        this.tlen = args[3].toInt32();
        this.out = args[4];
      },
      onLeave: function () {
        var hlen = this.hlen, tlen = this.tlen, out = this.out;
        if (hlen !== 4 || tlen < 21 || tlen > 4096) return;
        var b = bytesOf(out, Math.min(tlen, MAX_FRAME_BYTES));
        if (!b || b.length < 12) return;
        var type = (b[8] << 24) | (b[9] << 16) | (b[10] << 8) | b[11];
        if (type !== 7) return;
        counter.n++;
        var f = parseFrameBytes(b, 20);
        emit("u16", {
          evt: "frame",
          n: counter.n,
          hlen: hlen,
          tlen: tlen,
          head4: f.head.head4,
          crc: f.head.crc,
          msgseq: f.head.msgseq,
          subtype: f.head.subtype,
          focus: f.head.focus,
          records: f.records,
          by_player: f.by_player,
          blocks: f.blocks,
          tail_hex: f.tail_hex,
          frame_hex: hex(out, Math.min(tlen, 96))
        });
      }
    });
    emitInfo({ evt: "attached", tag: "fallback_dec", addr: m.base.add(FALLBACK_DEC).toString() });
  } catch (e) {
    emitInfo({ evt: "attach_fail", tag: "fallback_dec", err: e.message });
  }
})();

emitInfo({ evt: "hooks_installed" });
console.log("[u16_dump] installed at " + new Date().toISOString());
