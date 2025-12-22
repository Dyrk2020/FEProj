#!/usr/bin/env python3
"""Type07Fields: classify record formats across the timeline."""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]
ROWS.sort(key=lambda r: (r['seq'] if r['seq'] is not None else -1, r['t']))

def classify(r):
    b = bytes.fromhex(r['body'])
    n301 = 0
    n3cc = 0
    n05de = 0
    i = 8
    while i < len(b) - 1:
        if b[i] == 0x03 and b[i+1] == 0x01:
            n301 += 1
            i += 5
        elif b[i] == 0x03 and b[i+1] == 0xcc:
            n3cc += 1
            i += 5
        else:
            i += 1
    # count '05 de 02 14' occurrences
    for j in range(8, len(b) - 3):
        if b[j:j+4] == bytes([0x05, 0xde, 0x02, 0x14]):
            n05de += 1
    return n301, n3cc, n05de

# sample frames across the timeline: first 20, then every 100th
print('seq range:', ROWS[0]['seq'], ROWS[-1]['seq'], 'n=', len(ROWS))
fmt_by_seq = {}
for i, r in enumerate(ROWS):
    n301, n3cc, n05de = classify(r)
    fmt_by_seq[r['seq']] = (n301, n3cc, n05de, r['tlen'], r['body'][12:14], r['body'][14:16])

# print first 30 and last 10
for i, r in enumerate(ROWS[:30]):
    n301, n3cc, n05de = classify(r)
    print(f'seq={r["seq"]:5d} tlen={r["tlen"]:3d} b18={r["body"][12:14]} b19={r["body"][14:16]} 301={n301} 3cc={n3cc} 05de={n05de}')
print('...')
for i, r in enumerate(ROWS[-10:]):
    n301, n3cc, n05de = classify(r)
    print(f'seq={r["seq"]:5d} tlen={r["tlen"]:3d} b18={r["body"][12:14]} b19={r["body"][14:16]} 301={n301} 3cc={n3cc} 05de={n05de}')
