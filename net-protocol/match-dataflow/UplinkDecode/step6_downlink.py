#!/usr/bin/env python3
"""UplinkDecode step 6: inspect downlink ch=07 frames for input echo."""
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

down = [r for r in recs if r['hlen'] == 4]
print('downlink frames:', len(down))
t07 = [r for r in down if r['plain_hex'][8*2:12*2] == '00000007']
print('type 07 frames:', len(t07))
# plain_len distribution
print('len dist:', Counter(r['plain_len'] for r in t07).most_common(10))

# dump a few
for r in t07[:3]:
    ph = bytes.fromhex(r['plain_hex'])
    print('t=', r['t'], 'len=', r['plain_len'], 'head4=', r['head4'])
    print('   hex:', r['plain_hex'][:200])
    print()
