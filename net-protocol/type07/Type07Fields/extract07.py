#!/usr/bin/env python3
"""Type07Fields: extract type=07 frames from decrypt_a.jsonl and save to JSONL.

Frame layout (server->client, hlen=4): [0:4] head4 | [4:8] CRC32 | [8:12] u32 type | [12:] payload.
Type field at payload[8:12] of hlen=4 records (empirically verified: 14725 of 15558 hlen=4
records carry 0x00000007; identical count/pattern as ProtocolAnalyze protocol.md §3).

Output: work/type07-parse-20260812/Type07Fields/type07_extract.jsonl
        work/type07-parse-20260812/Type07Fields/type07_stats.json
"""
import json
import struct
import zlib
from collections import Counter
from pathlib import Path

SRC = Path('<research-workspace>/work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl')
OUT = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields/type07_extract.jsonl')
ST = Path('<research-workspace>/work/type07-parse-20260812/Type07Fields/type07_stats.json')


def main():
    rows = []
    stats = {
        'hlen4_total': 0,
        'type07': 0,
        'crc_fail_type07': 0,
        'head4_missing': 0,
        'seq_delta_dist': Counter(),
        'b16': Counter(), 'b17': Counter(), 'b18': Counter(), 'b19': Counter(),
        'tlen_dist': Counter(),
        'type07_other': Counter(),
    }
    with open(SRC) as f:
        for line in f:
            r = json.loads(line)
            if r['hlen'] != 4:
                continue
            stats['hlen4_total'] += 1
            b = bytes.fromhex(r['plain_hex'])
            if len(b) < 12:
                continue
            typ = int.from_bytes(b[8:12], 'big')
            if typ != 7:
                stats['type07_other'][typ] += 1
                continue
            stats['type07'] += 1
            head4 = int.from_bytes(b[0:4], 'big')
            # CRC verify
            slot = b[4:8]
            msg = bytearray(b)
            msg[4:8] = b'\x00\x00\x00\x00'
            ok = zlib.crc32(bytes(msg)) == int.from_bytes(slot, 'big')
            if not ok:
                stats['crc_fail_type07'] += 1
            # msgseq at [12:16]
            if len(b) >= 16:
                seq = int.from_bytes(b[12:16], 'big')
                stats['seq_delta_dist'][seq - (head4 & 0x0FFFFFFF)] += 1
            else:
                seq = None
            if len(b) >= 20:
                stats['b16'][b[16]] += 1
                stats['b17'][b[17]] += 1
                stats['b18'][b[18]] += 1
                stats['b19'][b[19]] += 1
            stats['tlen_dist'][r['tlen']] += 1
            rows.append({
                't': r['t'],
                'head4': r['head4'],
                'head4_int': head4,
                'seq': seq,
                'tlen': r['tlen'],
                'hex': r['plain_hex'],
                'body': b[12:].hex(),
            })
    rows.sort(key=lambda x: (x['seq'] if x['seq'] is not None else -1, x['t']))
    with open(OUT, 'w') as f:
        for row in rows:
            f.write(json.dumps(row) + '\n')
    stats['tlen_dist'] = dict(sorted(stats['tlen_dist'].items()))
    stats['seq_delta_dist'] = dict(sorted(stats['seq_delta_dist'].items()))
    stats['b16'] = dict(sorted(stats['b16'].items()))
    stats['b17'] = dict(sorted(stats['b17'].items()))
    stats['b18'] = dict(sorted(stats['b18'].items()))
    stats['b19'] = dict(sorted(stats['b19'].items()))
    stats['type07_other'] = dict(sorted(stats['type07_other'].items()))
    with open(ST, 'w') as f:
        json.dump(stats, f, indent=1)
    print(f"type07 frames: {stats['type07']}  crc_fail: {stats['crc_fail_type07']}")
    print(f"seq-head4 delta dist: {stats['seq_delta_dist']}")
    print(f"b16: {stats['b16']}")
    print(f"b17: {stats['b17']}")
    print(f"b18: {stats['b18']}")
    print(f"b19: {stats['b19']}")
    print(f"tlen top: {sorted(stats['tlen_dist'].items(), key=lambda kv:-kv[1])[:12]}")


if __name__ == '__main__':
    main()
