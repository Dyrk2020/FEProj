#!/usr/bin/env python3
"""Type07Fields: build long underlying record stream from the sliding window."""
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

# Verify the 7-shift overlap across ALL consecutive pairs
overlap_ok = 0
total = 0
for a, b in zip(fam, fam[1:]):
    ra, rb = records_of(a), records_of(b)
    k = min(len(ra), len(rb))
    # find best shift
    for shift in range(0, 14):
        if shift > 0 and ra[-shift:] == rb[:shift]:
            overlap_ok += 1
            break
    total += 1
print(f'pairs with exact 7-shift overlap: {overlap_ok}/{total}')

# Build underlying stream: frame N contributes records[len-7:] (the NEW 7)
stream = []
for i, r in enumerate(fam):
    recs = records_of(r)
    if i == 0:
        stream.extend(recs)
    else:
        prev = records_of(fam[i-1])
        new = recs[: len(recs) - len(prev) + 7] if len(recs) > 7 else recs
        # new = the first (len(recs)-7) records? since last 7 = prev's... hmm
        # frame N last 7 == frame N+1 first 7. So frame N+1's new records = recs[7:]
        stream.extend(recs[7:])
print('underlying stream length:', len(stream))

zs = [x[2] for x in stream]
print('first 120 z:', ''.join(f'{z:02x}' for z in zs[:120]))
zset = Counter(zs)
print('z distribution:', dict(sorted(zset.items())))

# u16 values in stream, first 60
vals = [int.from_bytes(x[:2], 'big') for x in stream]
print('first 60 u16:', [hex(v) for v in vals[:60]])
