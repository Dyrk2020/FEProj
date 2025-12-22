#!/usr/bin/env python3
"""UplinkDecode step 14: full dump of cd-family (04cd/05cd) frames with cnt."""
import json
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))

for sub in ['0104cd', '0105cd', '0204cd', '0205cd', '0304cd', '0305cd', '0103cc', '0102ce', '01060e', '010410', '010213', '0105de', '0202d0', '0402d0']:
    fs = [f for f in frames if f['sub'] == sub]
    print(f'=== {sub} n={len(fs)} ===')
    for f in fs[:14]:
        print(f"  cnt={f['cnt']:6d} t={f['t']} {f['payload']}")
    print()
