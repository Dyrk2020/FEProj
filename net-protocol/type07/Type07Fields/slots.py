#!/usr/bin/env python3
"""Type07Fields: extract underlying cyclic record stream (21 slots) and track per-slot evolution.

Window: frame N shows underlying slots [7N mod 21 .. +13]. Period 3 frames.
Verify the cycle hypothesis first, then track per-slot values over time.
"""
import json
from collections import defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

def records_of(r):
    b = bytes.fromhex(r['body'])
    out = []
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i + 1] == 0x01:
            out.append(b[i + 2:i + 5])  # XX YY ZZ
            i += 5
        else:
            i += 1
    return out

fam = [r for r in ROWS if r['tlen'] == 92]
fam.sort(key=lambda r: r['seq'] or 0)
base = fam[0]['seq']

# verify cycle: frames at seq base, base+3, base+6 should have identical record lists at same positions
fr0 = records_of(fam[0])
fr3 = records_of(fam[3]) if len(fam) > 3 else None
fr6 = records_of(fam[6]) if len(fam) > 6 else None
print('frame0 records:', [x.hex() for x in fr0])
if fr3:
    print('frame3 records:', [x.hex() for x in fr3])
    print('frame0==frame3 at same pos:', [a == b for a, b in zip(fr0, fr3)])
if fr6:
    print('frame6 records:', [x.hex() for x in fr6])
    print('frame0==frame6 at same pos:', [a == b for a, b in zip(fr0, fr6)])

# map (seq, pos) -> underlying slot: slot = (7*idx + pos) % 21 where idx = seq - base
def slot_of(seq, pos):
    return (7 * (seq - base) + pos) % 21

# collect per-slot samples: slot -> [(seq, value_bytes)]
per_slot = defaultdict(list)
for r in fam:
    recs = records_of(r)
    for pos, rec in enumerate(recs):
        per_slot[slot_of(r['seq'], pos)].append((r['seq'], rec))

print(f'\nslots seen: {sorted(per_slot.keys())}')
for s in sorted(per_slot):
    samples = per_slot[s]
    vals = [x[1] for x in samples]
    # u16 (X Y) with Z byte, and u24
    u16s = [int.from_bytes(v[:2], 'big') for v in vals]
    u24s = [int.from_bytes(v, 'big') for v in vals]
    zs = [v[2] for v in vals]
    # show a few samples
    seqs = [x[0] for x in samples]
    print(f'slot {s:2d} n={len(samples)} zs={set(zs)} first8 u16={[hex(u) for u in u16s[:8]]}')
    # smoothness: median |diff| between consecutive samples
    diffs = sorted(abs(b - a) for a, b in zip(u16s, u16s[1:]))
    if diffs:
        print(f'      u16 median|diff|={diffs[len(diffs)//2]} first8 u24={[hex(u) for u in u24s[:8]]}')
