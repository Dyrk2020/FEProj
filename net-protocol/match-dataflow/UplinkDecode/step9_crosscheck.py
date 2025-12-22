#!/usr/bin/env python3
"""UplinkDecode step 9: cross-check 010301 vs downlink type-07 player records."""
import json, bisect
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

# build downlink record index
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
        # parse records: scan for 03 01 sequences
        records = []
        i = 0
        while i + 4 < len(body):
            if body[i] == 0x03 and body[i+1] == 0x01:
                val = int.from_bytes(body[i+2:i+4], 'big')
                pidx = body[i+4]
                records.append((pidx, val))
                i += 5
            else:
                i += 1
        down07.append({'t': r['t'], 'focus': focus, 'records': records})
print('down07 frames:', len(down07))

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301']
print('010301 frames:', len(sub1))

# index downlink by time
dts = [d['t'] for d in down07]

def nearest_down(t):
    i = bisect.bisect_left(dts, t)
    best = None
    for j in (i-1, i, i+1, i-2, i+2):
        if 0 <= j < len(down07):
            dt = abs(down07[j]['t'] - t)
            if best is None or dt < best[0]:
                best = (dt, down07[j])
    return best

# test: byte4 = player index? -> check whether downlink records contain player byte4
hits = misses = 0
match_present = Counter()
for f in sub1[:3000]:
    pl = bytes.fromhex(f['payload'])
    pidx = pl[4]
    near = nearest_down(f['t'])
    if near is None:
        continue
    dt, d = near
    if dt > 200:
        continue
    pids = [r[0] for r in d['records']]
    if pidx in pids:
        hits += 1
        match_present[pidx] += 1
    else:
        misses += 1
        match_present[('MISS', pidx)] += 1
print('byte4 present in downlink records:', hits, '/', hits+misses)
print(match_present.most_common(20))

# test: u16 value == downlink record value for player byte4
val_hits = val_near = 0
samples = []
for f in sub1[:3000]:
    pl = bytes.fromhex(f['payload'])
    pidx = pl[4]
    u16 = int.from_bytes(pl[0:2], 'little')
    near = nearest_down(f['t'])
    if near is None or near[0] > 200:
        continue
    d = near[1]
    for (rp, rv) in d['records']:
        if rp == pidx:
            val_near += 1
            diff = abs(u16 - rv)
            if diff <= 2:
                val_hits += 1
            samples.append((f['cnt'], pidx, u16, rv, diff, d['focus']))
            break
print('u16 vs downlink player value (|diff|<=2):', val_hits, '/', val_near)
for s in samples[:15]:
    print('  ', s)
