#!/usr/bin/env python3
"""UplinkDecode step 19: correlate uplink 0d0c-family with downlink 0d blocks."""
import json, bisect
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))

# downlink 0d blocks
down0d = []
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    i = 0
    while i + 13 < len(ph):
        if ph[i] == 0x0d and ph[i+1] == 0x0c and ph[i+2] == 0x06:
            block = ph[i:i+14]
            down0d.append((r['t'], block))
            break
        i += 1
print('downlink 0d blocks:', len(down0d))
for b in down0d[:6]:
    print('  ', b)

dts = [d[0] for d in down0d]
def near_0d(t):
    i = bisect.bisect_left(dts, t)
    best = None
    for j in (i-1, i, i+1):
        if 0 <= j < len(down0d):
            dt = abs(down0d[j][0] - t)
            if best is None or dt < best[0]:
                best = (dt, down0d[j][1])
    return best

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
for sub in ['010d0c', '020d0c']:
    fs = [f for f in frames if f['sub'] == sub]
    print(f'=== {sub} n={len(fs)}: uplink payload vs nearest downlink 0d block ===')
    for f in fs[:12]:
        nd = near_0d(f['t'])
        print(f"  cnt={f['cnt']:6d} up={f['payload'][:34]}")
        if nd is not None and nd[0] < 200:
            print(f"      dl(dt={nd[0]})={nd[1].hex()}")
