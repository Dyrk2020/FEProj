#!/usr/bin/env python3
"""Type07Fields: 0e-block structure — u40 rate, byte5 variants, position in frame."""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]
ROWS.sort(key=lambda r: (r['seq'] or 0, r['t']))

# collect 0e blocks: (seq, t, byte5, 5-byte middle, u40)
e_blocks = []
for r in ROWS:
    b = bytes.fromhex(r['body'])
    i = 8
    while i < len(b) - 5:
        if b[i] == 0x0e and b[i+1] == 0x65:
            mid5 = b[i+6:i+11]
            e_blocks.append((r['seq'], r['t'], b[i+5], mid5.hex(), int.from_bytes(mid5, 'big')))
            i += 16
        else:
            i += 1

print(f'0e blocks: {len(e_blocks)}')
b5 = Counter(x[2] for x in e_blocks)
print('byte5 distribution:', dict(b5))

# fit rate per byte5 track: linear regression u40 vs t
import statistics
for flag in sorted(b5):
    pts = [(t, u) for _, t, f, _, u in e_blocks if f == flag]
    if len(pts) < 2:
        continue
    t0 = pts[0][0]
    # incremental rate
    tot_u = pts[-1][1] - pts[0][1]
    tot_t = pts[-1][0] - pts[0][0]
    print(f'byte5={flag}: n={len(pts)} total rate={tot_u/tot_t:.1f}/ms = {tot_u/tot_t*1000:.0f}/s')
    # consecutive rates
    rates = [(b[1]-a[1])/(b[0]-a[0]) for a, b in zip(pts, pts[1:]) if b[0] != a[0]]
    if rates:
        print(f'   median consecutive rate: {statistics.median(rates):.1f}/ms; min {min(rates):.1f} max {max(rates):.1f}')
    # first/last few
    print(f'   first: {[(s, u) for s, _, _, _, u in e_blocks if _ == flag][:4]}')

# correlation: u40 vs seq for byte5=00
pts = [(s, u) for s, t, f, _, u in e_blocks if f == 0]
if len(pts) >= 2:
    s0, u0 = pts[0]
    s1, u1 = pts[-1]
    print(f'\nbyte5=0: u vs seq: du={u1-u0} ds={s1-s0} -> {u1-u0}/{s1-s0} = {(u1-u0)/(s1-s0):.1f} per seq')
    # check u vs seq linear: u - k*seq
    k = (u1 - u0) / (s1 - s0)
    resid = [u - k*s for s, u in pts]
    print(f'   u - {k:.2f}*seq: min {min(resid):.0f} max {max(resid):.0f} spread {max(resid)-min(resid):.0f}')
