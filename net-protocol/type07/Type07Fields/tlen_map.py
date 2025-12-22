#!/usr/bin/env python3
"""Type07Fields: tlen vs subtype vs focus analysis + record count per family."""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

# tlen -> (b18 set, b19 set)
tlen_b18 = defaultdict(Counter)
tlen_b19 = defaultdict(Counter)
for r in ROWS:
    b18 = int(r['body'][12:14], 16)
    b19 = int(r['body'][14:16], 16)
    tlen_b18[r['tlen']][b18] += 1
    tlen_b19[r['tlen']][b19] += 1

print('tlen | b18 top | b19 top')
for tl in sorted(tlen_b18):
    b18 = tlen_b18[tl].most_common(3)
    b19 = tlen_b19[tl].most_common(3)
    print(f'{tl:4d} | {b18} | {b19}')

# record count per tlen (using 03 01 5-byte records + 03 cc 5-byte records + 0e65 block)
def rec_count(r):
    b = bytes.fromhex(r['body'])
    n = 0
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i+1] in (0x01, 0xcc):
            n += 1
            i += 5
        elif b[i] == 0x0e and b[i+1] == 0x65:
            n += 1  # special block
            i += 16
        else:
            i += 1
    return n

cnt_by_tlen = defaultdict(Counter)
for r in ROWS:
    cnt_by_tlen[r['tlen']][rec_count(r)] += 1
print('\nrecord counts per tlen:')
for tl in sorted(cnt_by_tlen):
    print(f'tlen={tl}: {dict(cnt_by_tlen[tl])}')
