#!/usr/bin/env python3
"""UplinkDecode step 26: find skill-tap report frame in 2d (contains device-name string)."""
import json, struct
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))
frames2d = [r for r in recs if r['hlen'] == 14 and r['plain_hex'][48:50] == '2d']
frames2d.sort(key=lambda r: r['t'])

def ascii_runs(data, minlen=6):
    out = []
    cur = []
    for b in data:
        if 0x20 <= b < 0x7f:
            cur.append(chr(b))
        else:
            if len(cur) >= minlen:
                out.append(''.join(cur))
            cur = []
    if len(cur) >= minlen:
        out.append(''.join(cur))
    return out

for idx, r in enumerate(frames2d):
    ph = bytes.fromhex(r['plain_hex'])
    data = ph[41:]
    runs = ascii_runs(data)
    if runs:
        print('frame', idx, 't=%d' % r['t'], 'runs:', runs[:4])
