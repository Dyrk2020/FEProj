#!/usr/bin/env python3
"""Type07Fields: byte-offset alignment analysis over same-tlen families.

For each tlen family with >=100 samples: per-byte-offset constancy/variability,
u16/u24 value distributions, counters, id sets. Plus per-record segmentation
hypothesis check: records look like [03 01 vv vv idx] 5 bytes (or [03 01 vvv idx]).
"""
import json
from collections import Counter, defaultdict
from pathlib import Path

DIR = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields')
ROWS = [json.loads(l) for l in open(DIR / 'type07_extract.jsonl')]

# group by tlen
families = defaultdict(list)
for r in ROWS:
    families[r['tlen']].append(r)

big = {tl: fr for tl, fr in sorted(families.items()) if len(fr) >= 100}
print('families >=100:', {tl: len(fr) for tl, fr in big.items()})

# per-offset analysis on body (offset 0 = body[0] = msgseq high byte)
def offset_stats(frames):
    L = len(bytes.fromhex(frames[0]['body']))
    stats = []
    for o in range(L):
        vals = []
        for fr in frames:
            b = bytes.fromhex(fr['body'])
            if o < len(b):
                vals.append(b[o])
        if not vals:
            stats.append({'off': o, 'const': None, 'vals': 0, 'uniq': 0})
            continue
        c = Counter(vals)
        stats.append({'off': o, 'const': c.most_common(1)[0][0] if len(c) == 1 else None,
                      'vals': len(vals), 'uniq': len(c), 'top': c.most_common(3)})
    return stats

# analyze top family tlen=113 (262 frames) and 92 (194)
for tl in [113, 108, 92]:
    fr = families[tl]
    st = offset_stats(fr)
    const = [s for s in st if s['const'] is not None]
    var = [s for s in st if s['const'] is None]
    print(f"\n=== tlen={tl} n={len(fr)} bodylen={len(bytes.fromhex(fr[0]['body']))}")
    print(f"const offsets: {[(s['off'], hex(s['const'])) for s in const]}")
    print(f"var offsets: {[s['off'] for s in var]}")
    # u16 at each var offset: distribution of distinct values
    for s in var:
        o = s['off']
        vals = Counter()
        for x in fr:
            b = bytes.fromhex(x['body'])
            if o + 1 < len(b):
                vals[int.from_bytes(b[o:o+2], 'big')] += 1
        distinct = len(vals)
        top = vals.most_common(4)
        # check +1 counter pattern over seq order
        seq_vals = []
        for x in sorted(fr, key=lambda r: r['seq'] or 0):
            b = bytes.fromhex(x['body'])
            if o + 2 <= len(b):
                seq_vals.append(int.from_bytes(b[o:o+2], 'big'))
        incr = sum(1 for a, c in zip(seq_vals, seq_vals[1:]) if c == a + 1)
        print(f"  off {o}: distinct_u16={distinct} top={[(hex(v), n) for v, n in top]} +1consec={incr}/{len(seq_vals)-1}")
