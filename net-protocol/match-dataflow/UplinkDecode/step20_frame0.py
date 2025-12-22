#!/usr/bin/env python3
"""UplinkDecode step 20: decode 2d frame 0 buy-equipment list (hero 10034)."""
import json, struct
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

ph = bytes.fromhex(frames2d[0]['plain_hex'])
data = ph[41:]
# u32 BE values around offset 85-135 (the equipment area)
print('u32 BE from offset 85:')
for i in range(85, min(135, len(data))):
    v = struct.unpack('>I', data[i:i+4])[0]
    if 1 < v < 100000 and v % 1000 != 0:
        pass
# print all u32 BE at 4-aligned-ish positions
print('data[81:141] u32 BE:', [struct.unpack('>I', data[i:i+4])[0] for i in range(81, 141, 4)])
print()
# find the run of 10 buy values: look for consecutive 4B slots where 2000<=v<=2999
for i in range(0, len(data)-40):
    vals = [struct.unpack('>I', data[i+j:i+j+4])[0] for j in range(0, 40, 4)]
    if sum(1 for v in vals if 2000 <= v <= 2999) >= 6:
        print('buy-list candidate at data offset', i, ':', vals)
        break
