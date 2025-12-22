#!/usr/bin/env python3
"""UplinkDecode step 18: collect distinct item ids (2xxx) from 2d frames."""
import json, struct
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))
frames2d = [r for r in recs if r['hlen'] == 14 and r['plain_hex'][48:50] == '2d']
frames2d.sort(key=lambda r: r['t'])

# scan for u16 values in 2000..2999 (BE and LE) in the data area (offset 41+)
items = Counter()
by_frame = []
for r in frames2d:
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    found = set()
    for i in range(len(data)-1):
        v_be = struct.unpack('>H', data[i:i+2])[0]
        v_le = struct.unpack('<H', data[i:i+2])[0]
        for v, end in ((v_be, 'BE'), (v_le, 'LE')):
            if 2000 <= v <= 2999:
                items[(v, end)] += 1
                found.add((v, end))
    by_frame.append(len(found))

print('distinct item-id candidates (value, endianness, count):')
for (v, e), n in sorted(items.items()):
    print(f'  {v} ({e}): {n}')
print('frames with items:', by_frame[:30])
