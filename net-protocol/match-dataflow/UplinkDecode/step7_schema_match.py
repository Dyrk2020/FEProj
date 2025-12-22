#!/usr/bin/env python3
"""UplinkDecode step 7: match subtype u16 ids against TDR schema type_index values."""
import json
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

sub_ids = {
    0x0301: '010301/020301/030301', 0x0e0c: '010e0c/020e0c', 0x0d0c: '010d0c/020d0c/0202ce/0302ce',
    0x250c: '01250c', 0x260c: '01260c', 0x270c: '01270c', 0x280c: '01280c', 0x0f0c: '010f0c/020f0c',
    0x05cd: '0105cd/0205cd/0305cd', 0x04cd: '0104cd/0204cd/0304cd', 0x03cc: '0103cc',
    0x060e: '01060e', 0x0410: '010410', 0x02ce: '0102ce/0202ce/0302ce', 0x05de: '0105de',
    0x02d0: '0202d0/0402d0', 0x0213: '010213',
}

schemas = {}
for name in ['schema-all-tdr.json', 'schema-star-def-tdr.json', 'schema-star-stat-report-tdr.json']:
    p = PROJ / 'work/type07-parse-20260812/MetalibFind' / name
    if p.exists():
        schemas[name] = json.load(open(p))
print('loaded:', {k: len(v) for k, v in schemas.items()})

# check type_index presence
for sid, label in sorted(sub_ids.items()):
    hits = []
    for fname, s in schemas.items():
        for cls, meta in s.items():
            ti = meta.get('type_index')
            if ti == sid:
                hits.append((fname, cls))
    print(f'0x{sid:04x} ({sid}) <- {label}: {hits if hits else "NO MATCH"}')

# also CLASS_ID
print('\n=== CLASS_ID scan ===')
for sid, label in sorted(sub_ids.items()):
    hits = []
    for fname, s in schemas.items():
        for cls, meta in s.items():
            ci = meta.get('CLASS_ID')
            if ci == sid:
                hits.append((fname, cls))
    print(f'0x{sid:04x} ({sid}): {hits if hits else "-"}')
