#!/usr/bin/env python3
"""UplinkDecode step 3: dump representative payloads per subtype."""
import json
from collections import defaultdict
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))

bysub = defaultdict(list)
for f in frames:
    bysub[f['sub']].append(f)

# print first 3 payloads per subtype (unique payload hex patterns)
for s in sorted(bysub, key=lambda k: -len(bysub[k])):
    fs = bysub[s]
    seen = set()
    print(f'=== sub {s} n={len(fs)} (first cnt {fs[0]["cnt"]}) ===')
    cnt = 0
    for f in fs:
        if f['payload'] not in seen:
            seen.add(f['payload'])
            print('   cnt=%-6d plen=%-3d %s' % (f['cnt'], len(bytes.fromhex(f['payload'])), f['payload']))
            cnt += 1
        if cnt >= 4:
            break
