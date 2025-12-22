#!/usr/bin/env python3
"""UplinkDecode step 5: byte-level analysis of 010301 payload."""
import json
import struct
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']
pls = [bytes.fromhex(f['payload']) for f in sub1]

for i in range(7):
    c = Counter(p[i] for p in pls)
    print(f'byte{i}: unique={len(c)} top={c.most_common(6)}')

# byte4 vs cnt correlation
rows = [(f['cnt'], pl[4], pl[5], pl[6], struct.unpack('<H', pl[0:2])[0]) for f, pl in zip(sub1, pls)]
print('\n(cnt, b4, b5, b6, u16a) every ~60th:')
for r in rows[::60][:40]:
    print('  ', r)

# byte5 as tick: check deltas
b5 = [pl[5] for pl in pls]
db = Counter((b5[i+1]-b5[i]) % 256 for i in range(len(b5)-1))
print('\nbyte5 mod-256 deltas top:', db.most_common(8))

# byte4 distribution vs u16a range
print('\nbyte4 distribution:', Counter(pl[4] for pl in pls).most_common())

# what is u16a when b4==15 vs b4==1?
import statistics
for n in [1, 3, 7, 15]:
    vals = [struct.unpack('<H', pl[0:2])[0] for pl in pls if pl[4] == n]
    if vals:
        print(f'b4={n}: n={len(vals)} u16a min/max/mean={min(vals)}/{max(vals)}/{sum(vals)//len(vals)}')
