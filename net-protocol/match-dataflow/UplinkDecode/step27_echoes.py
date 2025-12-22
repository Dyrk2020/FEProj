#!/usr/bin/env python3
"""UplinkDecode step 27: check downlink echoes for 0e0c/0f0c-family + final structural sweep."""
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

e0c = Counter()
f0c = Counter()
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    body = ph[12:]
    i = 0
    while i + 2 < len(body):
        if body[i] == 0x0e and body[i+1] == 0x0c:
            e0c[body[i:i+14].hex()] += 1
            i += 14
        elif body[i] == 0x0f and body[i+1] == 0x0c:
            f0c[body[i:i+14].hex()] += 1
            i += 14
        else:
            i += 1
print('downlink 0e0c blocks:', sum(e0c.values()), 'distinct:', len(e0c))
for k, v in list(e0c.items())[:6]:
    print('  ', k, v)
print('downlink 0f0c blocks:', sum(f0c.values()), 'distinct:', len(f0c))
for k, v in list(f0c.items())[:6]:
    print('  ', k, v)
