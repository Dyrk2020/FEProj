#!/usr/bin/env python3
"""UplinkDecode step 21: hunt 2503 in 2d frames + all u32 BE in 2000-2999."""
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

# scan all frames for u32 BE == 2503 anywhere in data
hits = []
for r in frames2d:
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    for i in range(len(data)-3):
        if struct.unpack('>I', data[i:i+4])[0] == 2503:
            hits.append((r['t'], i))
print('u32 BE 2503 hits:', hits[:10])

# also u16 BE 2503
hits16 = []
for r in frames2d:
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    for i in range(len(data)-1):
        if struct.unpack('>H', data[i:i+2])[0] == 2503:
            hits16.append((r['t'], i))
print('u16 BE 2503 hits:', hits16[:20], 'total', len(hits16))

# distinct u32 BE values in 2000..2999 per frame
vals = Counter()
for r in frames2d:
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    for i in range(len(data)-3):
        v = struct.unpack('>I', data[i:i+4])[0]
        if 2000 <= v <= 2999:
            vals[v] += 1
print('u32 BE item values:', sorted(vals.items())[:40], '... total distinct:', len(vals))
