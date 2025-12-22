#!/usr/bin/env python3
"""UplinkDecode step 23: value distributions of 0104cd/0105cd/0103cc/0102ce."""
import json
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
bysub = {}
for f in frames:
    bysub.setdefault(f['sub'], []).append(f)

# 0104cd: X byte distribution
fs = bysub['0104cd']
X = Counter(bytes.fromhex(f['payload'])[0] for f in fs)
print('0104cd X dist:', sorted(X.items()))

# 0105cd: V values
fs = bysub['0105cd']
vals = [(f['cnt'], int.from_bytes(bytes.fromhex(f['payload'])[0:2], 'little')) for f in fs]
print('0105cd (cnt, V):', vals)

# 0103cc values
fs = bysub['0103cc']
print('0103cc:')
for f in fs:
    pl = bytes.fromhex(f['payload'])
    print('  cnt=%6d %s' % (f['cnt'], pl.hex()))

# 0102ce
fs = bysub['0102ce']
print('0102ce:')
for f in fs:
    print('  cnt=%6d %s' % (f['cnt'], f['payload']))
