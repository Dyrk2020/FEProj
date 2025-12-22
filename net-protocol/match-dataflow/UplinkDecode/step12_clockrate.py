#!/usr/bin/env python3
"""UplinkDecode step 12: measure 0e clock rate + correlate byte4 with game time."""
import json, bisect
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))

clocks = []
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    for i in range(len(ph)-15):
        if ph[i] == 0x0e and ph[i+1] == 0x65 and ph[i+2] == 0x03 and ph[i+3] == 0x00 and ph[i+4] == 0x00:
            cnt = int.from_bytes(ph[i+5:i+11], 'big')
            clocks.append((r['t'], cnt))
            break
print('0e clocks:', len(clocks))

# rate
diffs = [(clocks[i+1][1]-clocks[i][1], clocks[i+1][0]-clocks[i][0]) for i in range(len(clocks)-1)]
pos = [(d, t) for d, t in diffs if d > 0 and t > 0]
rates = [d/t for d, t in pos]
print('rate samples:', len(rates), 'min/max/median:', min(rates), max(rates), sorted(rates)[len(rates)//2])
# if rate ~ 2^32 * fps -> fps = rate / 2^32
print('implied fps = rate/2^32:', [round(r/2**32, 3) for r in rates[:5]])

# game seconds for a few times
def game_sec_at(t):
    i = bisect.bisect_left([c[0] for c in clocks], t)
    if i == 0:
        return clocks[0][1] / 2**32
    if i >= len(clocks):
        return clocks[-1][1] / 2**32
    (t0, c0), (t1, c1) = clocks[i-1], clocks[i]
    frac = (t - t0) / (t1 - t0)
    return (c0 + frac * (c1 - c0)) / 2**32

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']
print('\n(cnt, b4, game_sec):')
prev = None
for f in sub1[::300]:
    gs = game_sec_at(f['t'])
    pl = bytes.fromhex(f['payload'])
    print(f"  cnt={f['cnt']:6d} b4={pl[4]:2d} b5={pl[5]:3d} game_sec={gs:8.1f} wall_t={f['t']}")
