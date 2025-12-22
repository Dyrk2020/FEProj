#!/usr/bin/env python3
"""Type07Fields: time evolution analysis — subtype vs time, record values vs seq, special block."""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

# 1. subtype (b18) vs wall time — is it a game phase?
t0 = min(r['t'] for r in ROWS)
tbuckets = defaultdict(Counter)
for r in ROWS:
    rel = (r['t'] - t0) / 1000.0  # seconds into game
    bucket = int(rel // 60)
    if bucket > 17:
        continue
    tbuckets[bucket][int(r['body'][12:14], 16)] += 1
print('subtype(b18) per 60s bucket (top-2):')
for b in sorted(tbuckets):
    top = tbuckets[b].most_common(3)
    print(f'  {b*60:4d}s: {top}')

# 2. b19 vs time
print('b19 per 60s bucket (top-2):')
tb = defaultdict(Counter)
for r in ROWS:
    rel = (r['t'] - t0) / 1000.0
    bucket = int(rel // 60)
    if bucket > 17: continue
    tb[bucket][int(r['body'][14:16], 16)] += 1
for b in sorted(tb):
    top = tb[b].most_common(2)
    print(f'  {b*60:4d}s: {top}')

# 3. per-tag value evolution: group records by tag byte, track u16 value vs seq for tlen=92 family
def records_of(r):
    b = bytes.fromhex(r['body'])
    out = []
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i+1] == 0x01:
            out.append((i, b[i+2], int.from_bytes(b[i+3:i+5], 'big'), b[i+5]))
            i += 5
        else:
            i += 1
    return out

fam = sorted([r for r in ROWS if r['tlen'] == 92], key=lambda r: r['seq'] or 0)
# find a tag that appears in most frames, track its value
tag_track = defaultdict(list)
for r in fam:
    for off, t2, val, tag in records_of(r):
        tag_track[tag].append((r['seq'], val))
print('\ntag byte evolution (tlen=92 family), first 20 seqs:')
for tag in sorted(tag_track):
    seqs = tag_track[tag]
    if len(seqs) < 150:
        continue
    vals = [v for _, v in seqs[:20]]
    print(f'  tag={tag:02x} n={len(seqs)} first20={vals}')

# 4. special block analysis across all frames: find '0e 65 03 00 00' occurrences
blk = Counter()
cnt_0e = 0
for r in ROWS:
    b = bytes.fromhex(r['body'])
    i = 0
    while i < len(b) - 1:
        if b[i] == 0x0e and b[i+1] == 0x65:
            cnt_0e += 1
            blk[b[i:i+15].hex()] += 1
            break
        i += 1
print(f'\n0e65-block count: {cnt_0e} distinct: {len(blk)}')
for hx, n in blk.most_common(8):
    print(f'  {hx} x{n}')
