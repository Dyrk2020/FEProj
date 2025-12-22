#!/usr/bin/env python3
"""UplinkDecode step 15: inspect ch=2d end-match report frames (full payload)."""
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
print('2d frames:', len(frames2d))
frames2d.sort(key=lambda r: r['t'])
for r in frames2d[:4]:
    ph = bytes.fromhex(r['plain_hex'])
    print('t=%d plain_len=%d seq_hex=%s payload_head=%s' % (r['t'], r['plain_len'], ph[33:37].hex(), ph[37:60].hex()))
