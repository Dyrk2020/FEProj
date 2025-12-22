#!/usr/bin/env python3
"""Type07Fields: record segmentation via 03 01 marker scan + special block detection."""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

def markers(body):
    """find offsets of 03 01 within body[8:]"""
    out = []
    b = body
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i + 1] == 0x01:
            out.append(i)
            i += 2
        else:
            i += 1
    return out

def describe(b):
    ms = markers(b)
    gaps = [ms[i+1] - ms[i] for i in range(len(ms) - 1)]
    return ms, gaps

# First: for the tlen=113 family, check record spacing
fam = [r for r in ROWS if r['tlen'] == 113]
gap_counter = Counter()
first_gap_pattern = Counter()
for r in fam[:50]:
    b = bytes.fromhex(r['body'])
    ms, gaps = describe(b)
    gap_counter.update(gaps)
    first_gap_pattern[tuple(gaps)] += 1
print('record gap sizes (tlen=113):', gap_counter.most_common(8))
print('gap patterns:', first_gap_pattern.most_common(5))

# Show structure of 3 diverse frames
for r in fam[:3] + [r for r in ROWS if r['tlen'] == 92][:2]:
    b = bytes.fromhex(r['body'])
    ms, gaps = describe(b)
    print(f"\nseq={r['seq']} b18={b[6]} b19={b[7]} markers={ms}")
    print('  gaps:', gaps)
    # print records: from each marker, 5 bytes
    for m in ms:
        print(f"    [{m:3d}] {b[m:m+5].hex()}")
    # print tail after last record
    print('  tail:', b[(ms[-1] + 5):].hex() if ms else '')
