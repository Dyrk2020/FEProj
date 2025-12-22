#!/usr/bin/env python3
"""Type07Fields: correlate 0e/0d block middle values with wall time."""
import json
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]
ROWS.sort(key=lambda r: (r['seq'] or 0, r['t']))

# collect all 0e-blocks and 0d-blocks
blocks = []
for r in ROWS:
    b = bytes.fromhex(r['body'])
    i = 8
    while i < len(b) - 5:
        if b[i] == 0x0e and b[i+1] == 0x65:
            blocks.append(('0e', r['t'], r['seq'], b[i:i+16].hex()))
            i += 16
        elif b[i] == 0x0d and b[i+1] == 0x0c:
            blocks.append(('0d', r['t'], r['seq'], b[i:i+14].hex()))
            i += 14
        else:
            i += 1

print(f'total blocks: {len(blocks)}')
print('first 8 0e-blocks with time:')
n = 0
prev = None
for typ, t, seq, hx in blocks:
    if typ == '0e' and n < 8:
        mid = hx[6:16]  # after 0e 65 03 00 00 00
        u40 = int(hx[8:18], 16)
        dt = (t - prev[1]) if prev else 0
        du = (u40 - prev[2]) if prev else 0
        rate = du / dt if prev and dt else 0
        print(f'  t={t} seq={seq} mid={mid} u40={u40} dt_ms={dt} du={du} rate={rate:.0f}/s')
        prev = (t, u40)
        n += 1
print('first 8 0d-blocks with time:')
n = 0
prev = None
for typ, t, seq, hx in blocks:
    if typ == '0d' and n < 8:
        print(f'  t={t} seq={seq} hx={hx}')
        n += 1

# rate over long range: first vs last 0e block
e0 = [x for x in blocks if x[0] == '0e']
if len(e0) >= 2:
    t0, u0 = e0[0][1], int(e0[0][3][8:18], 16)
    t1, u1 = e0[-1][1], int(e0[-1][3][8:18], 16)
    print(f'\n0e rate: ({u1-u0}) / ({t1-t0}ms) = {(u1-u0)/(t1-t0):.1f} per ms')
    print(f'u0={u0} t0={t0}  u1={u1} t1={t1}')
