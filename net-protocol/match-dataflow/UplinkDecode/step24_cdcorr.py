#!/usr/bin/env python3
"""UplinkDecode step 24: correlate 0104cd events with downlink 04cd units."""
import json, bisect
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))

# downlink 04cd units: [04 cd X 00 00 P]
downcd = []
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    body = ph[12:]
    i = 0
    while i + 5 < len(body):
        if body[i] == 0x04 and body[i+1] == 0xcd:
            downcd.append((r['t'], body[i+2], body[i+5]))
            i += 6
        else:
            i += 1
print('downlink 04cd units:', len(downcd))
print('X dist:', Counter(x for _, x, _ in downcd).most_common(20))
print('P dist:', Counter(p for _, _, p in downcd).most_common(20))

dts = [d[0] for d in downcd]
def near_cd(t, x):
    i = bisect.bisect_left(dts, t)
    best = None
    for j in range(max(0, i-6), min(len(downcd), i+7)):
        if downcd[j][1] == x:
            dt = abs(downcd[j][0] - t)
            if best is None or dt < best[0]:
                best = (dt, downcd[j])
    return best

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
fs = [f for f in frames if f['sub'] == '0104cd']
print('\nuplink 0104cd X dist:', Counter(bytes.fromhex(f['payload'])[0] for f in fs).most_common())

# for each uplink event, find matching downlink unit (same X, player byte?) within 500ms
match_x = 0
match_xp0 = 0
tot = 0
for f in fs:
    pl = bytes.fromhex(f['payload'])
    x = pl[0]
    nd = near_cd(f['t'], x)
    if nd is None:
        continue
    tot += 1
    dt, (_, dx, dp) = nd
    if dt < 500:
        match_x += 1
        if dp == 0:
            match_xp0 += 1
print(f'uplink events with downlink X-match within 500ms: {match_x}/{len(fs)} (player0: {match_xp0})')
