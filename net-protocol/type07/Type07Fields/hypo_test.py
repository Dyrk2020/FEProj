#!/usr/bin/env python3
"""Type07Fields: test u24 vs u16 hypotheses on re-shown cells.

Frame N records 8-14 reappear as frame N+1 records 1-7. Compare value deltas:
- if value = u24 (XX YY ZZ): deltas should be small/positive (counters).
- if value = u16 (XX YY) with ZZ = entity: deltas random.
"""
import json
from collections import Counter
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

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

fam = [r for r in ROWS if r['tlen'] == 92]
fam.sort(key=lambda r: r['seq'] or 0)

u24_deltas = []
u16_deltas = []
same_u16 = 0
same_u24 = 0
pairs = 0
n_small_u24 = 0
n_small_u16 = 0
for a, b in zip(fam, fam[1:]):
    ra, rb = records_of(a), records_of(b)
    if len(ra) != 14 or len(rb) != 14:
        continue
    for i in range(7):
        # frame A record 7+i  == frame B record i (same cell, re-shown)
        va = int.from_bytes(ra[7 + i], 'big')
        vb = int.from_bytes(rb[i], 'big')
        u24_deltas.append(vb - va)
        u16a = int.from_bytes(ra[7 + i][:2], 'big')
        u16b = int.from_bytes(rb[i][:2], 'big')
        u16_deltas.append(u16b - u16a)
        if u16a == u16b:
            same_u16 += 1
        if va == vb:
            same_u24 += 1
        if abs(vb - va) <= 100:
            n_small_u24 += 1
        if abs(u16b - u16a) <= 100:
            n_small_u16 += 1
        pairs += 1

print(f'cell pairs: {pairs}')
print(f'identical u16 (XX YY): {same_u16} ({100*same_u16/pairs:.1f}%)')
print(f'identical u24: {same_u24} ({100*same_u24/pairs:.1f}%)')
print(f'|u24 delta| <= 100: {n_small_u24} ({100*n_small_u24/pairs:.1f}%)')
print(f'|u16 delta| <= 100: {n_small_u16} ({100*n_small_u16/pairs:.1f}%)')

# u24 delta distribution (nonzero)
d = [x for x in u24_deltas if x != 0]
from collections import Counter
dc = Counter(d)
print('u24 nonzero delta top:', dc.most_common(15))
print('u24 delta >0:', sum(1 for x in d if x > 0), '<0:', sum(1 for x in d if x < 0))
# u16 delta dist
d16 = [x for x in u16_deltas if x != 0]
dc16 = Counter(d16)
print('u16 nonzero delta top:', dc16.most_common(10))
