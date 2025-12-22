#!/usr/bin/env python3
"""Type07Extract slice — generate type07_frames.jsonl, ch06_frames.jsonl, type07_plainlen_dist.tsv.

Reads: work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl (26,690 frames).
Writes into work/type07-parse-20260812/Type07Extract/.

Frame layouts (verified empirically, see report.md):
  hlen=14 (client->server, 11,132): [4 head4][4 C1][4 C2][2 cd76][4 CRC][4 C3][2 0000]
                                    [1 ch][1 00][3 ][1 ][3 ] payload@33
  hlen=4  (server->client, 15,558): [4 head4][4 CRC][4 type u32][4 ] payload@16
"""
import json
from collections import Counter
from pathlib import Path

SRC = Path('<research-workspace>/work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl')
OUT = Path('<research-workspace>/work/type07-parse-20260812/Type07Extract')

rows = [json.loads(l) for l in open(SRC)]
inb = [r for r in rows if r['hlen'] == 14]   # 11,132
outb = [r for r in rows if r['hlen'] == 4]   # 15,558

# ---------- type=07 frames (hlen=4, server->client) ----------
t7 = []
for r in outb:
    b = bytes.fromhex(r['plain_hex'])
    if len(b) >= 12 and b[8:12] == b'\x00\x00\x00\x07':
        t7.append(r)
assert len(t7) == 14725, len(t7)

with open(OUT / 'type07_frames.jsonl', 'w') as f:
    for r in t7:
        b = bytes.fromhex(r['plain_hex'])
        rec = {
            't': r['t'],
            'head4': r['head4'],
            'ch': b[16],                 # 02=1472401=1
            '': int.from_bytes(b[12:16], 'big'),  # +1=head428-43
            'type': 7,
            'tlen': r['tlen'],
            'plain_hex': r['plain_hex'],
            'plain_len': r['plain_len'],
        }
        f.write(json.dumps(rec, ensure_ascii=False) + '\n')

# ---------- ch=06 frames (hlen=14, client->server state sync, counterpart) ----------
c06 = [r for r in inb if r['plain_hex'][48:50] == '06']
assert len(c06) == 10142, len(c06)
with open(OUT / 'ch06_frames.jsonl', 'w') as f:
    for r in c06:
        rec = {
            't': r['t'],
            'head4': r['head4'],
            'ch': '06',
            '': int(r['plain_hex'][52:58], 16),   # [26:29] 3B 
            '': r['plain_hex'][58:60],
            '': r['plain_hex'][60:66],              # [30:33] 3B
            'tlen': r['tlen'],
            'plain_hex': r['plain_hex'],
            'plain_len': r['plain_len'],
        }
        f.write(json.dumps(rec, ensure_ascii=False) + '\n')

# ---------- type=07 plain_len distribution ----------
pl = Counter(r['plain_len'] for r in t7)
with open(OUT / 'type07_plainlen_dist.tsv', 'w') as f:
    f.write('plain_len\tcount\n')
    for k in sorted(pl):
        f.write(f'{k}\t{pl[k]}\n')

print('type07_frames.jsonl:', len(t7), 'frames')
print('ch06_frames.jsonl:', len(c06), 'frames')
print('type07_plainlen_dist.tsv:', len(pl), 'rows')
print('type07 plain_len min/max:', min(pl), max(pl))
