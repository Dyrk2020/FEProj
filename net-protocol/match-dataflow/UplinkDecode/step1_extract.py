#!/usr/bin/env python3
"""UplinkDecode step 1: extract ch=06 uplink frames from decrypt_a.jsonl."""
import json
from collections import Counter
from pathlib import Path

PROJ = Path('<research-workspace>')
SRC = PROJ / 'work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl'
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'


def main():
    recs = []
    with open(SRC) as f:
        for line in f:
            recs.append(json.loads(line))
    print('total recs:', len(recs))

    up = [r for r in recs if r['hlen'] == 14]
    print('uplink hlen=14:', len(up))
    chc = Counter(r['plain_hex'][24 * 2:24 * 2 + 2] for r in up)
    print('ch dist:', dict(sorted(chc.items(), key=lambda kv: -kv[1])))

    frames = []
    for r in up:
        if r['plain_hex'][24 * 2:24 * 2 + 2] != '06':
            continue
        ph = bytes.fromhex(r['plain_hex'])
        f = {
            't': r['t'],
            'sport': r['sport'],
            'dport': r['dport'],
            'plain_len': r['plain_len'],
            'head4': r['head4'],
            'cnt': int.from_bytes(ph[26:29], 'big'),
            'ver': ph[29],
            'sub': ph[30:33].hex(),
            'payload': ph[33:].hex(),
        }
        frames.append(f)
    frames.sort(key=lambda f: f['cnt'])
    print('ch=06 frames:', len(frames))

    cnts = [f['cnt'] for f in frames]
    dup = Counter(cnts)
    dupvals = {k: v for k, v in dup.items() if v > 1}
    print('cnt range:', min(cnts), '->', max(cnts))
    print('distinct cnt values:', len(dup), '| duplicated:', len(dupvals), sorted(dupvals.items())[:10])

    subc = Counter(f['sub'] for f in frames)
    print('subtype counts:')
    for s, n in sorted(subc.items(), key=lambda kv: -kv[1]):
        print('  ', s, n)

    with open(OUT / 'uplink_ch06_frames.json', 'w') as fo:
        json.dump(frames, fo, indent=1)
    print('wrote', OUT / 'uplink_ch06_frames.json')


if __name__ == '__main__':
    main()
