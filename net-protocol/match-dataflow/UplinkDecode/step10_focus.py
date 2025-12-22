#!/usr/bin/env python3
"""UplinkDecode step 10: byte4==focus hypothesis + byte4 over time."""
import json, bisect
from collections import Counter, defaultdict
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
        down07.append({'t': r['t'], 'focus': ph[7], 'sub': ph[6]})
dts = [d['t'] for d in down07]

def nearest_down(t):
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

# byte4 over time (by cnt)
seg = defaultdict(list)
for f in sub1:
    pl = bytes.fromhex(f['payload'])
    seg[pl[4]].append(f['cnt'])
print('byte4 -> cnt range (n, first, last):')
for k in sorted(seg):
    v = seg[k]
    print(f'  b4={k}: n={len(v)} cnt {min(v)}..{max(v)}')

# miss => focus == byte4?
miss_focus_match = 0
miss_focus_tot = 0
miss_focus_vals = Counter()
for f in sub1:
    pl = bytes.fromhex(f['payload'])
    pidx = pl[4]
    near = nearest_down(f['t'])
    if near is None or near[0] > 150:
        continue
    d = near[1]
    # focus check
    if d['focus'] == pidx:
        miss_focus_match += 1
    miss_focus_tot += 1
    miss_focus_vals[d['focus']] += 1
print('\nframes whose nearest downlink focus == byte4:', miss_focus_match, '/', miss_focus_tot)

# distribution of byte4 by session segment (first half vs second half)
n = len(sub1)
def dist(idx):
    return Counter(bytes.fromhex(f['payload'])[4] for f in sub1[idx])
print('\nbyte4 dist first 1000:', dist(slice(0, 1000)).most_common())
print('byte4 dist mid 4000-5000:', dist(slice(4000, 5000)).most_common())
print('byte4 dist last 1000:', dist(slice(n-1000, n)).most_common())

# byte4 vs tick (byte5): does a given player always have consistent tick?
# check u16 value continuity per byte4
for k in [0, 1, 2, 3, 4]:
    seq = [int.from_bytes(bytes.fromhex(f['payload'])[0:2], 'little') for f in sub1 if bytes.fromhex(f['payload'])[4] == k]
    jumps = sum(1 for i in range(1, len(seq)) if abs(seq[i]-seq[i-1]) > 3000)
    print(f'b4={k}: n={len(seq)} u16 range {min(seq)}..{max(seq)} big-jumps(>3000): {jumps}')
