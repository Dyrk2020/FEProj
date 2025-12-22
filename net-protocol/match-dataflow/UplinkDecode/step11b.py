#!/usr/bin/env python3
"""UplinkDecode step 11b: find 0e block pattern empirically."""
import json
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

recs = []
with open(SRC) as f:
    for line in f:
        recs.append(json.loads(line))

# scan all downlink 07 frames for 0e 65 occurrences and dump context
cnt_0e = 0
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    for i in range(len(ph)-2):
        if ph[i] == 0x0e and ph[i+1] == 0x65:
            cnt_0e += 1
            if cnt_0e <= 5:
                print('t=%d off=%d ctx=%s' % (r['t'], i, ph[i:i+20].hex()))
            break
print('frames containing 0e65:', cnt_0e)
