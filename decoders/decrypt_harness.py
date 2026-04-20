#!/usr/bin/env python3
"""decrypt_harness.py — empirical decryptor for Wild Rift game-content samples.

Targets (all read-only):
  * cures.ifs.res  : HET data (0x563A..0x6446), BET data (0x6463..0x1296E),
                     Region B (0x13FC7..0x8AB49)   [+ filelistcheck.res control]
  * LData *.vfs    : payload at candidate offsets after the 010301xx header
  * FBAU *.bytes   : encrypted head after the 8-byte 'FBAU' header

Candidates: single-byte XOR, multi-byte XOR (header/name-derived keys),
AES-128/192/256 ECB/CBC/CTR (key+IV candidates incl. 16B hash@0x34, md5 names),
XXTEA, RC4. Scoring: printable ratio + known-marker presence (TDR magic 0x02D6,
'LuaS', 'star_res|', 'apollo', '.vfs'/'.res'/'.bytes', 'assets/abpack', md5-hex).

Usage:  python3 decrypt_harness.py            # run full sweep
        python3 decrypt_harness.py --extra-keys extra.json   # add key candidates
Output: decrypted-samples/<name>.<algo>.bin   (only strong hits saved)
        decrypt_results.json                  (per-sample, per-candidate table)
"""
import argparse, glob, hashlib, json, math, os, re, struct, sys, time

OUT_DIR = os.path.dirname(os.path.abspath(__file__))
SAVE_DIR = os.path.join(OUT_DIR, "decrypted-samples")
os.makedirs(SAVE_DIR, exist_ok=True)

# ----------------------------------------------------------------------------
# Sample sources (read-only)
# ----------------------------------------------------------------------------
# baseline: corpus/basic-data/external-device-20260812 (resource 7.2.46.104, 2026-08-12)
# OLD DynamicDownload/Res/LData ↔ NEW DynDL-LData (20260812 corpus layout)
BASE = "<research-workspace>/corpus/" \
       "basic-data/external-device-20260812/files"
_cures_glob = sorted(glob.glob(os.path.join(BASE, "Res/*_cures.ifs.res")))
CURES = _cures_glob[0] if _cures_glob else os.path.join(BASE, "Res/1690133797_3101_7.2.46.104_20260805073302_386511959_cures.ifs.res")
FLC   = os.path.join(BASE, "Res/filelistcheck.res")
LDATA_DIR = os.path.join(BASE, "DynDL-LData")
LDATA_RES = os.path.join(BASE, "Res/LData/4069fcb0d5f7d769ad08e39d9e179d4f.vfs")
FBAU1 = os.path.join(BASE, "Res/14c4d301f81fe4392092c263bdd36804.bytes")
FBAU2 = os.path.join(BASE, "Res/2e57c9fb97ba716df7e80d40d6592006.bytes")

# ----------------------------------------------------------------------------
# Region definitions
# ----------------------------------------------------------------------------
def cures_regions():
    c = open(CURES, "rb").read()
    return {
        "cures_HET_data":   c[0x563A:0x6446],
        "cures_BET_data":   c[0x6463:0x1296E],
        "cures_RegionB":    c[0x13FC7:0x8AB17],
    }

def flc_regions():
    c = open(FLC, "rb").read()
    return {
        "flc_HET_data":     c[0x5621:0x570D],   # 0x5609+12 .. +0xE5C
        "flc_BET_data":     c[0x6499:0x1294B],  # 0x6481+12 .. +0xC4B2
    }

def vfs_regions():
    """Try payload offsets per the assignment (0x18/0x1C/0x20) plus structural
    candidates (0x14 right after header, 0x5E8 after first IV+magic)."""
    files = ["0033fe362746b515063b7f1e1eab4378.vfs",
             "010ab74b2dcdd906a7099c2ffeabeeea.vfs",   # magic 01030104 variant
             os.path.basename(LDATA_RES)]
    out = {}
    for f in files:
        p = os.path.join(LDATA_DIR, f) if not os.path.isabs(f) else f
        if not os.path.exists(p):
            continue
        d = open(p, "rb").read()
        # header fields: magic u32, A u32, B u32, size u32
        A, B = struct.unpack_from("<II", d, 4)
        cand_offs = [0x10, 0x14, 0x18, 0x1C, 0x20, A, B, B + 4]
        for off in sorted(set(cand_offs)):
            if 0 <= off < len(d) - 256:
                out[f"vfs:{os.path.basename(f)}@{off:#x}"] = d[off:off + 65536]
    return out

def fbau_regions():
    out = {}
    for f, start in [(FBAU1, 427), (FBAU2, 1202)]:
        d = open(f, "rb").read()
        name = os.path.basename(f)
        out[f"fbau:{name}:head8-{start}"] = d[8:start]
        # also try whole file minus trailer none
        out[f"fbau:{name}:full"] = d
    return out

# ----------------------------------------------------------------------------
# Key / IV candidate derivation
# ----------------------------------------------------------------------------
def pad16(b):
    return (b + b"\x00" * 16)[:16]

def pad32(b):
    return (b + b"\x00" * 32)[:32]

def md5raw(b):
    return hashlib.md5(b).digest()

def sha256raw(b):
    return hashlib.sha256(b).digest()

def build_key_candidates():
    """returns dict name -> bytes (raw key material)."""
    c = open(CURES, "rb").read()
    flc = open(FLC, "rb").read()
    h34 = c[0x34:0x44]                       # 16B hash-like field in header
    h34_hex = h34.hex().encode()
    flc_h34 = flc[0x34:0x44]

    vfs_1 = open(os.path.join(LDATA_DIR, "0033fe362746b515063b7f1e1eab4378.vfs"), "rb").read()
    vfs_A, vfs_B = struct.unpack_from("<II", vfs_1, 4)
    vfs_blob = vfs_1[vfs_A:vfs_A + 16]       # 16B blob before first chunk magic
    vfs_blob2 = vfs_1[vfs_B:vfs_B + 16]      # bytes right after first chunk magic

    names = {
        "cures_filename": "1690133797_3101_7.2.20.45_20260710185914_1796376366_cures.ifs.res",
        "cures_ifs": "cures.ifs",
        "cures": "cures",
        "filelistcheck": "filelistcheck.res",
        "nifs": "nifs",
        "eifs": "eifs",
        "fbau1_name": "14c4d301f81fe4392092c263bdd36804.bytes",
        "fbau2_name": "2e57c9fb97ba716df7e80d40d6592006.bytes",
        "vfs1_name": "0033fe362746b515063b7f1e1eab4378.vfs",
        "vfs_res_name": "4069fcb0d5f7d769ad08e39d9e179d4f.vfs",
        "star_res": "star_res",
        "apollo": "apollo",
        "puffer": "puffer",
    }

    keys = {}
    keys["hash34"] = h34
    keys["hash34_hexstr"] = h34_hex
    keys["flc_hash34"] = flc_h34
    keys["vfs_A_blob"] = vfs_blob
    keys["vfs_B_blob"] = vfs_blob2
    # vfs K block [0x14:0x34] and its halves / derivations
    vfs_K = vfs_1[0x14:0x34]
    keys["vfs_K"] = vfs_K
    keys["vfs_K_h1"] = vfs_K[:16]
    keys["vfs_K_h2"] = vfs_K[16:]
    keys["md5(vfs_K)"] = md5raw(vfs_K)
    keys["sha256(vfs_K)"] = sha256raw(vfs_K)
    keys["md5(vfs_K_h1)"] = md5raw(vfs_K[:16])
    keys["md5(vfs_K_h2)"] = md5raw(vfs_K[16:])
    # vfs per-block K'[0:16] group key (constant across blocks of a file;
    # differs from K[0:16]/K[16:32]) and first block's per-block nonce
    blk = vfs_1[vfs_B + 4:vfs_B + 36]
    keys["vfs_blk_gk"] = blk[:16]
    keys["vfs_blk_nonce"] = blk[16:]
    keys["md5(vfs_blk_gk)"] = md5raw(blk[:16])
    keys["sha256(vfs_blk_gk)"] = sha256raw(blk[:16])
    # header-size-field derivations
    for label, f in [("cures", c), ("flc", flc)]:
        hdr = f[:0xDC]
        szs = struct.pack("<IIIIII", *[int.from_bytes(hdr[i:i+4], "little")
                                       for i in (0x18, 0x6C, 0x74, 0x7C, 0x8C, 0xA4)])
        keys[f"{label}_sizefields"] = szs
        keys[f"md5({label}_sizefields)"] = md5raw(szs)
        keys[f"md5({label}_hdr)"] = md5raw(hdr)
        keys[f"sha256({label}_hdr)"] = sha256raw(hdr)
    keys["md5_master_ifs"] = bytes.fromhex("8a9d076337fa329cd64fdafc565301d5")
    keys["verinfo_md5_2"] = bytes.fromhex("9cf08b256808c6fc6478a1c67787acf9")
    keys["verinfo_md5_3"] = bytes.fromhex("22c6bcaf129233fb96f815b2665751af")
    keys["verinfo_md5_1"] = bytes.fromhex("403cdb57a87f6394b13c73a6c051f4da")
    # hash34 as an md5 of its own hex? plausible derivations:
    keys["md5(hash34)"] = md5raw(h34)
    keys["sha256(hash34)"] = sha256raw(h34)
    keys["md5(file_md5)"] = md5raw(md5raw(c))       # md5 of file's own md5
    keys["md5(master_ifs_raw)"] = md5raw(bytes.fromhex("8a9d076337fa329cd64fdafc565301d5"))
    for n, s in names.items():
        raw = s.encode()
        keys[n] = raw
        keys[f"md5({n})"] = md5raw(raw)
        keys[f"sha256({n})"] = sha256raw(raw)
    # constants
    for s in ("0123456789abcdef", "abcdefghijklmnopqrstuvwxyz", "WildRift",
              "com.riotgames.league.wildrift", "LOLM", "league", "WR", "cures_data",
              "gcloud", "GCloud", "Tencent", "apollo_cures", "cures_v2", "nifs_key"):
        keys[s] = s.encode()
    return keys

# ----------------------------------------------------------------------------
# Cipher primitives
# ----------------------------------------------------------------------------
from cryptography.hazmat.primitives.ciphers import Cipher as _C, algorithms as _A, modes as _M

def aes(mode, key, data, iv=None, ctr_iv=None):
    """mode in {'ecb','cbc','ctr'}; returns decrypted bytes (len floor to block)."""
    alg = _A.AES(key)
    if mode == "ecb":
        ci = _C(alg, _M.ECB())
    elif mode == "cbc":
        ci = _C(alg, _M.CBC(iv))
    else:
        ci = _C(alg, _M.CTR(ctr_iv))
    dec = ci.decryptor()
    n = len(data) - (len(data) % 16) if mode != "ctr" else len(data)
    return dec.update(data[:n]) + dec.finalize()

def rc4(key, data):
    S = list(range(256))
    j = 0
    for i in range(256):
        j = (j + S[i] + key[i % len(key)]) & 0xFF
        S[i], S[j] = S[j], S[i]
    out = bytearray(len(data))
    i = j = 0
    for k in range(len(data)):
        i = (i + 1) & 0xFF
        j = (j + S[i]) & 0xFF
        S[i], S[j] = S[j], S[i]
        out[k] = data[k] ^ S[(S[i] + S[j]) & 0xFF]
    return bytes(out)

def xxtea_decrypt(data, key):
    """XXTEA decrypt, little-endian, standard (needham-wheeler) variant."""
    if len(data) < 8:
        return None
    n = len(data) // 4
    v = list(struct.unpack("<%dI" % n, data[:n * 4]))
    k = list(struct.unpack("<4I", (key + b"\x00" * 16)[:16]))
    if n < 2:
        return None
    DELTA = 0x9E3779B9
    rounds = 6 + 52 // n
    y = v[0]
    z = v[n - 1]
    q = (rounds * DELTA) & 0xFFFFFFFF
    MX = lambda: (((z >> 5) ^ (y << 2)) + ((y >> 3) ^ (z << 4))) ^ ((q ^ y) + (k[(q >> 2) & 3] ^ z)) & 0xFFFFFFFF
    while q != 0:
        e = (q >> 2) & 3
        for p in range(n - 1, 0, -1):
            z = v[p - 1]
            y = v[p] = (v[p] - MX()) & 0xFFFFFFFF
        z = v[n - 1]
        y = v[0] = (v[0] - MX()) & 0xFFFFFFFF
        q = (q - DELTA) & 0xFFFFFFFF
    return struct.pack("<%dI" % n, *v)

def xor_single(data, b):
    return bytes(x ^ b for x in data)

def xor_multi(data, key):
    if not key:
        return data
    return bytes(x ^ key[i % len(key)] for i, x in enumerate(data))

# ----------------------------------------------------------------------------
# Scoring
# ----------------------------------------------------------------------------
MARKERS = [   # per-occurrence weights, each capped at 4 occurrences in sample
    (b"star_res", 0.4),
    (b"apollo", 0.25),
    (b"assets/abpack", 0.4),
    (b"LData", 0.15), (b"LVisi", 0.15), (b"Audio", 0.15),
    (b".vfs", 0.15), (b".res", 0.15), (b".bytes", 0.15),
    (b"nifs", 0.1), (b"cures", 0.1), (b"filelist", 0.25), (b"puffer", 0.1),
    (b"PreloadVariantsConfig", 0.4), (b"shaderNameDic", 0.3),
    (b"  \"", 0.05), (b"{", 0.01),
]
MD5RE = re.compile(rb"(?<![0-9a-f])[0-9a-f]{32}(?![0-9a-f])")

def score(data, first_n=4096):
    """Return (total, details). Text-like decryptions score high via printable +
    word density; binary formats score via start-of-data magic (TDR/Lua/JSON/zlib).
    Random ciphertext stays < ~1.0."""
    d = data[:first_n]
    if not d:
        return 0.0, {}
    printable = sum(1 for b in d if b in (9, 10, 13) or 0x20 <= b <= 0x7E)
    p_ratio = printable / len(d)
    runs = re.findall(rb"[A-Za-z0-9_./\\-]{4,}", d)
    word_ratio = sum(len(r) for r in runs) / len(d)
    marker_hits = {}
    mscore = 0.0
    for pat, w in MARKERS:
        cnt = d.count(pat)
        if cnt:
            marker_hits[pat.decode(errors="replace")] = cnt
            mscore += w * min(cnt, 4)
    # start-of-data magics (positional; random first-byte hits must not trigger)
    if d[:2] == b"\xd6\x02" and len(d) >= 8 and d[4] in (0x20, 0x40):
        mscore += 10.0; marker_hits["TDRmagic@0"] = 1
    if d[:4] == b"\x1bLua":
        mscore += 8.0; marker_hits["LuaBytecode@0"] = 1
    if d[:1] == b"{":
        mscore += 0.5; marker_hits["JSON@0"] = 1
    if d[:4] == b"PK\x03\x04":
        mscore += 5.0; marker_hits["ZIP@0"] = 1
    if d[:2] == b"\x1f\x8b":
        mscore += 4.0; marker_hits["gzip@0"] = 1
    if d[:2] == b"x\x9c" or d[:2] == b"x\xda" or d[:2] == b"x\x01":
        mscore += 3.5; marker_hits["zlib@0"] = 1
    if d[:4] == b"\x28\xb5\x2f\xfd":
        mscore += 4.0; marker_hits["zstd@0"] = 1
    md5cnt = len(MD5RE.findall(d))
    if md5cnt:
        marker_hits["md5hex32"] = md5cnt
        mscore += min(md5cnt, 10) * 0.5
    total = p_ratio + 0.5 * word_ratio + mscore
    return total, {"p_ratio": round(p_ratio, 4), "word_ratio": round(word_ratio, 4),
                   "markers": marker_hits, "score": round(total, 3)}

def is_hit(det):
    """True when the candidate output plausibly decrypted."""
    if det["score"] >= 3.0 and (det.get("markers", {}).get("TDRmagic@0")
                                or det.get("markers", {}).get("LuaBytecode@0")
                                or det.get("markers", {}).get("ZIP@0")
                                or det.get("markers", {}).get("gzip@0")
                                or det.get("markers", {}).get("zstd@0")
                                or det.get("markers", {}).get("zlib@0")):
        return True
    if det["p_ratio"] > 0.55 and det["word_ratio"] > 0.10:
        return True                              # text-like
    if det["p_ratio"] > 0.45 and det["word_ratio"] > 0.18:
        return True                              # strong word density
    if det["markers"].get("md5hex32", 0) >= 4:
        return True                              # md5 name table
    return False

# ----------------------------------------------------------------------------
# Candidate enumeration
# ----------------------------------------------------------------------------
def cipher_candidates(keys, region_name):
    """yield (label, fn, keybytes) — fn(data)->bytes."""
    out = []
    for b in range(256):
        out.append((f"xor1_{b:02x}", lambda d, b=b: xor_single(d, b), bytes([b])))
    for kname, kb in keys.items():
        out.append((f"xorm_{kname}", lambda d, k=kb: xor_multi(d, k), kb))
    # AES key derivations: raw 16/32B where available
    aes_keys = {}
    for kname, kb in keys.items():
        if len(kb) in (16, 24, 32):
            aes_keys[f"{kname}"] = kb
        else:
            aes_keys[f"{kname}_pad16"] = pad16(kb)
            if len(kb) > 8:
                aes_keys[f"{kname}_sha256"] = sha256raw(kb)
    for kname, kb in keys.items():
        aes_keys.setdefault(f"{kname}_md5", md5raw(kb))
    for kname, kb in aes_keys.items():
        if len(kb) not in (16, 24, 32):
            kb = pad16(kb)
        for ivname, iv in [("iv0", b"\x00" * 16), ("ivkey", kb[:16]),
                           ("ivhash34", keys["hash34"]), ("ivself0", None)]:
            if iv is None:
                continue
            out.append((f"aes_ecb_{kname}", (lambda d, k=kb: aes("ecb", k, d)), kb))
            out.append((f"aes_cbc_{kname}_{ivname}", (lambda d, k=kb, v=iv: aes("cbc", k, d, iv=v)), kb))
            out.append((f"aes_ctr_{kname}_{ivname}", (lambda d, k=kb, v=iv: aes("ctr", k, d, ctr_iv=v)), kb))
    # AES with IV prefixed to the ciphertext (per-block IV pattern from res-crypto)
    for kname, kb in aes_keys.items():
        if len(kb) not in (16, 24, 32):
            kb = pad16(kb)
        out.append((f"aes_cbc_ivpre_{kname}",
                    (lambda d, k=kb: aes("cbc", k, d[16:], iv=d[:16]) if len(d) > 16 else d), kb))
        out.append((f"aes_ecb_ivpre_{kname}",
                    (lambda d, k=kb: aes("ecb", k, d[16:]) if len(d) > 16 else d), kb))
    for kname, kb in keys.items():
        out.append((f"rc4_{kname}", (lambda d, k=kb: rc4(k, d)), kb))
        out.append((f"xxtea_{kname}", (lambda d, k=kb: xxtea_decrypt(d, k) or d), kb))
    return out

# ----------------------------------------------------------------------------
# Main
# ----------------------------------------------------------------------------
def run(extra_keys=None, verbose=True):
    keys = build_key_candidates()
    if extra_keys:
        for k, v in extra_keys.items():
            keys[k] = bytes.fromhex(v) if isinstance(v, str) else v
    regions = {}
    regions.update(cures_regions())
    regions.update(flc_regions())
    regions.update(vfs_regions())
    regions.update(fbau_regions())

    results = {}
    strong = []
    t0 = time.time()
    n_cand = 0
    for rname, data in regions.items():
        if len(data) < 64:
            continue
        cands = cipher_candidates(keys, rname)
        row = []
        for label, fn, kb in cands:
            n_cand += 1
            try:
                out = fn(data[:4096])
            except Exception:
                continue
            s, det = score(out)
            if is_hit(det):
                row.append({"cand": label, "score": s, **det, "keylen": len(kb)})
        row.sort(key=lambda r: -r["score"])
        results[rname] = row[:25]
        if row:
            label, s = row[0]["cand"], row[0]["score"]
            if verbose:
                print(f"[HIT?] {rname}: {label} score={s} {row[0]['markers']}")
            # re-run on full data to save
            fn = dict((l, f) for l, f, k in cands).get(label)
            if fn:
                full = fn(data)
                fname = re.sub(r"[^A-Za-z0-9_.@-]", "_", f"{rname}__{label}").replace("__", "_")
                sp = os.path.join(SAVE_DIR, fname + ".bin")
                open(sp, "wb").write(full)
                strong.append({"region": rname, "cand": label, "score": s,
                               "saved": sp, "markers": row[0]["markers"]})
    results["_meta"] = {"n_regions": len(regions), "n_candidates": n_cand,
                        "runtime_s": round(time.time() - t0, 1),
                        "saved": strong}
    with open(os.path.join(OUT_DIR, "decrypt_results.json"), "w") as f:
        json.dump(results, f, indent=1)
    return results, strong

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--extra-keys", help="JSON {name: hexkey}")
    args = ap.parse_args()
    extra = None
    if args.extra_keys:
        extra = json.load(open(args.extra_keys))
    res, strong = run(extra)
    print("saved:", strong if strong else "none")
    for rn, row in res.items():
        if rn.startswith("_"):
            continue
        top = row[0] if row else None
        print(f"{rn:48s} top={top}")
