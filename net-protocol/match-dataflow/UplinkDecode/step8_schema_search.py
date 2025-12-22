#!/usr/bin/env python3
"""UplinkDecode step 8: search schema for input/skill/move/shop type candidates."""
import json, re
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

star_def = json.load(open(PROJ / 'work/type07-parse-20260812/MetalibFind/schema-star-def-tdr.json'))
sync = json.load(open(PROJ / 'work/type07-parse-20260812/MetalibFind/schema-sync-focus.json'))

print('star_def type_index range:', min(m['type_index'] for m in star_def.values()), max(m['type_index'] for m in star_def.values()))
# how many star_def classes with type_index < 20000?
small = {c: m for c, m in star_def.items() if m['type_index'] < 20000}
print('star_def classes with type_index < 20000:', len(small))

# search names
pat = re.compile(r'(Skill|Move|Attack|Shop|Buy|Input|Frame|Cast|Target|Teleport|Recall|Back|Spell|Item|Equip|Ward|Ping)', re.I)
hits = {}
for cls, m in star_def.items():
    if pat.search(cls):
        hits[cls] = m['type_index']
print('\nstar_def hits (%d):' % len(hits))
for cls, ti in sorted(hits.items(), key=lambda kv: kv[1]):
    print(f'  {ti:6d} {cls}')
