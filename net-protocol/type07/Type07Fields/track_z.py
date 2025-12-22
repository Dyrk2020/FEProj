#!/usr/bin/env python3
"""Type07Fields: correct per-Z (5th byte) value tracking over the underlying record stream."""
import json
from collections import defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

def records_of(r):
    """yield (value_u16, z_byte) for each 5-byte record 03 01 X Y Z"""
    b = bytes.fromhex(r['body'])
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i + 1] == 0x01:
            yield int.from_bytes(b[i + 2:i + 4], 'big'), b[i + 4]
            i += 5
        else:
            i += 1

# Build underlying stream per family: records ordered by (seq, position), dedup via sliding window
# Simpler: just record (seq, pos, value, z) and analyze per-z value evolution in frame order.
fam = [r for r in ROWS if r['tlen'] == 92]
fam.sort(key=lambda r: r['seq'] or 0)
print(f'tlen=92 family: {len(fam)} frames, seq {fam[0]["seq"]}..{fam[-1]["seq"]}')

by_z = defaultdict(list)   # z -> [(seq, value)]
for r in fam:
    for i, (v, z) in enumerate(records_of(r)):
        by_z[z].append((r['seq'], i, v))

for z in sorted(by_z):
    seqs = by_z[z]
    n = len(seqs)
    # sample every ~15th to see evolution; also first 12 values
    first12 = [f'{v:04x}' for _, _, v in seqs[:12]]
    last3 = [f'{v:04x}' for _, _, v in seqs[-3:]]
    # monotonicity: fraction of consecutive increases
    vals = [v for _, _, v in seqs]
    inc = sum(1 for a, b in zip(vals, vals[1:]) if b > a)
    dec = sum(1 for a, b in zip(vals, vals[1:]) if b < a)
    print(f'z={z:02x} n={n} inc={inc} dec={dec} first12={first12} last3={last3}')
