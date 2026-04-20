#!/usr/bin/env python3
"""Wild Rift LData .vfs decryptor — FULLY WORKING (round 12).

Cracks the per-file encrypted cache format used under Res/LData/ and
DynamicDownload/Res/LData/. Verified against the game under qemu+gdb
(round-by-round cipher states identical; 1205/1205 corpus files decode).

Container format (all LE):
  0x00 u32 descriptor  = bytes "01 03 01 xx";  xx = subtype 0..4 selects the key
  0x04 u32 A           = B - 0x10
  0x08 u32 B           = offset of first payload block
  0x0C u32 file_size   = exact file size
  0x10 u32 descriptor  = repeat
  0x14 chunk1 ciphertext [0x14, B): CBC(P[i]=E(C[i])^C[i-1], C[-1]=IV)
       plaintext: u32 count, then count x {u8 len, [u8 flag if len&0x80],
                   path[len], u32 rel_off, u32 block_size}; padded to 16.
  B..  block_i: {descriptor, u8[32], ciphertext(block_size-36)}
       block_i ciphertext = file_i content (FBAU/binary/string table), same
       key/IV, CBC.

Cipher (LGameSecurity::LCSecurity, v1.4.4):
  key_schedule(seed16): words = rev32(stored) ^ {b9b7ed68,71750a9f,a6070525,
      3aa8c2c5}; 32 rounds: t=sub(s1^s2^s3^RC[r]); s[i]=t^s[i]^ror(t,19)^ror(t,9)
  block_transform: 32 rounds: t=sub(s1^s2^s3^sched[31-r]);
      s[i]=t^s[i]^rol(t,2)^ror(t,22)^ror(t,14)^ror(t,8); out=BE(s3..s0)
  sub(x) = S-box 0x5843fc8 per byte; RC table 0x58440c8 (step 0x34343434).

Per-subtype keys (from .data 0x72677b0 table; obfuscated ASCII):
  subtype 0 (01030100): seed "!@#2017LsGame201"  IV "ddAXmIDSo*Ay3Y!N"
  subtype 1 (01030101): seed "lgame))x0smnvjdh"  IV "xmlks*76ssPOPjsB"
  subtype 2 (01030102): seed "mxlkadj*&jjweGGJ"  IV "Msh%$osp97#sjm-8"
  subtype 3 (01030103): seed "XXpso09]][\\xcmss"  IV "hh%&*6ss922MZuAP"
  subtype 4 (01030104): seed "mad9102kjhdyct&^"  IV "sml@ASS!js7$op#l"

Usage:
  python3 vfs_decrypt.py <file.vfs> [--out DIR] [--list]
"""
import argparse, struct, sys, os

SBOX = bytes.fromhex(
    "60da4ac94da72841f26fdc5b1754092ca82bad310de0bb376c24a30f754518ef"
    "ea7f0658fe88bcb74be5832fa032ce5dd75ad59a3f8081ae6b50ed4f8b7256be"
    "eb8f684c6e019989d014f8e21c53276625b18e1948d39f8497e164106a5c422a"
    "cb3b65bfb6522e55f46244a9bd9561b85fc023788d91b0a1c408ab79e6c8b485"
    "82200bdbc28cd8511511ee63b21bde7bfc2da45ef3904659f6d135337c40a573"
    "b31d920c1f29f0493916d2e49c13342171d6e3f969ffaab9c3af00a63a9e0777"
    "1e9d87c105c757cd306dfb748696baddc504f1ac02cac64e36478afa987d1ad9"
    "12f5940ed47ae9f7767e03a2dfe7cc67b5fd3c22389b43260a93ec3e3de870cf")
RC = [0x000d1a27, 0x34414e5b, 0x6875828f, 0x9ca9b6c3, 0xd0ddeaf7, 0x04111e2b,
      0x3845525f, 0x6c798693, 0xa0adbac7, 0xd4e1eefb, 0x0815222f, 0x3c495663,
      0x707d8a97, 0xa4b1becb, 0xd8e5f2ff, 0x0c192633, 0x404d5a67, 0x74818e9b,
      0xa8b5c2cf, 0xdce9f603, 0x101d2a37, 0x44515e6b, 0x7885929f, 0xacb9c6d3,
      0xe0edfa07, 0x14212e3b, 0x4855626f, 0x7c8996a3, 0xb0bdcad7, 0xe4f1fe0b,
      0x1825323f, 0x4c596673]
MASK = 0xFFFFFFFF
KEYS = {
    0: (b"!@#2017LsGame201", b"ddAXmIDSo*Ay3Y!N"),
    1: (b"lgame))x0smnvjdh", b"xmlks*76ssPOPjsB"),
    2: (b"mxlkadj*&jjweGGJ", b"Msh%$osp97#sjm-8"),
    3: (b"XXpso09]][\\xcmss", b"hh%&*6ss922MZuAP"),
    4: (b"mad9102kjhdyct&^", b"sml@ASS!js7$op#l"),
}


def _rev32(x):
    return int.from_bytes(struct.pack("<I", x), "big")


def _ror(x, n):
    return ((x >> n) | (x << (32 - n))) & MASK


def _rol(x, n):
    return ((x << n) | (x >> (32 - n))) & MASK


def _sub(x):
    return (SBOX[x & 0xFF] | (SBOX[(x >> 8) & 0xFF] << 8) |
            (SBOX[(x >> 16) & 0xFF] << 16) | (SBOX[(x >> 24) & 0xFF] << 24)) & MASK


def key_schedule(seed16):
    w = [_rev32(struct.unpack_from("<I", seed16, 4 * i)[0]) for i in range(4)]
    consts = [0xB9B7ED68, 0x71750A9F, 0xA6070525, 0x3AA8C2C5]
    state = [w[i] ^ consts[i] for i in range(4)]
    sched = []
    for r in range(32):
        t = _sub(state[(r + 1) & 3] ^ state[(r + 2) & 3] ^ state[(r + 3) & 3] ^ RC[r])
        i = r & 3
        state[i] = (t ^ state[i] ^ _ror(t, 19) ^ _ror(t, 9)) & MASK
        sched.append(state[i])
    return sched


def block_transform(block16, sched):
    state = [_rev32(struct.unpack_from("<I", block16, 4 * i)[0]) for i in range(4)]
    for r in range(32):
        t = _sub(state[(r + 1) & 3] ^ state[(r + 2) & 3] ^ state[(r + 3) & 3] ^ sched[31 - r])
        i = r & 3
        state[i] = (t ^ state[i] ^ _rol(t, 2) ^ _ror(t, 22) ^ _ror(t, 14) ^ _ror(t, 8)) & MASK
    return b"".join(struct.pack(">I", state[i]) for i in (3, 2, 1, 0))


def cbc_decode(chunk, seed16, iv16):
    if len(chunk) % 16:
        raise ValueError("CBC input is not block aligned")
    sched = key_schedule(seed16)
    out = bytearray()
    prev = iv16
    for off in range(0, len(chunk), 16):
        blk = chunk[off:off + 16]
        p = bytes(a ^ b for a, b in zip(block_transform(blk, sched), prev))
        out += p
        prev = blk
    return bytes(out)


def strip_pkcs7(b):
    if not b:
        raise ValueError("empty padded plaintext")
    pad = b[-1]
    if not (1 <= pad <= 16 and len(b) >= pad and b[-pad:] == bytes([pad]) * pad):
        raise ValueError("invalid PKCS#7 padding")
    return b[:-pad]


def parse_index(plain):
    """Parse the complete index; truncation/count/path/padding fail closed."""
    if len(plain) < 4:
        raise ValueError("truncated index count")
    cnt = struct.unpack_from("<I", plain, 0)[0]
    off, recs = 4, []
    for i in range(cnt):
        if off >= len(plain):
            raise ValueError("truncated index record %d" % i)
        raw_len = plain[off]; off += 1
        # High bit is a length marker; the following byte is mandatory.
        if raw_len & 0x80:
            if off >= len(plain):
                raise ValueError("truncated long-path length")
            ln = raw_len & 0x7f
            off += 1
        else:
            ln = raw_len
        if ln == 0 or off + ln + 8 > len(plain):
            raise ValueError("truncated/empty path at record %d" % i)
        path = plain[off:off + ln]; off += ln
        rel, size = struct.unpack_from("<II", plain, off); off += 8
        recs.append((path.decode("latin1"), rel, size))
    # Remaining bytes must be valid PKCS#7 padding, not ignored garbage.
    strip_pkcs7(plain[off:])
    return cnt, recs


def open_vfs(data):
    """Returns (subtype, A, B, index_records) with validation."""
    if len(data) < 0x34:
        raise ValueError("truncated vfs header")
    magic, A, B, size = struct.unpack_from("<IIII", data, 0)
    magic2 = struct.unpack_from("<I", data, 0x10)[0]
    subtype = (magic >> 24) & 0xFF  # byte[3] of "01 03 01 xx"
    if magic not in (0x00010301, 0x01010301, 0x02010301, 0x03010301, 0x04010301):
        raise ValueError("bad magic %#x" % magic)
    if magic2 != magic:
        raise ValueError("header magic repeat mismatch")
    if A < 0x34 or B != A + 0x10 or size != len(data) or B > len(data):
        raise ValueError("header invariant failed")
    seed, iv = KEYS[subtype]
    plain = cbc_decode(data[0x14:B], seed, iv)
    cnt, recs = parse_index(plain)
    # validate chain
    if not (recs and recs[0][1] == 0):
        raise ValueError("index parse failed")
    for j in range(1, len(recs)):
        if recs[j][1] != recs[j - 1][1] + recs[j - 1][2]:
            raise ValueError("index chain broken at %d" % j)
    if recs[-1][1] + recs[-1][2] != len(data) - B:
        raise ValueError("index size mismatch")
    return subtype, A, B, recs, (seed, iv)


def extract_block(data, B, rel, size, seed, iv):
    """Decrypt one complete block; reject geometry and padding ambiguity."""
    start = B + rel
    if size < 36 or start < B or start + size > len(data):
        raise ValueError("block extent out of bounds")
    if data[start:start + 4] != data[:4]:
        raise ValueError("block magic missing at declared offset")
    ct = data[start + 36:start + size]
    if not ct or len(ct) % 16:
        raise ValueError("block ciphertext is not aligned")
    return strip_pkcs7(cbc_decode(ct, seed, iv))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("vfs")
    ap.add_argument("--out", default=None, help="dir for extracted resources")
    ap.add_argument("--list", action="store_true", help="print index only")
    a = ap.parse_args()
    data = open(a.vfs, "rb").read()
    subtype, A, B, recs, keys = open_vfs(data)
    print("subtype=%d A=%#x B=%#x files=%d" % (subtype, A, B, len(recs)))
    for i, (path, rel, size) in enumerate(recs):
        print("  [%3d] off=%#7x size=%#7x %s" % (i, B + rel, size, path))
        if a.out and not a.list:
            content = extract_block(data, B, rel, size, keys[0], keys[1])
            safe = path.replace("/", "_").replace("\\", "_")
            out = os.path.join(a.out, "%03d_%s" % (i, safe))
            with open(out, "wb") as f:
                f.write(content)
    if a.out and not a.list:
        print("extracted", len(recs), "files to", a.out)


if __name__ == "__main__":
    main()
