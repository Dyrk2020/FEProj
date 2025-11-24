#!/usr/bin/env python3
"""Anchored v0-NewFlows flow-tail parser + string-table reader.

Slice: flow-block-syntax-20260822.  Read-only inputs; outputs go to data/.

Tail grammar established by this slice (evidence in FLOWBLOCKS.md §a/§b):

    ... body record stream ...
    <XOR-masked junk runs>            (round-23 §8.5, not consumed here)
    <string blob>                     concatenated names, usually without
                                      separators (occasional u16 length
                                      markers interrupt: e.g. `07 00`)
    <dec24>                           u24 LE strictly decreasing run:
                                      global varshell-object arena offsets
                                      (fixed struct strides 0x1c..0x16c)
    [f0-prefixed u16 marker]          e.g. f0 07 / f0 03
    <inc32>                           u32 LE strictly increasing run with
                                      deltas == string lengths:
                                      global string-blob offsets
    <u16 misc arrays>
    <zero pad>
    <marker u32>                      final 4 bytes

Key result (FLOWBLOCKS.md §a, audit-corrected 2026-08-23): deltas[k] ==
len(name_k) for the FIRST m names covered by the table.  Segmentation from
the canonical anchor is valid only while consecutive names are adjacent in
the global string pool; drift/gap-affected pairings are REJECTED via the
deltas[:3] == (5, 5, 14) check instead of being mis-segmented.  (The previous
version seeded `owner` but consumed ALL deltas -> off-by-one fragments.)

CLI:
  python3 tailref.py --stats FILES...     corpus verification counters
  python3 tailref.py --names FILE         varShell name table of one file
"""
import argparse
import json
import re
import os
import sys


def u24le(b, o):
    return int.from_bytes(b[o:o + 3], "little")


def u32le(b, o):
    return int.from_bytes(b[o:o + 4], "little")


def parse_tail(data, min_dec=3, min_inc=2, max_delta=64):
    """Anchor = end of a printable run followed by a dec-u24 run and an
    inc-u32 run whose deltas are plausible string lengths.  Returns ALL
    candidate anchors (blob_end, dec24, dec_end, inc32, inc_end)."""
    cands = []
    n = len(data)
    i = 0
    while i < n:
        if not (0x20 <= data[i] < 0x7f):
            i += 1
            continue
        j = i
        while j < n and 0x20 <= data[j] < 0x7f:
            j += 1
        k = j
        dec = []
        prev = 1 << 60
        while k + 3 <= n:
            v = u24le(data, k)
            if v >= prev:
                break
            dec.append(v)
            prev = v
            k += 3
        if len(dec) >= min_dec:
            p = k
            if p + 2 <= n and data[p] == 0xf0:
                p += 2
            inc = []
            prev2 = -1
            q = p
            while q + 4 <= n:
                v = u32le(data, q)
                if v <= prev2 or v > (1 << 24):
                    break
                if inc and not (1 <= v - prev2 <= max_delta):
                    break
                inc.append(v)
                prev2 = v
                q += 4
            if len(inc) >= min_inc:
                cands.append((j, dec, k, inc, q))
        i = j
    return cands

CANON = b"ownergiverbuffLayerCount"
CANON_NAMES = ("owner", "giver", "buffLayerCount")
CANON_DELTAS = (5, 5, 14)


def best_anchor(data, cands):
    """Pick the candidate whose FORWARD delta-segmentation from the canonical
    anchor yields the most alpha names.  Blob start = the
    `ownergiverbuffLayerCount` match nearest the tail tables (canonical first
    four varShells).

    Audit-corrected model: the seed covers name_0 (`owner`, length =
    deltas[0]), so segmentation must consume deltas[1:].  A trustworthy
    pairing must satisfy deltas[:3] == (5, 5, 14) -- the lengths of the three
    canonical names the anchor literal guarantees; pairings failing this are
    pool-gap/drift-affected and are refused rather than mis-segmented.
    """
    starts = [m.start() for m in re.finditer(CANON, data)]
    tail_lo = min((c[0] for c in cands), default=len(data))
    starts.sort(key=lambda s: -s)  # prefer later occurrences
    starts = [s for s in starts if s < tail_lo] or \
        [m.start() for m in re.finditer(CANON, data)]
    best = None
    for j, dec, k, inc32, q in cands:
        t = {"blob_end": j, "dec24": dec, "dec_end": k,
             "inc32": inc32, "inc_end": q}
        deltas = [inc32[m + 1] - inc32[m] for m in range(len(inc32) - 1)]
        if tuple(deltas[:3]) != CANON_DELTAS:
            continue  # gap/drift pairing: refuse to segment
        for s in starts[:6]:
            pos = s + len(CANON)
            names = list(CANON_NAMES)
            ok = True
            for d in deltas[3:]:
                g = 0
                while g < 8 and pos + g < len(data) \
                        and not (0x20 <= data[pos + g] < 0x7f):
                    g += 1
                if g >= 8:
                    ok = False
                    break
                pos += g
                seg = data[pos:pos + d]
                if len(seg) != d or not seg.isalpha():
                    ok = False
                    break
                names.append(seg.decode("ascii"))
                pos += d
            if ok and sum(len(x) for x in names) > (best[0] if best else 0):
                best = (sum(len(x) for x in names), t, names)
    if best is None:
        if not cands:
            return None, None
        j, dec, k, inc32, q = cands[-1]
        return {"blob_end": j, "dec24": dec, "dec_end": k,
                "inc32": inc32, "inc_end": q}, None
    return best[1], best[2]


def verify(files):
    stats = {"files": 0, "anchored": 0, "all_delta_1_64": 0,
             "names_ok": 0}
    strides = {}
    for fp in files:
        data = open(fp, "rb").read()
        stats["files"] += 1
        cands = parse_tail(data)
        if not cands:
            continue
        t, _ = best_anchor(data, cands)
        if t is None:
            continue
        stats["anchored"] += 1
        ds = [t["inc32"][k + 1] - t["inc32"][k]
              for k in range(len(t["inc32"]) - 1)]
        okd = all(1 <= d <= 64 for d in ds)
        stats["all_delta_1_64"] += okd
        for x in range(len(t["dec24"]) - 1):
            s = t["dec24"][x] - t["dec24"][x + 1]
            strides[s] = strides.get(s, 0) + 1
        if okd and best_anchor(data, cands)[1] is not None:
            stats["names_ok"] += 1
    print(json.dumps(stats))
    top = sorted(strides.items(), key=lambda kv: -kv[1])[:12]
    print(json.dumps({"dec24_strides_top": [[hex(k), v] for k, v in top]}))


def names_of(fp):
    data = open(fp, "rb").read()
    cands = parse_tail(data)
    if not cands:
         print("no anchored tail:", fp)
         return 1
    t, seg = best_anchor(data, cands)
    if t is None:
        print("no anchored tail:", fp)
        return 1
    out = {
        "file": os.path.basename(fp),
        "inc32_global_offsets": [hex(v) for v in t["inc32"]],
        "dec24_object_offsets": [hex(v) for v in t["dec24"]],
        "names_via_delta_segmentation": seg,
    }
    print(json.dumps(out, ensure_ascii=False, indent=1))
    return 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("files", nargs="*")
    ap.add_argument("--stats", action="store_true")
    ap.add_argument("--names", action="store_true")
    args = ap.parse_args()
    if args.names:
        return names_of(args.files[0])
    if args.stats:
        return verify(args.files)
    ap.print_usage()
    return 2


if __name__ == "__main__":
    sys.exit(main())
