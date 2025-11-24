#!/usr/bin/env python3
"""Duplicate-flow determinism + pool-coordinate analyses.

Reproduces the key [V] counts of FLOWBLOCKS.md §a/§b from data/scan.jsonl:

 1. same-version duplicate groups (same logical flow name, >=3 copies across
    different vfs containers, identical file size): pool-ref set Jaccard
    (mean / median / fully-identical fraction) vs whole-file byte identity.
 2. name->pool-id consistency: files whose tail blob starts with the canonical
    `ownergiverbuffLayerCount...` prefix; distinct pool ids seen for each of
    the first four varShell names (excludes every content-keyed model).
 3. grid-model rejection: gcd of consecutive sorted in-file pool-id diffs.
"""
import argparse
import collections
import hashlib
import json
import math
import os
import re
import statistics
import sys


def load(scan_path):
    rows = []
    with open(scan_path) as fh:
        for line in fh:
            r = json.loads(line)
            if r.get("ok"):
                rows.append(r)
    return rows


def group_key(fn):
    m = re.search(r"vfs__\d+_(.+)$", fn)
    if not m:
        return None
    return re.sub(r"^Assets_ABPack_Resources_DataLayerCombined_[A-Z]+_",
                  "Assets_ABPack_Resources_", m.group(1))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--scan", default="../data/scan.jsonl")
    ap.add_argument("--corpus", required=True,
                    help="vfs-extracted dir for byte-identity sampling")
    args = ap.parse_args()
    rows = load(args.scan)

    groups = collections.defaultdict(list)
    for r in rows:
        k = group_key(r["file"])
        if k:
            groups[k].append(r)

    # ---- 1. same-size duplicate determinism ---------------------------
    jac = []
    n_groups = 0
    full_ident = 0
    bytetest_groups = []
    for k, rs in groups.items():
        bysize = collections.defaultdict(list)
        for r in rs:
            bysize[r["size"]].append(r)
        for sz, rs2 in bysize.items():
            if len(rs2) < 3:
                continue
            bytetest_groups.append([r["file"] for r in rs2])
            n_groups += 1
            sets = [set(v for _, v in r["pool_refs"]) for r in rs2]
            sets = [s for s in sets if s]
            if not sets:
                continue
            u = set().union(*sets)
            i2 = set.intersection(*sets)
            j = len(i2) / len(u) if u else 1.0
            jac.append(j)
            full_ident += (j == 1.0)
    print(json.dumps({
        "dup_same_size_groups": n_groups,
        "groups_with_pools": len(jac),
        "jaccard_mean": round(statistics.mean(jac), 4),
        "jaccard_median": round(statistics.median(jac), 4),
        "frac_pool_sets_identical": round(full_ident / max(len(jac), 1), 4),
    }))
    same_bytes = tot_bytes = 0
    for fs in bytetest_groups[:400]:
        hs = {hashlib.md5(open(os.path.join(args.corpus, f), "rb").read())
              .hexdigest() for f in fs}
        tot_bytes += 1
        same_bytes += (len(hs) == 1)
    print(json.dumps({"byte_identical_dup_groups": same_bytes,
                      "sampled": tot_bytes}))

    # ---- 2. name -> pool-id consistency --------------------------------
    hist = {nm: collections.Counter() for nm in
            ("owner", "giver", "buffLayerCount", "flow")}
    used = 0
    for r in rows:
        prs = r["pool_refs"]
        if len(prs) < 4:
            continue
        blob = next((s for s in r["strings"]
                     if s.startswith("ownergiverbuffLayerCount")), None)
        if not blob:
            continue
        rest = blob
        names = []
        for nm in ("owner", "giver", "buffLayerCount", "flow"):
            if rest.startswith(nm):
                names.append(nm)
                rest = rest[len(nm):]
            else:
                break
        if len(names) != 4:
            continue
        used += 1
        for i, nm in enumerate(names):
            if i < len(prs):
                hist[nm][prs[i][1]] += 1
    print(json.dumps({
        "canonical_prefix_files": used,
        "distinct_ids_per_name": {k: len(v) for k, v in hist.items()},
    }))

    # ---- 3. grid model rejection ---------------------------------------
    gcds = collections.Counter()
    n4 = 0
    for r in rows:
        ids = sorted(set(v for _, v in r["pool_refs"]))
        if len(ids) < 4:
            continue
        n4 += 1
        g = 0
        ds = [ids[k + 1] - ids[k] for k in range(len(ids) - 1)]
        for d in ds:
            g = math.gcd(g, d)
        if g > 0:
            gcds[g] += 1
    tot = sum(gcds.values())
    small = sum(v for k, v in gcds.items() if k <= 64)
    top = sorted(gcds.items(), key=lambda kv: -kv[1])[:8]
    print(json.dumps({
        "files_ge4_pools": n4,
        "gcd_le64_fraction": round(small / max(tot, 1), 4),
        "gcd_top": [[hex(k), v] for k, v in top],
    }))


if __name__ == "__main__":
    main()
