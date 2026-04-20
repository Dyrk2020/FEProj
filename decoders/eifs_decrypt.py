#!/usr/bin/env python3
"""puffer_res.eifs / cures.ifs.res NIFS table decryptor (round 13).

Status (2026-08-09, remediation plan 4.1): the scope of this module is the
HET/BET blocks of the NIFS (IFS) container family — NOT the whole cures
archive. Layered statement of the current cures state:

  HET/BET  : additive decrypt + verified bzip2/custom-bzip2 path
             (this module = the additive step; custom_lzma.py carries the
             verified bzip2/custom-bzip2 decode; both qemu-probe verified)
  Region B : numeric extent covered; full content transform NOT established
  IFS RSA  : signature-check code present; digest, padding, signature scope
             not closed

A successful HET/BET decode must NOT be read as "the cures archive is done".

Cipher: Tencent "additive" stream cipher in libgcloud.so
  - 0x657A6C / 0x657A08 (aligned/simple variants; verified byte-identical
    against the real code under qemu for the aligned path)
  - runtime S-box/table: 1024+ u32 words built by 0x657880 at 0xB54010;
    the cipher reads words 0x400..0x4FF (address 0xB55010), the string hash
    reads words 0x300..0x3FF. Table dumped from a qemu run into
    work/ai-cfg-recovery-2026-08-04/decoded-eifs/nifs-table-0x500.bin.

Table-block keys (verified; used when the archive's patch-list is empty):
  HET block: 0xC3AF3770
  BET block: 0xEC83B3A3
(When the patch list is populated the key is the byte-sum of that list --
 code at 0x6680FC/0x6682BC; not needed for the three samples so far.)

Verified decodes (first decrypted u32 == the block's own size field, which
the SDK validates at 0x6681E4/0x6683B8) — HET/BET blocks only:
  cures HET 0xE0D, cures BET 0xC50C, flc HET 0xE5C, flc BET 0xC4B2,
  puffer HET 0x4A7A5, puffer BET 0x34139F  -- all exact.
Scope note: these cover the HET/BET layer. Region B's full content transform
and the IFS RSA signature check are NOT closed by this module (plan 4.1).

Usage:
  python3 eifs_decrypt.py <file> <HET-offset> <HET-size> <BET-offset> <BET-size> [--out DIR]
  offsets are block-header offsets; sizes are the block data sizes (field @+8).
"""
import struct, sys, os, argparse

TABLE = None  # lazily loaded 0x500-word table

def load_table():
    global TABLE
    if TABLE is None:
        here = os.path.dirname(os.path.abspath(__file__))
        p = os.path.join(here, 'decoded-eifs', 'nifs-table-0x500.bin')
        TABLE = struct.unpack('<%dI' % 0x500, open(p, 'rb').read())
    return TABLE

def additive_crypt(data, key):
    """Symmetric Tencent additive stream cipher (libgcloud 0x657A6C aligned
    path). Table words 0x400..0x4FF are indexed by key&0xFF."""
    T = load_table()
    out = bytearray(data)
    n = len(data)
    acc = 0xEEEEEEEE
    key &= 0xFFFFFFFF
    for i in range(0, n - (n % 4), 4):
        v = struct.unpack_from('<I', out, i)[0]
        acc = (acc + T[0x400 + ((key & 0xFF) % 256)]) & 0xFFFFFFFF
        o = (acc + key) ^ v
        struct.pack_into('<I', out, i, o & 0xFFFFFFFF)
        key = ((0x11111111 + ((~key) << 21)) | (key >> 11)) & 0xFFFFFFFF
        acc = ((acc + 3) + (acc << 5) + o) & 0xFFFFFFFF
    return bytes(out)

def name_hash(name, arg=0x300):
    """String hash used for per-file piece keys (libgcloud 0x657804).
    Table words 0x300..0x3FF are indexed by (toupper(char) + arg).
    NOTE: the real code calls toupper() on every byte (verified under qemu,
    probe-hash.c; see piece_key.py). Round-13 omitted it — fixed here."""
    T = load_table()
    if isinstance(name, str):
        name = name.encode()
    h = 0x7FED7FED
    acc = 0xEEEEEEEE
    for c in name:
        if 0x61 <= c <= 0x7A:
            c -= 0x20
        h = (acc + h) & 0xFFFFFFFF
        acc = (acc + (acc << 5) + 3 + c) & 0xFFFFFFFF
        h = (h ^ T[(c + arg) % 0x500]) & 0xFFFFFFFF
        acc = (acc + h) & 0xFFFFFFFF
    return h

HET_KEY = 0xC3AF3770
BET_KEY = 0xEC83B3A3

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('file')
    ap.add_argument('het_off', type=lambda s: int(s, 0))
    ap.add_argument('het_size', type=lambda s: int(s, 0))
    ap.add_argument('bet_off', type=lambda s: int(s, 0))
    ap.add_argument('bet_size', type=lambda s: int(s, 0))
    ap.add_argument('--out', default='.')
    a = ap.parse_args()
    d = open(a.file, 'rb').read()
    for tag, off, size, key in [('HET', a.het_off, a.het_size, HET_KEY),
                                ('BET', a.bet_off, a.bet_size, BET_KEY)]:
        data = d[off + 0xC : off + 0xC + size]
        pt = additive_crypt(data, key)
        w0 = struct.unpack_from('<I', pt, 0)[0]
        print('%s: %d bytes, first-u32 %#x (size field %#x, match=%s)'
              % (tag, len(pt), w0, size, w0 == size))
        open(os.path.join(a.out, '%s.decrypted.bin' % tag), 'wb').write(pt)
    print('Note (plan 4.1): this is the HET/BET layer only. Region B full content')
    print('transform and the IFS RSA signature check are not closed by this script.')

if __name__ == '__main__':
    main()
