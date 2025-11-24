#!/usr/bin/env python3
"""Rebuild the §b.2 candidate-semantics tests from data/scan.jsonl.

Audit context (2026-08-23): the original FLOWBLOCKS.md §b.2 rejection table
carried numbers that could not be traced to any script or data product; the
[V] tags were voided and this script re-establishes (or refutes) each test
from the slice's primary scan output.

Tests over every ok file that has both a run22 tail table and parsed nodes:
  T1 node-size   : adjacent A-diffs hit-rate against {node.bytes}
  T2 node-offset : best constant c with (B-c) in {node.off}; joint A-c check
  T3 pool-offset : membership of A/B in dec24+inc32 value sets;
                   B low16 vs body pool-ref low16 values
  T4 edge-table  : median run22.n / n_trans and run22.n / len(nodes)

Output: JSON verdicts to stdout; written to data/tailrun-tests.json as well.
"""
import json
import os
import sys
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "..", "data", "tailrun-tests.json")


SCAN = os.path.join(HERE, "..", "data", "scan.jsonl")


def rows():
    with open(SCAN) as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            d = json.loads(line)
            if not d.get("ok"):
                continue
            r22 = (d.get("tail") or {}).get("run22")
            nodes = d.get("nodes") or []
            if not r22 or not r22.get("entries") or not nodes:
                continue
            yield d, r22["entries"], nodes


def median(xs):
    xs = sorted(xs)
    n = len(xs)
    if not n:
        return None
    return xs[n // 2] if n % 2 else (xs[n // 2 - 1] + xs[n // 2]) / 2


def main():
    t1_hits = t1_total = 0
    t2_files_pass = t2_files = 0
    t3 = Counter()
    t4_ratio_trans = []
    t4_ratio_nodes = []
    files = 0

    for d, entries, nodes in rows():
        files += 1
        As = [e[0] for e in entries]
        Bs = [e[1] for e in entries]
        size_set = {n["bytes"] for n in nodes if n.get("bytes")}
        off_set = {n["off"] for n in nodes}
        dec = set((d.get("tail") or {}).get("dec24", {}).get("entries", []))
        inc = set((d.get("tail") or {}).get("inc32", {}).get("entries", []))
        arena = dec | inc
        pool_lo16 = {(v & 0xFFFF) for _, v in (d.get("pool_refs") or [])}

        # T1 node-size: adjacent A-diffs against node byte-sizes
        diffs = [As[k + 1] - As[k] for k in range(len(As) - 1)]
        t1_total += len(diffs)
        t1_hits += sum(1 for x in diffs if x in size_set)

        # T2 node-offset: search constants c on a coarse grid so that
        # >=80% of (B-c) land in node offsets; joint check with A.
        hit = False
        if off_set:
            anchors = [Bs[0] - o for o in list(off_set)[:64]]
            seen = set()
            for c in anchors:
                if c in seen:
                    continue
                seen.add(c)
                mB = sum(1 for b in Bs if (b - c) in off_set) / len(Bs)
                if mB >= 0.8:
                    mA = sum(1 for a in As if (a - c) in off_set) / len(As)
                    if mA >= 0.8:
                        hit = True
                        break
        t2_files += 1
        t2_files_pass += hit

        # T3 pool-offset membership
        for a in As:
            t3["A_in_arena"] += a in arena
            t3["A_total"] += 1
        for b in Bs:
            t3["B_in_arena"] += b in arena
            t3["B_lo16_in_poolrefs"] += (b & 0xFFFF) in pool_lo16
            t3["B_total"] += 1

        # T4 edge-table ratios
        tr_n = d.get("n_trans") or 0
        nd_n = len(nodes)
        if tr_n:
            t4_ratio_trans.append(len(entries) / tr_n)
        if nd_n:
            t4_ratio_nodes.append(len(entries) / nd_n)

    res = {
        "files_used": files,
        "T1_node_size": {
            "adjacent_A_diff_total": t1_total,
            "hits_in_node_bytes": t1_hits,
            "hit_rate": round(t1_hits / t1_total, 4) if t1_total else None,
            "verdict": "rejected" if t1_total and t1_hits / t1_total < 0.5 else "inconclusive",
        },
        "T2_node_offset": {
            "files_tested": t2_files,
            "files_with_const_c_ge80pct_joint": t2_files_pass,
            "verdict": "rejected" if t2_files and t2_files_pass / t2_files < 0.05 else "inconclusive",
        },
        "T3_pool_offset": {
            "A_in_dec24_inc32": round(t3["A_in_arena"] / max(t3["A_total"], 1), 4),
            "B_in_dec24_inc32": round(t3["B_in_arena"] / max(t3["B_total"], 1), 4),
            "B_lo16_in_pool_refs": round(t3["B_lo16_in_poolrefs"] / max(t3["B_total"], 1), 4),
            "verdict": None,  # filled below
        },
        "T4_edge_table": {
            "median_run22_over_trans": median(t4_ratio_trans),
            "median_run22_over_nodes": median(t4_ratio_nodes),
            "verdict": None,
        },
    }
    b_rate = res["T3_pool_offset"]["B_in_dec24_inc32"]
    res["T3_pool_offset"]["verdict"] = (
        "rejected" if b_rate is not None and b_rate < 0.05 else "inconclusive")
    r_t = res["T4_edge_table"]["median_run22_over_trans"]
    r_n = res["T4_edge_table"]["median_run22_over_nodes"]
    if r_t and r_n and abs(r_t - 1.0) > 0.15 and abs(r_n - 1.0) > 0.15:
        res["T4_edge_table"]["verdict"] = "rejected"
    else:
        res["T4_edge_table"]["verdict"] = "inconclusive"

    with open(OUT, "w") as fh:
        json.dump(res, fh, indent=1)
    print(json.dumps(res, indent=1))
    return 0


if __name__ == "__main__":
    sys.exit(main())
