#!/usr/bin/env python3
"""UplinkDecode step 29: final structural sweep - consolidated subtype table."""
import json
from collections import Counter, defaultdict
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'

frames = json.load(open(OUT / 'uplink_ch06_frames.json'))

# per subtype: n, tlen modes, payload len modes, first/last cnt, first payload sample
tab = []
for sub in sorted(set(f['sub'] for f in frames), key=lambda s: -sum(1 for f in frames if f['sub'] == s)):
    fs = [f for f in frames if f['sub'] == sub]
    plens = Counter(len(bytes.fromhex(f['payload'])) for f in fs)
    cnts = [f['cnt'] for f in fs]
    first = fs[0]
    # unique payload prefixes (first 8 bytes)
    pre = Counter(bytes.fromhex(f['payload'])[:8].hex() for f in fs)
    tab.append({
        'sub': sub,
        'n': len(fs),
        'tlen_modes': Counter(f['plain_len'] for f in fs).most_common(3),
        'payload_len_modes': plens.most_common(3),
        'cnt_range': (min(cnts), max(cnts)),
        'time_range': (min(f['t'] for f in fs), max(f['t'] for f in fs)),
        'first_payload': first['payload'][:40],
        'unique_prefix8': len(pre),
    })

for t in tab:
    print(t['sub'], 'n=%d' % t['n'], 'plen=%s' % t['payload_len_modes'], 'cnt=%s' % (t['cnt_range'],),
          'prefix8_unique=%d' % t['unique_prefix8'])
    print('   first:', t['first_payload'])

json.dump(tab, open(OUT / 'uplink_subtype_table.json', 'w'), indent=1)
print('\nwrote uplink_subtype_table.json')
