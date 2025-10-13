#!/usr/bin/env python3
"""Production nested-proto decompiler for the 25 vfs LuaHolder battle scripts.

Verified format facts (cross-file, work/lua-nested-20260814/NESTED-FORMAT.md):
  * main proto: [16B hdr][code (u16-swapped, ROR29)][2B term][u32 kc][consts]
  * tail = [nested protos...][main trailer]
  * nested proto: [hdr5: ld ll np ms va][4B field][4B u32][code][post][strings]
  * nested code words decode with PLAIN ROR29 (NOT u16-swapped) and end with
    a RETURN word ((w&7)==2 && (w>>29)==7).
  * strings are XOR-k32 marker strings; const strings carry tag 0x04.
  * the tail ends with upvalnames ['_ENV'] + [u16][u16 0].
"""
from __future__ import annotations
import json
import sys
from pathlib import Path

sys.path.insert(0, "<research-workspace>/work/lua-scripts-full-20260814")
import decompile_vfs as DV
from decompile_vfs import KEY, OP_NAMES

BASE = Path("<research-workspace>")
SRC = BASE / "work/ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted"
OUT = BASE / "work/lua-nested-20260814/scripts-full"


def ror29(w): return ((w & 7) << 3) | (w >> 29)


def dec_str(data, p):
    if p >= len(data):
        return None, None
    m = data[p]
    if m == 0:
        return b"", p + 1
    if m == 0xff:
        if p + 5 > len(data):
            return None, None
        n = int.from_bytes(data[p+1:p+5], 'little') - 1
        ds = p + 5
    else:
        n = m - 1
        ds = p + 1
    if ds + n > len(data):
        return None, None
    return bytes(b ^ KEY[i % 32] for i, b in enumerate(data[ds:ds+n])), ds + n


def printable(s):
    return all(32 <= c < 127 or c in (9, 10, 13) for c in s)


def find_strings(tail, start=0):
    """All strings with (offset, marker_off, tag_off_or_None, bytes); deduped."""
    out = []
    i = start
    n = len(tail)
    while i < n:
        if tail[i] in (4, 0x14) and i + 1 < n:
            s, p = dec_str(tail, i + 1)
            if s is not None and printable(s) and len(s) >= 2:
                out.append((i, i + 1, i, s))
        s, p = dec_str(tail, i)
        if s is not None and printable(s) and len(s) >= 2:
            out.append((i, i + 1, None, s))
        i += 1
    dedup = []
    seen = set()
    for off, moff, toff, s in out:
        if toff is None and (off - 1, s) in seen:
            continue
        if toff is not None:
            seen.add((off, s))
        dedup.append((off, moff, toff, s))
    return dedup


def find_code(tail, start_hint):
    """Find the code region anchored by a readable string (len>=3): the code
    ends at the RETURN word R with R_end = marker - pc (4..16 post bytes).
    Scans ALL strings, picks the earliest valid anchor and the start
    (0x0a..0x21) with the best opcode plausibility."""
    cands = []
    i = 0
    while i < len(tail) - 2:
        s, p = dec_str(tail, i)
        if s is not None and printable(s) and len(s) >= 3:
            cands.append(i)
            i = p
        else:
            i += 1
    best = None
    for m in cands:
        for pc in range(4, 17):
            E = m - pc
            if E < 8 or E > len(tail):
                continue
            wret = int.from_bytes(tail[E-4:E], 'little')
            if ror29(wret) != 23:
                continue
            for start in range(0x0a, 0x22):
                if start > E - 8:
                    continue
                if (E - start) % 4 != 0:
                    continue
                words = [int.from_bytes(tail[start+4*k:start+4*k+4], 'little')
                         for k in range((E - start) // 4)]
                if len(words) < 2:
                    continue
                ops = [ror29(w) for w in words]
                nret = ops.count(23)
                if nret > 2:
                    continue
                if len(set(ops)) < 2:
                    continue
                bad = sum(1 for o in ops if o in (0, 49, 59, 62, 63))
                if bad / len(ops) > 0.4:
                    continue
                key = (m, nret, bad, pc)
                if best is None or key < best[0]:
                    best = (key, start, E, words)
    if best is None:
        return None
    _, start, end, words = best
    return start, end, words


def get_tail_bytes(path):
    """Tail after main consts; robust for the 2 files with anomalous const parse."""
    d = path.read_bytes()
    data = d[2:] if d[:2] == b"\xf6\x05" else d
    src_m = data[0x1c]
    se = 0x1d + (src_m - 1)
    hdr = data[se:se+16]
    nw = hdr[6] - 2
    p = se + 16 + 4 * nw + 2
    kc = int.from_bytes(data[p:p+4], 'little')
    p += 4
    q = p
    ok = True
    for i in range(kc):
        if q >= len(data):
            ok = False
            break
        tag = data[q]
        q += 1
        if tag in (4, 0x14):
            m = data[q]
            q += 1
            if m == 0xff:
                n = int.from_bytes(data[q:q+4], 'little') - 1
                q += 4
            else:
                n = m - 1
            if q + n > len(data):
                ok = False
                break
            q += n
        elif tag in (3, 0x13, 0x23, 0x11, 0x09):
            if q + 8 > len(data):
                ok = False
                break
            q += 8
        elif tag == 1:
            q += 1
        elif tag == 0:
            pass
        else:
            ok = False
            break
    if ok:
        return data[q:]
    for q2 in range(p, len(data) - 6):
        if (data[q2] == 1 and data[q2+1] != 0 and data[q2+2] == 0
                and data[q2+3] in (0x10, 0x20) and data[q2+4] == 0):
            return data[q2:]
    return None


def main_proto(path):
    d = path.read_bytes()
    try:
        return DV.parse_vfs(d)
    except ValueError:
        return None


def find_all_codes(tail, keys):
    out = []
    pos = 0
    ki = 0
    while pos < len(tail):
        sub = tail[pos:]
        region = find_code(sub, 0x0d)
        if region is None:
            break
        start, end, words = region
        start += pos
        end += pos
        key = keys[ki] if ki < len(keys) else "?"
        ki += 1
        out.append((start, end, words, key))
        nxt = None
        for q in range(end + 4, len(tail) - 6):
            if (tail[q] == 1 and tail[q+1] != 0 and tail[q+2] == 0
                    and tail[q+3] in (0x10, 0x20) and tail[q+4] == 0):
                nxt = q
                break
        if nxt is None:
            break
        pos = nxt
    return out


class DecoderFor:
    def __init__(self, consts, ms):
        self.c = consts
        self.ms = ms

    def dec(self, w):
        op = ror29(w)
        b0, b1 = w & 0xff, (w >> 8) & 0xff
        name = OP_NAMES.get(op, f"OP{op}")
        if op in (6, 36, 47, 48, 60):
            A, U, K = (w >> 21) & 7, (w >> 3) & 0x1f, (b1 >> 1) & 0x1f
            return f"GETTABUP R{A}, U{U}, K{K} [{w:08x}]"
        if op in (45, 46, 55, 58):
            A, B, K = (w >> 3) & 0x1f, (w >> 21) & 7, (b1 >> 1) & 0x1f
            return f"GETTABLE R{A}, R{B}, K{K} [{w:08x}]"
        if op in (1, 43):
            A, K, V = (w >> 21) & 7, (w >> 3) & 0x3f, (w >> 9) & 0x3f
            return f"SETTABLE R{A}, K{K}, V{V} [{w:08x}]"
        if op == 34:
            return f"SETTABUP K{(b0 >> 4) & 0xf}, R{(b1 >> 4) & 0xf} [{w:08x}]"
        if op in (8, 9, 12, 42):
            A = (b1 >> 2) & 3
            B, C = (b0 >> 3) & 0x1f, (b1 >> 1) & 0x1f
            nargs = max(B - 1, 0)
            return f"R{A} = call R{A}({', '.join(f'R{i}' for i in range(A+1, A+1+nargs))})"
        if op in (26, 33, 50):
            A, K = (b1 >> 1) & 3, (b1 >> 3) & 0x1f
            return f"R{A} = K{K} [{w:08x}]"
        if op in (44, 51):
            A, B = (b1 >> 1) & 0x1f, (w >> 21) & 7
            return f"R{A} = R{B}"
        if op in (30, 56):
            return f"R{(w >> 21) & 7} = <closure P{(b0 >> 5)}> [{w:08x}]"
        if op in (32, 52, 61):
            return f"R{(w >> 21) & 7} = {{}}"
        if op == 2:
            return f"R{(w >> 21) & 7} = U{(w >> 3) & 0x1f}"
        if op == 29:
            return f"U{(w >> 3) & 0x1f} = R{(w >> 21) & 7}"
        if op in (53, 54):
            A, B, K = (w >> 21) & 7, (w >> 3) & 0x1f, (b1 >> 1) & 0x1f
            return f"R{A+1} = R{B}; R{A} = R{B}[K{K}]"
        if op == 23:
            return "return"
        if op == 39:
            return f"goto +{(b0 >> 3) & 0x1f} -- JMP"
        if op == 24:
            return f"if not R{(w >> 21) & 7} then"
        if op in (25, 40):
            return f"testset [{w:08x}]"
        if op == 31:
            return f"R{(w >> 21) & 7}.. = nil"
        if op == 0:
            A, B, C = (w >> 21) & 7, (w >> 3) & 0x1f, (b1 >> 1) & 0x1f
            return f"R{A} = R{B}..R{C}"
        if op == 5:
            return f"R{(w >> 21) & 7}.. = ..."
        if op == 22:
            return f"R{(w >> 21) & 7} = #R{(w >> 3) & 0x1f}"
        if op in (19, 21, 20):
            return f"R{(w >> 21) & 7} = {'-R' if op == 19 else 'not R' if op == 21 else '~R'}{(w >> 3) & 0x1f}"
        if op in (35, 57):
            return f"if R{(w >> 3) & 0x1f} == K{(b1 >> 1) & 0x1f} then -- EQ"
        if op == 41:
            return f"return R{(w >> 21) & 7}(...)"
        if op in (49, 59, 62, 63):
            return "nop"
        return f"{name} [{w:08x}]"


def decompile_one(path, fname):
    m = main_proto(path)
    out = []
    out.append(f"-- Decompiled from {fname}")
    if m is None:
        out.append("-- [main proto consts anomalous; using structural tail parse]")
        tail = get_tail_bytes(path)
        if tail is None:
            out.append("-- [no tail]")
            return "\n".join(out)
        m = {"source": "?", "nw": 0, "consts": [], "code_raw": [], "header": b"", "term": b""}
        return _emit(m, tail, out, fname, keys=[])
    out.append(f"-- source: {m['source']}")
    out.append("-- LData vfs LuaHolder .res (f6 05 wrapper); opcode = ROR29 (main code u16-swapped, nested code plain)")
    out.append("")
    out.append(f"-- main proto: {m['nw']} code words, {len(m['consts'])} consts")
    out.append("function <main>(...)")
    for i, w in enumerate(m["code_raw"]):
        op = ror29(((w << 16) | (w >> 16)) & 0xffffffff)
        out.append(f"   {i:5d}| [{w:08x}] {OP_NAMES.get(op, '?')}   (main, u16-swap op)")
    out.append("end")
    out.append("")
    out.append("-- constants (main):")
    for i, c in enumerate(m["consts"]):
        out.append(f"--   const[{i}] {DV.const_repr(c)}")
    keys = [c["raw"].decode("utf-8", "replace") for c in m["consts"][2:] if c["tag"] == "str"]
    out.append(f"-- function keys (registration order): {keys}")
    out.append("")
    tail = get_tail_bytes(path)
    if tail is None:
        out.append("-- [PARSE ERROR: no tail]")
        return "\n".join(out)
    return _emit(m, tail, out, fname, keys=keys)


def _emit(m, tail, out, fname, keys=None):
    out.append(f"-- tail: {len(tail)} bytes")
    if len(tail) < 16:
        out.append(f"-- tail head: {tail.hex(' ')}")
        return "\n".join(out)
    ld, ll, np, ms, va = tail[0], tail[1], tail[2], tail[3], tail[4]
    out.append(f"-- nested hdr5: {tail[0:5].hex(' ')}  (ld={ld} ll={ll} np={np} ms={ms} va={va})")
    out.append(f"-- field4: {tail[5:9].hex(' ')}  u32@+9: {int.from_bytes(tail[9:13], 'little')} [LOW-CONF]")
    regions = find_all_codes(tail, keys or [])
    strings = find_strings(tail, max((regions[0][1] if regions else 0), 13))
    if regions:
        out.append(f"-- nested code regions: {len(regions)} (plain-ROR29, RETURN-anchored)")
        for idx, (start, end, words, kname) in enumerate(regions):
            out.append(f"--   proto #{idx} = {kname}: +0x{start:04x}..0x{end:04x} ({len(words)} words)")
        for idx, (start, end, words, kname) in enumerate(regions):
            dec = DecoderFor(consts=[], ms=ms)
            out.append("")
            tag = "" if idx == 0 else " [LOW-CONF boundary]"
            out.append(f"function <nested_{idx}:{kname}>(...){tag}")
            for k, w in enumerate(words):
                out.append(f"   {k:5d}| {dec.dec(w)}   [{w:08x}]")
            out.append("end")
        out.append("")
        out.append("-- nested strings (consts/locvars/upvalnames) [LOW-CONF boundary]:")
        for off, moff, toff, s in strings[:80]:
            tag = "tag04" if toff is not None else "marker"
            out.append(f"--   +0x{off:04x} [{tag}] {s!r}")
    else:
        out.append("-- [no clean nested code region found; strings only]")
        for off, moff, toff, s in strings[:60]:
            tag = "tag04" if toff is not None else "marker"
            out.append(f"--   +0x{off:04x} [{tag}] {s!r}")
    return "\n".join(out)


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    stats = []
    for f in sorted(SRC.glob("*.vfs__*WorkFlow*.res")):
        fname = f.name.split("__", 1)[1].replace(".res", "")
        text = decompile_one(f, fname)
        outp = OUT / (fname + ".lua")
        outp.write_text(text, encoding="utf-8")
        nstrings = text.count("--   +0x")
        ncode = text.count("nested code regions:")
        stats.append((fname, outp.stat().st_size, nstrings, ncode))
        print(f"{fname[:60]:62s} {outp.stat().st_size:6d}B strings={nstrings:3d} code={ncode}")
    with open(OUT / "stats.json", "w") as fh:
        json.dump(stats, fh, indent=1, ensure_ascii=False)


if __name__ == "__main__":
    main()
