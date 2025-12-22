#!/usr/bin/env python3
"""UplinkDecode step 16: dump full ch=2d frame 0 for hero/skill/item ids."""
import json
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
ph = bytes.fromhex(frames2d[0]['plain_hex'])
print('frame0 plain_len:', frames2d[0]['plain_len'])
# print bytes 37.. with offset markers
data = ph[37:]
for i in range(0, len(data), 16):
    chunk = data[i:i+16]
    print('%4d  %s' % (37+i, chunk.hex(' ')))
