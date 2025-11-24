#!/usr/bin/env python3
"""Bulk scanner for flow-block-syntax-20260822.

Scans decrypted VFS flow files and extracts, per file:
  - ordered body 0x22 pool refs (0x080000-0x09FFFF window) with offsets
  - tail plaintext strings
  - tail numeric tables:
      * run22 : entries [0x22][u16 A][u16 B] (5-byte stride run)
      * dec24 : decreasing u24 run (after last string)
      * inc32 : increasing u32 run
      * u16 runs after the inc32 table
  - node segmentation (offset/size/id) via flow_node_parse

Output: JSON Lines, one object per file -> data/scan.jsonl
"""
import argparse
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import flow_node_parse as fnp  # noqa: E402

import flow_parse

def u16le(b, o):
    return b[o] | (b[o + 1] << 8)


def u24le(b, o):
    return b[o] | (b[o + 1] << 8) | (b[o + 2] << 16)


def u32le(b, o):
    return int.from_bytes(b[o:o + 4], "little")


def find_run22(data, lo, hi):
    """Longest run of 5-byte records [0x22][u16][u16] with A strictly
    non-decreasing.  Returns (start, entries[(A, B)])."""
    best = None
    i = lo
    while i < hi - 5:
        if data[i] != 0x22:
            i += 1
            continue
        j = i
        ents = []
        prev = -1
        while j + 5 <= hi and data[j] == 0x22:
            a = u16le(data, j + 1)
            b = u16le(data, j + 3)
            if a < prev:
                break
            ents.append((a, b))
            prev = a
            j += 5
        if best is None or len(ents) > len(best[1]):
            best = (i, ents)
        i = max(j, i + 1)
    return best if best else (None, [])


def find_dec24(data, lo, hi):
    """Longest decreasing u24 run in [lo, hi)."""
    best = None
    i = lo
    while i < hi - 3:
        j = i
        ents = []
        prev = 1 << 60
        while j + 3 <= hi:
            v = u24le(data, j)
            if v >= prev:
                break
            ents.append(v)
            prev = v
            j += 3
        if best is None or len(ents) > len(best[1]):
            best = (i, ents)
        i = max(j, i + 1)
    return best if best else (None, [])


def find_inc32(data, lo, hi):
    """Longest strictly-increasing u32 run in [lo, hi)."""
    best = None
    i = lo
    while i < hi - 4:
        j = i
        ents = []
        prev = -1
        while j + 4 <= hi:
            v = u32le(data, j)
            if v <= prev:
                break
            ents.append(v)
            prev = v
            j += 4
        if best is None or len(ents) > len(best[1]):
            best = (i, ents)
        i = max(j, i + 1)
    return best if best else (None, [])


def tail_tables(data, body_end):
    """Parse the tail region after the record stream."""
    n = len(data)
    marker = u32le(data, n - 4) if n >= 4 else None
    # trailing zero pad before marker
    z = n - 4
    while z > body_end and data[z - 1] == 0:
        z -= 1
    # region of interest: [body_end, z)
    r22_start, r22 = find_run22(data, body_end, z)
    d24_start, d24 = find_dec24(data, body_end, z)
    i32_start, i32 = find_inc32(data, body_end, z)
    return {
        "marker": marker,
        "tail_end": z,
        "run22": {"offset": r22_start, "n": len(r22),
                  "entries": r22[:200]},
        "dec24": {"offset": d24_start, "n": len(d24),
                  "entries": d24[:200]},
        "inc32": {"offset": i32_start, "n": len(i32),
                  "entries": i32[:200]},
    }


def scan_file(path):
    with open(path, "rb") as fh:
        data = fh.read()
    out = {"file": os.path.basename(path), "size": len(data)}
    p = fnp.parse_flow_nodes(data)
    if not p.get("ok"):
        out["ok"] = False
        return out
    out["ok"] = True
    recs = p["body_records"]
    pool = [(r["offset"], r["value"]) for r in recs
            if r["type"] == 0x22 and isinstance(r["value"], int)
            and 0x80000 <= r["value"] <= 0x9FFFF]
    out["pool_refs"] = pool
    # header 0x22 refs too
    out["header_pool"] = [r["value"] for r in p["header_records"]
                          if r["type"] == 0x22]
    out["strings"] = p["strings"]
    pb = flow_parse.parse_bytes(data)
    body_off = pb["body_offset"]
    out["body_offset"] = body_off
    first_str = None
    for s in fnp.all_strings(data, 5):
        if s["offset"] >= body_off:
            first_str = s["offset"]
            break
    out["first_str_offset"] = first_str
    out["tail"] = tail_tables(data, first_str if first_str else body_off)
    nodes = [{"id": n["id"], "off": n["start"], "bytes": n["bytes"],
              "recs": n["rec_count"],
              "trans": n.get("transitions", [])} for n in p["nodes"]]
    out["nodes"] = nodes
    # transitions (all 0x1b in body)
    out["n_trans"] = sum(1 for r in recs if r["type"] == 0x1b)
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("paths", nargs="+", help="files or dirs")
    ap.add_argument("-o", "--out", default="../data/scan.jsonl")
    ap.add_argument("--limit", type=int, default=0)
    args = ap.parse_args()

    files = []
    for pth in args.paths:
        if os.path.isdir(pth):
            for name in sorted(os.listdir(pth)):
                files.append(os.path.join(pth, name))
        else:
            files.append(pth)
    if args.limit:
        files = files[:args.limit]

    n_ok = 0
    with open(args.out, "w") as fo:
        for k, f in enumerate(files):
            try:
                r = scan_file(f)
            except Exception as e:  # noqa: BLE001
                r = {"file": os.path.basename(f), "ok": False,
                     "error": str(e)}
            if r.get("ok"):
                n_ok += 1
            fo.write(json.dumps(r) + "\n")
            if (k + 1) % 500 == 0:
                print(f"{k+1}/{len(files)} ok={n_ok}", flush=True)
    print(f"done: {len(files)} files, {n_ok} parsed -> {args.out}")


if __name__ == "__main__":
    main()
