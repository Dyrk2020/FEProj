#!/usr/bin/env python3
"""Type07Fields: u24 delta test on truly adjacent frames (7-cell window overlap)."""
import json
from collections import Counter
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]
ROWS.sort(key=lambda r: (r['seq'] or 0, r['t']))

def records_of(r):
    b = bytes.fromhex(r['body'])
    out = []
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i + 1] == 0x01:
            out.append((int.from_bytes(b[i+2:i+5], 'big'), int.from_bytes(b[i+2:i+4], 'big'), b[i+4]))
            i += 5
        else:
            i += 1
    return out

# adjacent frame pairs (seq diff == 1, both with >= 12 records)
pairs = []
for a, b in zip(ROWS, ROWS[1:]):
    sa, sb = a['seq'] or 0, b['seq'] or 0
    if sb - sa != 1:
        continue
    ra, rb = records_of(a), records_of(b)
    if len(ra) >= 12 and len(rb) >= 12:
        pairs.append((a, b, ra, rb))
print(f'adjacent pairs with >=12 recs: {len(pairs)}')

# overlap: frame A recs[len-7:] == frame B recs[:7] (allow deltas)
d24 = []
d16 = []
deltas = Counter()
u16_deltas = Counter()
same = 0
small24 = 0
for a, b, ra, rb in pairs:
    if len(ra) < 7 or len(rb) < 7:
        continue
    for i in range(min(7, len(ra) - 7, len(rb))):
        u24a, u16a, za = ra[-(7 - i)] if False else ra[7 + i]
        u24b, u16b, zb = rb[i]
        d = u24b - u24a
        d24.append(d)
        d16.append(u16b - u16a)
        if abs(d) <= 50:
            small24 += 1
        if d == 0:
            same += 1
        deltas[d] += 1

n = len(d24)
print(f'cell pairs: {n}')
print(f'identical u24: {same} ({100*same/n:.1f}%)')
print(f'|u24 delta|<=50: {small24} ({100*small24/n:.1f}%)')
d = [x for x in d24 if x != 0]
print('nonzero u24 delta top:', Counter(d).most_common(20))
print('u24 delta>0:', sum(1 for x in d if x > 0), ' <0:', sum(1 for x in d if x < 0))
d16nz = [x for x in d16 if x != 0]
print('nonzero u16 delta top:', Counter(d16nz).most_common(12))
print('|u16|<=50:', sum(1 for x in d16 if abs(x) <= 50))
