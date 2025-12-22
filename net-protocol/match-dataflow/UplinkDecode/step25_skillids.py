#!/usr/bin/env python3
"""UplinkDecode step 25: hunt skill ids in 2d frames (8000-16000 range) + check 010410 ids."""
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

# u32 BE values in 8000-16000
vals = Counter()
for r in frames2d:
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    for i in range(len(data)-3):
        v = struct.unpack('>I', data[i:i+4])[0]
        if 8000 <= v <= 16000:
            vals[v] += 1
print('u32 BE in 8000-16000:', sorted(vals.items())[:50], '... distinct:', len(vals))

# also u16 BE 8000-16000
vals16 = Counter()
for r in frames2d:
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    for i in range(len(data)-1):
        v = struct.unpack('>H', data[i:i+2])[0]
        if 8000 <= v <= 16000:
            vals16[v] += 1
print('u16 BE in 8000-16000:', sorted(vals16.items())[:40], '... distinct:', len(vals16))
