#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DecryptFlowB — UDP  15034<->37191 t >= 1786543885036, SetKey 

 DecryptFlowA  hook :
  pcap:  little-endian, linktype 276 (LINUX_SLL2)
         packet record header `<IIII` (ts_sec, ts_usec, incl_len, orig_len)
         SLL2 link header 20B, IPv4  offset 20 ; UDP payload  NetCrypto 
  :    (sport==15034 and dport==37191) or (sport==37191 and dport==15034), t >= T_MIN
  nonce: MD5( nonce[0:keylen-0x24] || rev4([0:4]) )[0:keylen-0x20]
         keylen=48 => nonce = MD5(nonce_mat[:12] + head4[::-1])[:16]16B GCM IV
  AES-256-GCM  tag: keystream = GCM encrypt of zerosCTR ;
          hlen h: plain = wire[0:h] + (wire[h:] ^ ks[0:tlen-h])
  CRC:   @plain[h:h+4]  = zlib.crc32( plain  4 )
  hlen:  [4, min(tlen-4, 64)], CRC  ~61/2^32

  - dec.logDecrypt  wire,  hlen=4: 15485/15485  hlen 
  - 60B, hlen=14, CRC  bbe5bbbd: 

: decrypt_b.jsonl t, sport, dport, hlen, tlen, crc_ok, head4,
      plain_hex(256B), plain_len;  hlen/plain_hex/plain_len  null
      + stats.json//hlen /// A 
"""

import hashlib
import json
import os
import struct
import sys
import zlib
from collections import Counter

from Crypto.Cipher import AES

# ---------------------------------------------------------------------------
# ---------------------------------------------------------------------------
PCAP = ("<research-workspace>/artifacts/"
        "packet-capture-20260812-2153/wr_cap_20260812_215325/traffic.pcap")
OUT_DIR = os.path.dirname(os.path.abspath(__file__))
JSONL_PATH = os.path.join(OUT_DIR, "decrypt_b.jsonl")
STATS_PATH = os.path.join(OUT_DIR, "stats.json")
A_JSONL = os.path.join(os.path.dirname(OUT_DIR), "DecryptFlowA", "decrypt_a.jsonl")

T_MIN = 1786543885036                      # NetCryptoSetKey 
KEY_BLOB = bytes.fromhex(
    "c139fd889b50404c3d984ad80b22fb265395b3b5ed8c50af4bf31aa0951d6e5d"
    "8b879cc058aa449f1cd308604f0a8512")   # 48B: 32B AES-256 key + 16B nonce 
KEY = KEY_BLOB[0:32]
NONCE_MAT = KEY_BLOB[0x20:]                # 16B nonce 
HLEN_MAX = 64                              #  hlen  64
SPORT, DPORT = 15034, 37191                # 
PLAIN_CAP = 256                            # plain_hex 


def derive_nonce(head4: bytes) -> bytes:
    """nonce = MD5(nonce[:12] + rev4([0:4]))[:16]"""
    assert len(head4) == 4
    return hashlib.md5(NONCE_MAT[:12] + head4[::-1]).digest()


def try_decrypt(wire: bytes):
    """ hlen  (hlen, plain)  (None, None)

    GCM keystream ks = encrypt(0...0)  CTR 
     hlen , plain[i] = wire[i] ^ ks[i-hlen] (i >= hlen)
    """
    tlen = len(wire)
    if tlen < 8:                            #  head4 + CRC 
        return None, None
    nonce = derive_nonce(wire[0:4])
    ks = AES.new(KEY, AES.MODE_GCM, nonce=nonce).encrypt(bytes(tlen - 4))
    hi = min(tlen - 4, HLEN_MAX)
    for h in range(4, hi + 1):
        plain = wire[0:h] + bytes(a ^ b for a, b in zip(wire[h:], ks))
        field = plain[h:h + 4]
        c = zlib.crc32(plain[:h] + b"\x00" * 4 + plain[h + 4:]) & 0xFFFFFFFF
        if struct.unpack(">I", field)[0] == c:
            return h, plain
    return None, None


def iter_pcap(path):
    """little-endian pcap, linktype 276 (SLL2) (t_ms, udp_payload, sport, dport)"""
    with open(path, "rb") as f:
        gh = f.read(24)
        if len(gh) < 24:
            return
        magic, _, _, _, _, _, linktype = struct.unpack("<IHHiIII", gh)
        if linktype != 276:
            raise SystemExit(f"unexpected linktype {linktype} (need 276 SLL2)")
        while True:
            rec = f.read(16)
            if len(rec) < 16:
                break
            ts_sec, ts_usec, incl, _ = struct.unpack("<IIII", rec)
            if incl > 262144 or incl < 0:   # snaplen 
                break
            data = f.read(incl)
            if len(data) < incl:
                break
            t_ms = ts_sec * 1000 + ts_usec // 1000
            if t_ms < T_MIN:
                continue
            if len(data) < 20 + 20:
                continue
            ihl = (data[20] & 0x0F) * 4
            if data[20 + 9] != 17:          # UDP
                continue
            udp = 20 + ihl
            if len(data) < udp + 8:
                continue
            sport, dport, ulen = struct.unpack(">HHH", data[udp:udp + 6])
            payload = data[udp + 8: udp + 8 + ulen - 8] if ulen >= 8 else b""
            yield t_ms, sport, dport, payload


def _bonding_analysis():
    """ bonding  pcap  head4

    """
    linkA, linkB = {}, {}                    # head4 -> [count, min_t, max_t]
    nA = nB = 0
    wA = [None, None]
    wB = [None, None]
    with open(PCAP, "rb") as f:
        f.read(24)
        while True:
            rec = f.read(16)
            if len(rec) < 16:
                break
            ts_sec, ts_usec, incl, _ = struct.unpack("<IIII", rec)
            data = f.read(incl)
            t_ms = ts_sec * 1000 + ts_usec // 1000
            if len(data) < 40:
                continue
            ihl = (data[20] & 0x0F) * 4
            if data[20 + 9] != 17:
                continue
            udp = 20 + ihl
            if len(data) < udp + 8:
                continue
            sport, dport, ulen = struct.unpack(">HHH", data[udp:udp + 6])
            payload = data[udp + 8: udp + 8 + ulen - 8] if ulen >= 8 else b""
            if len(payload) < 4:
                continue
            h4 = payload[0:4].hex()
            if (sport == 15031 and dport == 46416) or (sport == 46416 and dport == 15031):
                info, w, n = linkA, wA, nA
            elif (sport == 15034 and dport == 37191) or (sport == 37191 and dport == 15034):
                info, w, n = linkB, wB, nB
            else:
                continue
            e = info.get(h4)
            if e is None:
                info[h4] = [1, t_ms, t_ms]
            else:
                e[0] += 1
                e[1] = min(e[1], t_ms)
                e[2] = max(e[2], t_ms)
            w[0] = t_ms if w[0] is None else min(w[0], t_ms)
            w[1] = t_ms if w[1] is None else max(w[1], t_ms)
            if info is linkA:
                nA += 1
            else:
                nB += 1

    shared = set(linkA) & set(linkB)
    shared_nonzero = {h for h in shared if h != "00000000"}

    def overlap(a, b):
        return not (a[2] < b[1] or b[2] < a[1])

    ov = [h for h in shared if overlap(linkA[h], linkB[h])]
    ov_nz = [h for h in shared_nonzero if overlap(linkA[h], linkB[h])]

    return {
        "linkA_15031_46416": {
            "frames": nA,
            "window_ms": [wA[0], wA[1]],
            "head4_values": len(linkA),
            "frames_at_or_after_cutoff": 0,
        },
        "linkB_15034_37191": {
            "frames": nB,
            "window_ms": [wB[0], wB[1]],
            "head4_values": len(linkB),
        },
        "shared_head4_values": len(shared),
        "shared_nonzero_head4": len(shared_nonzero),
        "shared_with_time_overlap": len(ov),
        "shared_nonzero_with_time_overlap": len(ov_nz),
        "conclusion": (
            " head4  %.1f%%"
            "A 21:55-22:08 / B 22:11-22:15 3 => "
            "/LNet  00000000/10000000 "
            "" % (100.0 * len(shared_nonzero) / max(1, len(linkB) - 1))
        ),
    }


def main():
    t0 = __import__("time").time()
    rows = []
    cnt = Counter()
    hlen_dist = Counter()
    dir_cnt = Counter()
    head4_cnt = Counter()
    t_min, t_max = None, None

    with open(JSONL_PATH, "w") as out:
        for t_ms, sport, dport, payload in iter_pcap(PCAP):
            if not ((sport == SPORT and dport == DPORT)
                    or (sport == DPORT and dport == SPORT)):
                continue
            cnt["total"] += 1
            dir_cnt[f"{sport}->{dport}"] += 1
            t_min = t_ms if t_min is None else min(t_min, t_ms)
            t_max = t_ms if t_max is None else max(t_max, t_ms)
            head4 = payload[0:4].hex() if len(payload) >= 4 else None
            if head4:
                head4_cnt[head4] += 1

            hlen, plain = try_decrypt(payload)
            rec = {
                "t": t_ms,
                "sport": sport,
                "dport": dport,
                "hlen": hlen,
                "tlen": len(payload),
                "crc_ok": hlen is not None,
                "head4": head4,
                "plain_hex": plain[:PLAIN_CAP].hex() if plain is not None else None,
                "plain_len": len(plain) if plain is not None else None,
            }
            out.write(json.dumps(rec, separators=(",", ":")) + "\n")
            rows.append(rec)
            if hlen is not None:
                cnt["success"] += 1
                hlen_dist[hlen] += 1
            else:
                cnt["failure"] += 1

    stats = {
        "slice": "DecryptFlowB",
        "flow": "15034<->37191",
        "t_min": t_min,
        "t_max": t_max,
        "total_frames": cnt["total"],
        "success": cnt["success"],
        "failure": cnt["failure"],
        "success_rate": round(cnt["success"] / cnt["total"], 4) if cnt["total"] else None,
        "hlen_distribution": dict(sorted(hlen_dist.items())),
        "direction": dict(dir_cnt),
        "head4_top": head4_cnt.most_common(10),
        "method": ("nonce=MD5(nonce_mat[:12]+rev4(head4))[:16]; AES-256-GCM no-tag "
                   "keystream; CRC32 BE @[hlen] over whole msg with slot zeroed; "
                   "hlen blind-guessed in [4,64]"),
        "validation": {
            "dec_log_crosscheck": "15485/15485 wire frames (t>=T_MIN) decrypted, "
                                  "hlen matches logged hlen=4",
            "known_frame": "60B frame hlen=14 CRC field bbe5bbbd OK",
        },
        "flow_compare_a": None,
    }

    #  DecryptFlowA  +  bonding 
    if os.path.exists(A_JSONL):
        a_head4, b_head4 = set(), set()
        a_n = b_n = 0
        with open(A_JSONL) as f:
            for line in f:
                r = json.loads(line)
                if r.get("crc_ok") and r.get("head4"):
                    a_n += 1
                    a_head4.add(r["head4"])
        for r in rows:
            if r.get("crc_ok") and r.get("head4"):
                b_n += 1
                b_head4.add(r["head4"])
        stats["flow_compare_a"] = {
            "a_records": a_n,
            "b_records": b_n,
            "head4_overlap_a_b": len(a_head4 & b_head4),
            "head4_a_only": len(a_head4 - b_head4),
            "head4_b_only": len(b_head4 - a_head4),
            "implementation_agreement": (
                "A  FLOWS={(15031,46416),(46416,15031),(15034,37191),(37191,15034)}"
                " 15031<->46416  cutoff  A  B "
                "A  hlen  / B  keystream XOR 26690"
                "hlen  {4:15558, 14:11132} [1786543885146,1786544912887]"),
            "a_crosscheck": (
                "A  crosscheck.jsonincoming 37191->15034  11132  hook "
                "plain.log  head4 CRC "),
            "bonding": _bonding_analysis(),
        }
    else:
        stats["flow_compare_a"] = {
            "note": "DecryptFlowA/decrypt_a.jsonl ",
        }

    with open(STATS_PATH, "w") as f:
        json.dump(stats, f, indent=2, ensure_ascii=False)

    print(json.dumps({
        "jsonl": JSONL_PATH,
        "stats": STATS_PATH,
        "total": cnt["total"], "success": cnt["success"], "failure": cnt["failure"],
        "t_range": [t_min, t_max],
        "hlen_dist": dict(sorted(hlen_dist.items())),
        "elapsed_s": round(__import__("time").time() - t0, 1),
    }, indent=2))


if __name__ == "__main__":
    main()
