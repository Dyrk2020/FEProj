#!/usr/bin/env python3
"""UplinkDecode step 13: identify local player + u16 semantics via downlink echo."""
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

down07 = []
for r in recs:
    if r['hlen'] == 4 and r['plain_hex'][8*2:12*2] == '00000007':
        ph = bytes.fromhex(r['plain_hex'])
        focus = ph[7]
        body = ph[12:]
        records = []
        i = 0
        while i + 4 < len(body):
            if body[i] == 0x03 and body[i+1] == 0x01:
                records.append((body[i+4], int.from_bytes(body[i+2:i+4], 'big')))
                i += 5
            else:
                i += 1
        down07.append({'t': r['t'], 'focus': focus, 'records': records})
dts = [d['t'] for d in down07]

def near_down(t):
    i = bisect.bisect_left(dts, t)
    best = None
    for j in (i-1, i, i+1):
        if 0 <= j < len(down07):
            dt = abs(down07[j]['t'] - t)
            if best is None or dt < best[0]:
                best = (dt, down07[j])
    return best

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']

matches = Counter()      # player index -> matched frames (LE)
matches_be = Counter()
n_checked = 0
for f in sub1[::2]:
    pl = bytes.fromhex(f['payload'])
    v_le = int.from_bytes(pl[0:2], 'little')
    v_be = int.from_bytes(pl[0:2], 'big')
    nd = near_down(f['t'])
    if nd is None or nd[0] > 250:
        continue
    n_checked += 1
    for (pidx, rv) in nd[1]['records']:
        if abs(v_le - rv) <= 60:
            matches[pidx] += 1
        if abs(v_be - rv) <= 60:
            matches_be[pidx] += 1
print('checked frames:', n_checked)
print('LE match per player:', matches.most_common())
print('BE match per player:', matches_be.most_common())
