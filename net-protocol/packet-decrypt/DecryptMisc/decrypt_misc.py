#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DecryptMisc —  UDP  + TCP 10001  NetCrypto 
=======================================================================

  - pcap: artifacts/packet-capture-20260812-2153/wr_cap_20260812_215325/traffic.pcap
    little-endian pcap, linktype 276 = LINUX_SLL2 16B `<IIII` 20BIP  offset 20
  -  UDP : 15031/15034 <-> 46416/37191 DecryptFlowA/B 
  - AES-256-GCM tag; key_blob 48B = key(32B) || nonce (16B)
  - nonce = MD5(nonce[:12] + rev4(4B))[:16]; rev4 = 
  -  = [ hlen][GCM ];  out[hlen:hlen+4]  4B  CRC32
    CRC = zlib.crc32( out  CRC )
  - key  t=1786543885036;  t>=KEY_T  key 

  a.  UDP  2530<->37177 14125/18001 53 DNS :
      t>=KEY_T  0..min(44, len-8) NetCrypto 
      4B  00/10/20  GCM  hlen[4,64] + CRC ;
      off=0 / off=38  CRC 
  b. TCP 1000149836<->10001:  payload TCP  doff 64B 
      payload  48B  NetCrypto 

  decrypt_misc.jsonl      : t, proto, sport, dport, off, hlen, tlen, crc_ok,
                                raw_ok, head4, plain_hex(256B), plain_len, flow
  decrypt_misc.stats.json 

: python3 decrypt_misc.py [pcap]
"""

import sys
import json
import struct
import hashlib
import zlib
import collections

from Crypto.Cipher import AES

# ---------------------------------------------------------------------------
# ---------------------------------------------------------------------------
KEY_BLOB = bytes.fromhex(
    "c139fd889b50404c3d984ad80b22fb265395b3b5ed8c50af4bf31aa0951d6e5d"
    "8b879cc058aa449f1cd308604f0a8512"
)
KEY = KEY_BLOB[0:32]              # AES-256 key
NONCE_MATERIAL = KEY_BLOB[0x20:]  # 16B nonce 
NM_LEN = len(NONCE_MATERIAL)      # 16

KEY_T = 1786543885036             # SetKey ms key 

# DecryptFlowA/B 
MAIN_FLOWS = frozenset({
    (17, 15031, 46416), (17, 46416, 15031),
    (17, 15034, 37191), (17, 37191, 15034),
})

HLEN_MIN, HLEN_MAX = 4, 64
OFF_SCAN_MAX = 44                 # 
TCP_OFF_SCAN_MAX = 48

DEFAULT_PCAP = (
    "<research-workspace>/artifacts/packet-capture-20260812-2153/"
    "wr_cap_20260812_215325/traffic.pcap"
)
OUT_DIR = "<research-workspace>/work/packet-decrypt-20260812/DecryptMisc"
JSONL_PATH = OUT_DIR + "/decrypt_misc.jsonl"
STATS_PATH = OUT_DIR + "/decrypt_misc.stats.json"


def derive_nonce(head4: bytes) -> bytes:
    """nonce = MD5(nonce[:12] + rev4(head4))[:16] netcrypto_reference.py """
    return hashlib.md5(NONCE_MATERIAL[:NM_LEN - 4] + head4[::-1]).digest()[:NM_LEN]


def gcm_keystream(nonce: bytes, n: int) -> bytes:
    """GCM-CTR keystream decrypt  keystreamnonce 16B """
    if n <= 0:
        return b""
    return AES.new(KEY, AES.MODE_GCM, nonce=nonce, mac_len=16).decrypt(b"\x00" * n)


def try_gcm_frame(wire: bytes, off: int, head_filter: bool = True):
    """ wire[off:]  NetCrypto  hlen[4,64]
     (hlen, plain, head4_hex)  Nonehead_filter  00/10/20 
    plain  CRC hlen """
    L = len(wire) - off
    if L < HLEN_MIN + 4:
        return None
    head4 = wire[off:off + 4]
    if head_filter and head4[0] != 0 and head4[:2] != b"\x10\x00" and head4[:2] != b"\x20\x00":
        return None
    nonce = derive_nonce(head4)
    k = gcm_keystream(nonce, L - 4)
    for hlen in range(HLEN_MIN, min(HLEN_MAX, L - 4) + 1):
        plain = bytearray(wire[off:off + hlen])
        plain += bytes(a ^ b for a, b in zip(wire[off + hlen:], k[hlen - 4:]))
        saved = bytes(plain[hlen:hlen + 4])
        plain[hlen:hlen + 4] = b"\x00" * 4
        if (zlib.crc32(bytes(plain)) & 0xFFFFFFFF) == struct.unpack(">I", saved)[0]:
            plain[hlen:hlen + 4] = saved          #  CRC 
            return (hlen, bytes(plain), head4.hex())
    return None


def try_raw_frame(wire: bytes, off: int):
    """ off  CRC  hlen  None"""
    L = len(wire) - off
    if L < HLEN_MIN + 4:
        return None
    for hlen in range(HLEN_MIN, min(HLEN_MAX, L - 4) + 1):
        m = bytearray(wire[off:])
        saved = bytes(m[hlen:hlen + 4])
        m[hlen:hlen + 4] = b"\x00" * 4
        if (zlib.crc32(bytes(m)) & 0xFFFFFFFF) == struct.unpack(">I", saved)[0]:
            return hlen
    return None


def classify_udp_flow(sport: int, dport: int) -> str:
    if sport == 53 or dport == 53:
        return "dns"
    if (sport, dport) in ((2530, 37177), (37177, 2530)):
        return "biubiu_tunnel_game"
    if (sport, dport) in ((2530, 38288), (38288, 2530), (2530, 44402), (44402, 2530)):
        return "biubiu_tunnel_ctrl"
    if sport == 14125 or dport == 14125:
        return "keepalive_14125"
    if sport == 18001 or dport == 18001:
        return "heartbeat_18001"
    if dport == 2499 or sport == 2499:
        return "udp_2499"
    return "other"


def plain_hex(plain: bytes) -> str:
    return plain[:256].hex()


def process_udp_payload(tms: int, sport: int, dport: int, pay: bytes, out, stats):
    flow = classify_udp_flow(sport, dport)
    L = len(pay)
    stats["udp"]["after_key_total"][flow] += 1
    if L < HLEN_MIN + 4:
        stats["udp"]["too_short"] += 1
        return

    # 0..min(OFF_SCAN_MAX, L-8)
    found = None
    scan_end = min(OFF_SCAN_MAX, L - 8)
    for off in range(0, scan_end + 1):
        r = try_gcm_frame(pay, off, head_filter=True)
        if r:
            found = (off, r[0], r[1], r[2], True)
            break
    # off=0  off=38
    raw_ok = 0
    for off in (0, 38):
        h = try_raw_frame(pay, off)
        if h:
            raw_ok = h
            break

    if found:
        off, hlen, plain, head4, _ = found
        stats["udp"]["gcm_success"][flow] += 1
        stats["udp"]["gcm_success_total"] += 1
        stats["hlen_dist"][str(hlen)] += 1
        stats["head4_dist"][head4] += 1
        rec = {
            "t": tms, "proto": "udp", "sport": sport, "dport": dport,
            "off": off, "hlen": hlen, "tlen": L, "crc_ok": True,
            "raw_ok": raw_ok, "head4": head4,
            "plain_hex": plain_hex(plain), "plain_len": len(plain), "flow": flow,
        }
    else:
        stats["udp"]["fail"][flow] += 1
        stats["udp"]["fail_total"] += 1
        rec = {
            "t": tms, "proto": "udp", "sport": sport, "dport": dport,
            "off": 0, "hlen": 0, "tlen": L, "crc_ok": False,
            "raw_ok": raw_ok, "head4": pay[0:4].hex(),
            "plain_hex": "", "plain_len": 0, "flow": flow,
        }
    out.write(json.dumps(rec, ensure_ascii=False) + "\n")


def process_tcp_segment(tms: int, sport: int, dport: int, pay: bytes, out, stats):
    L = len(pay)
    s = stats["tcp10001"]
    flow = "tcp_10001"
    dirn = "c2s" if sport == 49836 else "s2c"
    s["segments"][dirn] += 1
    if tms >= KEY_T:
        s["after_key"][dirn] += 1
    else:
        return

    #  64B 
    head = pay[:64]
    printable = sum(1 for b in head if 0x20 <= b < 0x7F)
    ascii_ratio = round(printable / len(head), 3) if head else 0.0
    s["first4"][pay[:4].hex()] += 1
    s["size_hist"][str(L)] += 1
    s["ascii_ratio_hist"][str(ascii_ratio)] += 1

    found = None
    if L >= HLEN_MIN + 4:
        scan_end = min(TCP_OFF_SCAN_MAX, L - 8)
        for off in range(0, scan_end + 1):
            r = try_gcm_frame(pay, off, head_filter=True)
            if r:
                found = (off, r[0], r[1], r[2], True)
                break

    if found:
        off, hlen, plain, head4, _ = found
        s["gcm_success"] += 1
        rec = {
            "t": tms, "proto": "tcp", "sport": sport, "dport": dport,
            "off": off, "hlen": hlen, "tlen": L, "crc_ok": True,
            "raw_ok": 0, "head4": head4,
            "plain_hex": plain_hex(plain), "plain_len": len(plain), "flow": flow,
        }
    else:
        s["fail"] += 1
        rec = {
            "t": tms, "proto": "tcp", "sport": sport, "dport": dport,
            "off": 0, "hlen": 0, "tlen": L, "crc_ok": False,
            "raw_ok": 0, "head4": pay[0:4].hex(),
            "plain_hex": "", "plain_len": 0, "flow": flow,
        }
    out.write(json.dumps(rec, ensure_ascii=False) + "\n")


def main(pcap_path: str):
    import os
    os.makedirs(OUT_DIR, exist_ok=True)

    stats = {
        "udp": {
            "total_packets": collections.Counter(),      #  UDP key 
            "after_key_total": collections.Counter(),    # t>=KEY_T 
            "gcm_success": collections.Counter(),
            "fail": collections.Counter(),
            "gcm_success_total": 0,
            "fail_total": 0,
            "too_short": 0,
        },
        "tcp10001": {
            "segments": collections.Counter(),   #  payload  TCP 
            "after_key": collections.Counter(),
            "gcm_success": 0,
            "fail": 0,
            "first4": collections.Counter(),
            "size_hist": collections.Counter(),
            "ascii_ratio_hist": collections.Counter(),
        },
        "hlen_dist": collections.Counter(),
        "head4_dist": collections.Counter(),
        "time_range": {"min": None, "max": None},
    }

    n_pkts = 0
    tmin = tmax = None
    with open(pcap_path, "rb") as f, open(JSONL_PATH, "w") as out:
        # pcap  24Bmagic d4c3b2a1 linktype=276
        f.read(24)
        while True:
            rh = f.read(16)
            if len(rh) < 16:
                break
            ts_sec, ts_usec, incl_len, orig_len = struct.unpack("<IIII", rh)
            data = f.read(incl_len)
            if len(data) < incl_len:
                break
            n_pkts += 1
            tms = ts_sec * 1000 + ts_usec // 1000
            if tmin is None:
                tmin = tms
            tmax = tms
            if incl_len < 40:
                continue
            ip = data[20:]                      # SLL2  20B
            ihl = (ip[0] & 0x0F) * 4
            proto = ip[9]
            if proto == 17 and len(ip) >= ihl + 8:
                sport, dport = struct.unpack(">HH", ip[ihl:ihl + 4])
                if (17, sport, dport) in MAIN_FLOWS:
                    continue
                stats["udp"]["total_packets"][classify_udp_flow(sport, dport)] += 1
                if tms >= KEY_T:
                    process_udp_payload(tms, sport, dport, ip[ihl + 8:], out, stats)
            elif proto == 6 and len(ip) >= ihl + 20:
                sport, dport = struct.unpack(">HH", ip[ihl:ihl + 4])
                if (sport, dport) in ((49836, 10001), (10001, 49836)):
                    doff = (ip[ihl + 12] >> 4) * 4
                    tcp = ip[ihl:]
                    if len(tcp) >= doff:
                        pay = tcp[doff:]
                        if pay:
                            process_tcp_segment(tms, sport, dport, pay, out, stats)
        stats["time_range"] = {"min": tmin, "max": tmax}

    #  JSON  stats
    def ser(c):
        if isinstance(c, collections.Counter):
            return {k: v for k, v in c.most_common()}
        return {k: v for k, v in c}

    out_stats = {
        "slice": "DecryptMisc",
        "pcap": pcap_path,
        "key_effective_t": KEY_T,
        "main_flows_excluded": sorted(["%d-%d" % (a, b) for _, a, b in MAIN_FLOWS]),
        "total_pcap_packets": n_pkts,
        "time_range_ms": stats["time_range"],
        "udp": {
            "total_packets_all_t": ser(stats["udp"]["total_packets"]),
            "attempted_frames_after_key": ser(stats["udp"]["after_key_total"]),
            "gcm_success": ser(stats["udp"]["gcm_success"]),
            "fail": ser(stats["udp"]["fail"]),
            "gcm_success_total": stats["udp"]["gcm_success_total"],
            "fail_total": stats["udp"]["fail_total"],
            "too_short_skipped": stats["udp"]["too_short"],
        },
        "tcp10001": {
            "payload_segments_all_t": ser(stats["tcp10001"]["segments"]),
            "payload_segments_after_key": ser(stats["tcp10001"]["after_key"]),
            "gcm_success": stats["tcp10001"]["gcm_success"],
            "fail": stats["tcp10001"]["fail"],
            "first4_top": ser(stats["tcp10001"]["first4"].most_common(12)),
            "size_hist_top": ser(stats["tcp10001"]["size_hist"].most_common(10)),
            "ascii_ratio_hist_top": ser(stats["tcp10001"]["ascii_ratio_hist"].most_common(8)),
        },
        "hlen_distribution": ser(stats["hlen_dist"]),
        "head4_distribution_top": ser(stats["head4_dist"].most_common(15)),
        "head4_00000000_count": stats["head4_dist"].get("00000000", 0),
        "head4_total": sum(stats["head4_dist"].values()),
    }

    with open(STATS_PATH, "w") as f:
        json.dump(out_stats, f, indent=2, ensure_ascii=False)

    # 
    print("total pcap packets:", n_pkts)
    print("UDP attempted frames:", out_stats["udp"]["attempted_frames_after_key"])
    print("UDP gcm_success_total:", out_stats["udp"]["gcm_success_total"])
    print("UDP gcm_success by flow:", out_stats["udp"]["gcm_success"])
    print("UDP fail by flow:", out_stats["udp"]["fail"])
    print("TCP payload segments after key:", out_stats["tcp10001"]["payload_segments_after_key"],
          "gcm_success:", out_stats["tcp10001"]["gcm_success"])
    print("TCP first4 top:", out_stats["tcp10001"]["first4_top"])
    print("hlen dist:", out_stats["hlen_distribution"])
    print("head4 00000000 share:", out_stats["head4_00000000_count"], "/", out_stats["head4_total"])
    print("written:", JSONL_PATH, STATS_PATH)


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else DEFAULT_PCAP)
