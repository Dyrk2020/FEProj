#!/usr/bin/env python3
"""DownlinkDecode: re-decrypt pcap keeping FULL plaintext for target frames.

decrypt_a.jsonl truncates plain_hex to 256B; roster frames are 359B so hero-id
records 7-10 are cut off. Re-run the same decrypt logic and store full bytes for:
  - downlink hlen=4 frames of type 01 / 03 / 1b (and 07 for reference)
  - uplink hlen=14 frames with ch=0a (heartbeat), ch=01 (clock)
Output: downlink_full.jsonl (t/sport/dport/hlen/tlen/head4/plain_b64/full flag)
"""
import base64
import hashlib
import json
import struct
import sys
import zlib
from collections import Counter
from pathlib import Path

from Crypto.Cipher import AES

PROJ = Path('<research-workspace>')
PCAP = PROJ / 'artifacts/packet-capture-20260812-2153/wr_cap_20260812_215325/traffic.pcap'
OUTDIR = PROJ / 'work/match-dataflow-20260812/DownlinkDecode'
JSONL = OUTDIR / 'downlink_full.jsonl'

KEY = bytes.fromhex('c139fd889b50404c3d984ad80b22fb265395b3b5ed8c50af4bf31aa0951d6e5d')
NONCE_MATERIAL = bytes.fromhex('8b879cc058aa449f1cd308604f0a8512')[:12]
KEY_EFFECTIVE_T = 1786543885036

FLOWS = {(15031, 46416), (46416, 15031), (15034, 37191), (37191, 15034)}
HLEN_MIN, HLEN_MAX = 4, 64


def parse_frames(pcap: Path):
    with open(pcap, 'rb') as f:
        gh = f.read(24)
        magic, = struct.unpack('<I', gh[:4])
        if magic != 0xA1B2C3D4:
            raise SystemExit(f'unsupported pcap magic {magic:#x}')
        while True:
            rh = f.read(16)
            if len(rh) < 16:
                break
            ts_sec, ts_usec, incl_len, _orig = struct.unpack('<IIII', rh)
            data = f.read(incl_len)
            if len(data) < 20:
                continue
            if struct.unpack('>H', data[0:2])[0] != 0x0800:
                continue
            ver_ihl = data[20]
            proto = data[20 + 9]
            ihl = (ver_ihl & 0x0F) * 4
            if ihl < 20 or proto != 17:
                continue
            udp = data[20 + ihl:]
            if len(udp) < 8:
                continue
            sport, dport, ulen = struct.unpack('>HHH', udp[0:6])
            if (sport, dport) not in FLOWS:
                continue
            t_ms = ts_sec * 1000 + ts_usec // 1000
            if t_ms < KEY_EFFECTIVE_T:
                continue
            yield t_ms, sport, dport, udp[8:]


def decrypt_frame(payload: bytes):
    n = len(payload)
    if n < HLEN_MIN + 4:
        return None, None
    hmax = min(HLEN_MAX, n - 4)
    nonce = hashlib.md5(NONCE_MATERIAL + payload[:4][::-1]).digest()[:16]
    for hlen in range(HLEN_MIN, hmax + 1):
        try:
            pt = AES.new(KEY, AES.MODE_GCM, nonce=nonce).decrypt(payload[hlen:])
        except Exception:
            return None, None
        out = payload[:hlen] + pt
        crc_slot = out[hlen:hlen + 4]
        zeroed = out[:hlen] + b'\x00' * 4 + out[hlen + 4:]
        if zlib.crc32(zeroed) & 0xFFFFFFFF == int.from_bytes(crc_slot, 'big'):
            return hlen, out
    return None, None


def main():
    OUTDIR.mkdir(parents=True, exist_ok=True)
    kept = Counter()
    with open(JSONL, 'w') as jf:
        for t_ms, sport, dport, payload in parse_frames(PCAP):
            if len(payload) < HLEN_MIN + 4:
                continue
            hlen, plain = decrypt_frame(payload)
            if hlen is None:
                continue
            if hlen == 4:
                if len(plain) < 12:
                    continue
                typ = int.from_bytes(plain[8:12], 'big')
                if typ not in (1, 3, 0x1b):
                    continue
            elif hlen == 14:
                if len(plain) < 25:
                    continue
                ch = plain[24]
                if ch not in (0x0a, 0x01):
                    continue
            else:
                continue
            rec = {
                't': t_ms,
                'sport': sport,
                'dport': dport,
                'hlen': hlen,
                'tlen': len(plain),
                'head4': payload[:4].hex(),
                'plain_b64': base64.b64encode(plain).decode(),
            }
            jf.write(json.dumps(rec) + '\n')
            kept[(hlen, '03' if hlen == 4 else f'ch{plain[24]:02x}')] += 1
    print(dict(kept))


if __name__ == '__main__':
    sys.exit(main())
