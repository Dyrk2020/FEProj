#!/usr/bin/env python3
"""UplinkDecode step 22: find 03cc/04cd units in downlink frames."""
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

cc_cnt = Counter()
cd_cnt = Counter()
samples_cc = []
samples_cd = []
for r in recs:
    if r['hlen'] != 4 or r['plain_hex'][8*2:12*2] != '00000007':
        continue
    ph = bytes.fromhex(r['plain_hex'])
    body = ph[12:]
    i = 0
    while i + 4 < len(body):
        if body[i] == 0x03 and body[i+1] == 0xcc:
            cc_cnt[body[i:i+5].hex()] += 1
            if len(samples_cc) < 12:
                samples_cc.append((r['t'], body[i:i+5].hex(), body[i:i+16].hex()))
            i += 5
        elif body[i] == 0x04 and body[i+1] == 0xcd:
            cd_cnt[body[i:i+6].hex()] += 1
            if len(samples_cd) < 12:
                samples_cd.append((r['t'], body[i:i+6].hex(), body[i:i+16].hex()))
            i += 6
        else:
            i += 1

print('03cc unit distinct:', len(cc_cnt), 'total:', sum(cc_cnt.values()))
for s in samples_cc:
    print('  cc:', s)
print('04cd unit distinct:', len(cd_cnt), 'total:', sum(cd_cnt.values()))
for s in samples_cd:
    print('  cd:', s)
