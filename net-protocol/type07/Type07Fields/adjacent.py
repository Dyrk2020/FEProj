#!/usr/bin/env python3
"""Type07Fields: adjacent-frame window mechanics across tlen families."""
import json
from collections import Counter
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]
ROWS.sort(key=lambda r: (r['seq'] if r['seq'] is not None else -1, r['t']))

def records_of(r):
    b = bytes.fromhex(r['body'])
    out = []
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i + 1] == 0x01:
            out.append(b[i + 2:i + 5])
            i += 5
        else:
            i += 1
    return out

# adjacent pairs: same seq (dup) or seq+1
from itertools import groupby
seqs = []
for r in ROWS:
    seqs.append((r['seq'] or 0, r))
# group by seq
by_seq = {}
for k, g in groupby(ROWS, key=lambda r: r['seq'] or 0):
    by_seq[k] = list(g)

# walk frames in order; for adjacent pairs (seq diff <= 1), find overlap
ordered = sorted(by_seq.keys())
pairs = []
for i in range(len(ordered) - 1):
    a = by_seq[ordered[i]]
    b = by_seq[ordered[i+1]]
    for x in a:
        for y in b:
            if y['t'] - x['t'] < 2000:  # adjacent in time
                pairs.append((x, y))
                break
        else:
            continue
        break

overlap_stats = Counter()
examples = []
for x, y in pairs[:400]:
    rx, ry = records_of(x), records_of(y)
    # find max overlap k where x[-k:] == y[:k] (allow <=1 differing byte)
    best = 0
    k = min(len(rx), len(ry))
    for cand in range(k, 0, -1):
        if rx[-cand:] == ry[:cand]:
            best = cand
            break
    if best == 0:
        # allow 1-byte differences (re-sampled cells)
        for cand in range(k, 0, -1):
            diffs = sum(1 for a, b in zip(rx[-cand:], ry[:cand]) if a != b)
            if diffs <= 1:
                best = cand
                break
    overlap_stats[(len(rx), len(ry), best)] += 1

print('(lenA, lenB, overlap) counts (top 15):')
for k, v in overlap_stats.most_common(15):
    print(f'  A={k[0]} B={k[1]} overlap={k[2]}: {v}')

# show a few adjacent pairs with their full record lists
shown = 0
for x, y in pairs:
    if shown >= 3:
        break
    rx, ry = records_of(x), records_of(y)
    print(f"\nseq={x['seq']} tlen={x['tlen']} -> seq={y['seq']} tlen={y['tlen']}")
    print('  A:', [r.hex() for r in rx])
    print('  B:', [r.hex() for r in ry])
    shown += 1
