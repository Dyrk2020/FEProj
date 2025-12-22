#!/usr/bin/env python3
"""UplinkDecode step 4: deep-dive into 010301 (dominant) payload structure."""
import json
import struct
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']
print('n 010301:', len(sub1))

# u16 fields
a = []
for f in sub1[:200]:
    p = bytes.fromhex(f['payload'])
    u1 = struct.unpack('<H', p[0:2])[0]
    u2 = struct.unpack('<H', p[5:7])[0]
    a.append((f['cnt'], f['t'], u1, p[2:5].hex(), u2))
print('first 40 (cnt, t, u16#1, mid3, u16#2):')
for row in a[:40]:
    print('  ', row)

# check if mid3 always zero
mid = Counter(p[2:5].hex() for f in sub1 for p in [bytes.fromhex(f['payload'])])
print('mid-3-byte distribution:', mid.most_common(6), 'unique:', len(mid))

# does u16#1 increase with cnt?
d1 = [(f['cnt'], struct.unpack('<H', bytes.fromhex(f['payload'])[0:2])[0]) for f in sub1]
print('u16#1 first/last:', d1[0], d1[-1])

# gap analysis: consecutive-by-cnt
c1 = [struct.unpack('<H', bytes.fromhex(f['payload'])[0:2])[0] for f in sub1]
c2 = [struct.unpack('<H', bytes.fromhex(f['payload'])[5:7])[0] for f in sub1]
g1 = Counter(c1[i+1]-c1[i] for i in range(len(c1)-1))
g2 = Counter(c2[i+1]-c2[i] for i in range(len(c2)-1))
print('u16#1 deltas top:', g1.most_common(10))
print('u16#2 deltas top:', g2.most_common(10))
print('u16#1==u16#2 ratio:', sum(1 for i in range(len(sub1)) if c1[i]==c2[i]) / len(sub1))
