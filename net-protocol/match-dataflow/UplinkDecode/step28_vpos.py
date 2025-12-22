#!/usr/bin/env python3
"""UplinkDecode step 28: compare 0105cd V with 010301 position at same cnt."""
import json, bisect, struct
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']
sub5 = [f for f in frames if f['sub'] == '0105cd']

# position lookup by cnt (use nearest 010301 frame)
cnts = [f['cnt'] for f in sub1]
def pos_at(cnt):
    i = bisect.bisect_left(cnts, cnt)
    best = None
    for j in (i-1, i, i+1):
        if 0 <= j < len(sub1):
            dt = abs(sub1[j]['cnt'] - cnt)
            if best is None or dt < best[0]:
                best = (dt, struct.unpack('<H', bytes.fromhex(sub1[j]['payload'])[0:2])[0])
    return best

print('cnt  V    pos(010301)  dt   tick')
rows = []
for f in sub5:
    pl = bytes.fromhex(f['payload'])
    V = struct.unpack('<H', pl[0:2])[0]
    tick = int.from_bytes(pl[6:8], 'big')
    p = pos_at(f['cnt'])
    rows.append((f['cnt'], V, p[1] if p else None, p[0] if p else None, tick))
for r in rows[:24]:
    print('  %5d %5d %8s dt=%d tick=%d' % r)

# correlation V vs pos
import statistics
diffs = [abs(r[1] - r[2]) for r in rows if r[2] is not None]
print('n=%d median |V-pos|=%d' % (len(diffs), statistics.median(diffs)))
