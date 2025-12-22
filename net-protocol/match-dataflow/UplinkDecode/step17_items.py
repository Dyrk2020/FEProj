#!/usr/bin/env python3
"""UplinkDecode step 17: scan uplink payloads for item ids (2xxx) and known item values."""
import json, struct
from collections import Counter, defaultdict
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))

# item ids seen in 2d frame0: 2244, 2325, 2362, 2201, 2406
targets = [2244, 2325, 2362, 2201, 2406, 2503, 2014, 2000, 1500]

# find all u16 windows in payloads equal to targets (LE and BE)
hits = defaultdict(list)
for f in frames:
    pl = bytes.fromhex(f['payload'])
    if len(pl) < 2:
        continue
    for i in range(len(pl)-1):
        v_le = struct.unpack('<H', pl[i:i+2])[0]
        v_be = struct.unpack('>H', pl[i:i+2])[0]
        for t in targets:
            if v_le == t:
                hits[(t, 'LE', i)].append((f['sub'], f['cnt'], pl.hex()))
            if v_be == t:
                hits[(t, 'BE', i)].append((f['sub'], f['cnt'], pl.hex()))

for k, v in sorted(hits.items(), key=lambda kv: kv[0]):
    print(k, 'n=', len(v), 'subs:', Counter(x[0] for x in v).most_common())
    for x in v[:3]:
        print('   ', x)
