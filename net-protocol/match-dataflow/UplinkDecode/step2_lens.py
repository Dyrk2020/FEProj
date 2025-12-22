#!/usr/bin/env python3
"""UplinkDecode step 2: payload structure exploration for each subtype."""
import json
from collections import Counter, defaultdict
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))

# payload len distribution per subtype
lend = defaultdict(Counter)
for f in frames:
    pl = bytes.fromhex(f['payload'])
    lend[f['sub']][len(pl)] += 1
print('=== payload len distribution per subtype (subtype: {len: count}) ===')
for s in sorted(lend, key=lambda k: -len(frames[k]) if False else sum(lend[k].values()), reverse=True):
    print(s, dict(lend[s]))

print()
print('=== full plain_len dist for 010301 ===')
sub1 = [f for f in frames if f['sub'] == '010301']
print(Counter(f['plain_len'] for f in sub1).most_common(20))
