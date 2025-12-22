#!/usr/bin/env python3
"""Type07Fields: (value,z) pair statistics across all steady-state frames."""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

def records_of(r):
    b = bytes.fromhex(r['body'])
    out = []
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i + 1] == 0x01:
            out.append((int.from_bytes(b[i+2:i+4], 'big'), b[i+4]))
            i += 5
        else:
            i += 1
    return out

# steady state: seq >= 150
ss = [r for r in ROWS if (r['seq'] or 0) >= 150]
print('steady frames:', len(ss))
pair_cnt = Counter()
z_cnt = Counter()
val_hist = Counter()
val_by_z = defaultdict(list)
for r in ss:
    for v, z in records_of(r):
        pair_cnt[(v, z)] += 1
        z_cnt[z] += 1
        val_hist[v] += 1
        val_by_z[z].append(v)

print('z distribution:', dict(sorted(z_cnt.items())))
print('distinct (value,z) pairs:', len(pair_cnt))
print('most common pairs:', [(f'{v:04x}', z, n) for (v, z), n in pair_cnt.most_common(20)])
# value range
print('value min/max:', min(val_hist), max(val_hist))
# per-z value stats
print('\nper-z value stats:')
for z in sorted(val_by_z):
    vs = val_by_z[z]
    print(f'z={z:02x} n={len(vs)} uniq={len(set(vs))} min={min(vs)} max={max(vs)}')
