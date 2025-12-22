#!/usr/bin/env python3
"""Type07Fields: position hypothesis test — (cell_i, cell_{i+7}) as (x,z), LE u16."""
import json
import statistics
from collections import Counter
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]
ROWS.sort(key=lambda r: (r['seq'] or 0, r['t']))

def records_of(r):
    b = bytes.fromhex(r['body'])
    out = []
    i = 8
    while i + 5 <= len(b):
        if b[i] == 0x03 and b[i + 1] == 0x01:
            out.append((int.from_bytes(b[i+2:i+4], 'little'), b[i+4]))
            i += 5
        else:
            i += 1
    return out

# steady state tlen=92 frames: 14 cells, 7 pairs (i, i+7)
fam = [r for r in ROWS if r['tlen'] == 92 and (r['seq'] or 0) >= 147]
fam.sort(key=lambda r: r['seq'] or 0)
print(f'tlen=92 frames: {len(fam)}')

# collect per-pair position streams: pair k (k=0..6) at frame j
# pair position = (cell[k], cell[k+7]) as LE u16 -> map units (scale 4.369)
streams = {k: [] for k in range(7)}
for r in fam:
    recs = records_of(r)
    if len(recs) != 14:
        continue
    for k in range(7):
        x = recs[k][0] / 4.369
        z = recs[k + 7][0] / 4.369
        streams[k].append((r['seq'], x, z, recs[k][1], recs[k+7][1]))

# speed test: consecutive frames of the same pair
speeds = []
for k in range(7):
    s = streams[k]
    for (s1, x1, z1, z1a, z1b), (s2, x2, z2, z2a, z2b) in zip(s, s[1:]):
        if s2 - s1 != 1:
            continue
        d = ((x2 - x1) ** 2 + (z2 - z1) ** 2) ** 0.5
        speeds.append((d, k, s1, x1, z1, x2, z2))
speeds.sort(key=lambda t: t[0])
n = len(speeds)
print(f'pair displacements (n={n}):')
print('  min:', speeds[0][0], ' p25:', speeds[n//4][0], ' median:', speeds[n//2][0], ' p75:', speeds[3*n//4][0], ' max:', speeds[-1][0])
print('  frac < 200:', sum(1 for s in speeds if s[0] < 200) / n)
print('  frac < 100:', sum(1 for s in speeds if s[0] < 100) / n)
print('  frac < 50:', sum(1 for s in speeds if s[0] < 50) / n)
# a smooth sample: pair 1 first 15 frames
print('\npair1 (z-bytes of cells 1,8) first 12 frames:')
for s, x, z, za, zb in streams[1][:12]:
    print(f'  seq={s} x={x:.0f} z={z:.0f} (z={za:02x},{zb:02x})')
