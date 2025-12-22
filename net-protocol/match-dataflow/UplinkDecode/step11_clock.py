#!/usr/bin/env python3
"""UplinkDecode step 11: correlate byte4 (time bucket) with downlink 0e game clock."""
import json, bisect
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))

# find 0e blocks in downlink type07 frames: 0e 65 03 00 00 [6B] ff ff ff ff
clock_frames = []
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    i = 0
    while i + 16 <= len(ph):
        if ph[i] == 0x0e and ph[i+1] == 0x65 and ph[i+2] == 0x03 and ph[i+4] == 0x00 and ph[i+10:16] == b'\xff\xff\xff\xff':
            cnt6 = ph[i+4:i+10]
            val = int.from_bytes(cnt6, 'big')
            clock_frames.append((r['t'], val))
            break
        i += 1
print('0e clock frames:', len(clock_frames))

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']

# for a sample of 010301 frames, get nearest 0e clock (within 300ms)
cfts = [c[0] for c in clock_frames]
def nearest_clock(t):
    i = bisect.bisect_left(cfts, t)
    best = None
    for j in (i-1, i, i+1):
        if 0 <= j < len(clock_frames):
            dt = abs(clock_frames[j][0] - t)
            if best is None or dt < best[0]:
                best = (dt, clock_frames[j][1])
    return best

import struct
samples = []
for f in sub1[::200]:
    pl = bytes.fromhex(f['payload'])
    nc = nearest_clock(f['t'])
    if nc is None or nc[0] > 400:
        continue
    game_sec = nc[1] / 2**32
    samples.append((f['cnt'], pl[4], pl[5], round(game_sec, 1), f['t']))
print('\n(cnt, b4, b5, game_sec, t):')
for s in samples[:40]:
    print('  ', s)
