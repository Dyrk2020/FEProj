#!/usr/bin/env python3
"""DecryptFlowA: decrypt Wild Rift UDP game frames (AES-256-GCM, no tag) from pcap.

Wire frame = [plaintext header hlen][GCM ciphertext]; header (incl. 4-byte head4) is NOT
encrypted. nonce = MD5(nonce_material[:12] + rev4(payload[:4]))[:16].
CRC32 (big-endian) sits at out[hlen:hlen+4]; zlib.crc32(whole out with CRC slot zeroed).
hlen is blind-guessed in [4, 64]; first hlen whose CRC passes wins. The GCM
ciphertext starts fresh at offset hlen, so each candidate is decrypted directly
(GCM keystream is buffer-phase-aligned and cannot be sliced from a full decrypt).

Flows: local 15031/15034 <-> remote 46416/37191. Key is only valid for t >= 1786543885036
(SetKey at 22:11:25). NOTE: flow 15031<->46416 carries no frames at/after the cutoff; the
decryptable traffic is 15034<->37191. Direction is recorded per record via sport/dport.

Input : artifacts/packet-capture-20260812-2153/wr_cap_20260812_215325/traffic.pcap
        (LE pcap, linktype 276 = LINUX_SLL2)
Output: work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.jsonl
        work/packet-decrypt-20260812/DecryptFlowA/decrypt_a.stats.json
"""
import hashlib
import json
import struct
import sys
import zlib
from collections import Counter
from pathlib import Path

from Crypto.Cipher import AES

PCAP = Path('artifacts/packet-capture-20260812-2153/wr_cap_20260812_215325/traffic.pcap')
OUTDIR = Path('work/packet-decrypt-20260812/DecryptFlowA')
JSONL = OUTDIR / 'decrypt_a.jsonl'
STATS = OUTDIR / 'decrypt_a.stats.json'

KEY = bytes.fromhex('c139fd889b50404c3d984ad80b22fb265395b3b5ed8c50af4bf31aa0951d6e5d')
NONCE_MATERIAL = bytes.fromhex('8b879cc058aa449f1cd308604f0a8512')[:12]
KEY_EFFECTIVE_T = 1786543885036

FLOWS = {(15031, 46416), (46416, 15031), (15034, 37191), (37191, 15034)}
HLEN_MIN, HLEN_MAX = 4, 64


def parse_frames(pcap: Path):
    """Yield (t_ms, sport, dport, payload) for target-flow UDP frames, in pcap order."""
    with open(pcap, 'rb') as f:
        gh = f.read(24)
        magic, = struct.unpack('<I', gh[:4])
        if magic != 0xA1B2C3D4:
            raise SystemExit(f'unsupported pcap magic {magic:#x} (want little-endian)')
        while True:
            rh = f.read(16)
            if len(rh) < 16:
                break
            ts_sec, ts_usec, incl_len, _orig = struct.unpack('<IIII', rh)
            data = f.read(incl_len)
            if len(data) < 20:
                continue  # not even a full SLL2 header
            if struct.unpack('>H', data[0:2])[0] != 0x0800:  # SLL2 protocol: IPv4
                continue
            ver_ihl = data[20]
            proto = data[20 + 9]
            ihl = (ver_ihl & 0x0F) * 4
            if ihl < 20 or proto != 17:  # UDP only
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
    """Blind-guess hlen; return (hlen, out_bytes) or (None, None).

    GCM keystream is block-aligned to the passed buffer, so the ciphertext
    (which starts fresh at hlen) must be decrypted directly per candidate.
    """
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
    total = 0
    ok = 0
    failed = 0
    hlen_dist = Counter()
    dir_counts = Counter()
    tmin, tmax = None, None
    fail_hlen_limited = 0  # payload too short for any hlen candidate
    with open(JSONL, 'w') as jf:
        for t_ms, sport, dport, payload in parse_frames(PCAP):
            total += 1
            dir_counts[(sport, dport)] += 1
            tmin = t_ms if tmin is None else min(tmin, t_ms)
            tmax = t_ms if tmax is None else max(tmax, t_ms)
            if len(payload) < HLEN_MIN + 4:
                failed += 1
                fail_hlen_limited += 1
                continue
            head4 = payload[:4].hex()
            hlen, plain = decrypt_frame(payload)
            if hlen is None:
                failed += 1
                continue
            ok += 1
            hlen_dist[hlen] += 1
            rec = {
                't': t_ms,
                'sport': sport,
                'dport': dport,
                'hlen': hlen,
                'tlen': len(plain),
                'crc_ok': True,
                'head4': head4,
                'plain_hex': plain[:256].hex(),
                'plain_len': len(plain),
            }
            jf.write(json.dumps(rec) + '\n')

    stats = {
        'total_frames_t_ge_cutoff': total,
        'decrypt_ok': ok,
        'decrypt_failed': failed,
        'failed_too_short': fail_hlen_limited,
        'key_effective_t': KEY_EFFECTIVE_T,
        'time_range_ms': [tmin, tmax],
        'direction_counts': {f'{s}->{d}': c for (s, d), c in sorted(dir_counts.items())},
        'hlen_distribution': {str(h): c for h, c in sorted(hlen_dist.items())},
    }
    STATS.write_text(json.dumps(stats, indent=2) + '\n')
    print(json.dumps(stats, indent=2))
    return ok


if __name__ == '__main__':
    n = main()
    sys.exit(0 if n > 0 else 1)
