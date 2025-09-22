#!/usr/bin/env python3
"""global-metadata.dat (FMN! v31, Riot-modified) — ChaCha20-variant bulk decrypt attempt.

Slice: metadata-bulk-20260814. Inputs:
  corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat
    (58,401,572 B, sha256 5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d)
  corpus/native-elf/decompressed-arm64/libil2cpp.so (chacha const/key + XOR key tables)

ChaCha20 variant (cracked in work/il2cpp-ida-20260814/METADATA-CHAIN.md §2/§4):
  * 20 rounds, standard quarter rounds
  * 16B custom constant @ libil2cpp 0x1615550 (replaces 'expand 32-byte k')
  * 32B key @ libil2cpp 0xCDB7AB4
  * state = constant(16B) || key(32B) || counter(8B, LE) || nonce(8B = key[:8])
    -> words 12-13 = 64-bit counter, words 14-15 = nonce
  * 64B per block, counter +1 per block

Established facts (this slice, all verified):
  * CTR decrypts header pairs 0-3 only: file 0x08..0x27 (32B) ^ keystream(block 0)
    == {0xF45970,0x21F0},{0x196844,0x100},{0x6F9D8,0x20621C},{0xD3F754,0x6F8D8}.
    Magic 'FMN!' @0x00 and pairs 4-30 @0x28.. are plaintext in the shipped file.
  * The 15.5MB high-entropy region 0x70000..0xF45000 is NOT CTR-encrypted with this
    key: stream decrypt (counter=offset//64 and alternatives) raises entropy and hits
    zero anchors. Real mechanism = per-table 256B XOR (index-dependent key offset):
      - stringLiteral pool 0x6F9D8..0x20621C: out[i]=raw[i]^ks[((di*len+idx)&0xF)<<4 + i]
        ks = libil2cpp 0x1E42BA8 (256B)
      - name table 0x20621C..0xF45970: out[i]=raw[i]^ks[(((0xD3F754*pos)%0x11D53 & 0xF)<<4)+i]
        ks = libil2cpp 0xCDAF980 (256B)

Usage:
  python3 decrypt_metadata.py verify-header      # reproduce pairs 0-3, exit code
  python3 decrypt_metadata.py attempt-region     # ChaCha20 stream attempt + entropy/anchor stats
  python3 decrypt_metadata.py decode-pool        # XOR-decode stringLiteral pool -> artifact
  python3 decrypt_metadata.py decode-nametable   # XOR-decode name table walk -> artifact
  python3 decrypt_metadata.py write-header       # write decrypted header artifact
  python3 decrypt_metadata.py all                # verify-header + attempt-region + write-header
                                                  #   + decode-pool + decode-nametable + cross-checks
"""
from __future__ import annotations

import argparse
import json
import math
import re
import struct
import sys
import time
from collections import Counter
from pathlib import Path

ROOT = Path("<research-workspace>")
META = ROOT / "corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat"
SO = ROOT / "corpus/native-elf/decompressed-arm64/libil2cpp.so"
OUT = Path(__file__).resolve().parent

EXPECTED_SHA256 = "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"

# --- ChaCha20 variant parameters (METADATA-CHAIN.md §2) ---
CHACHA_CONST = 0x1615550          # 16B custom constant (file offset == VA, code region)
CHACHA_KEY = 0xCDAFAB4            # 32B key (file offset = VA - 0x8000)
PAIRS_CT = 0x08                   # ciphertext extent of pairs 0-3 (32B)
PAIRS_EXPECTED = (0xF45970, 0x21F0, 0x196844, 0x100, 0x6F9D8, 0x20621C, 0xD3F754, 0x6F8D8)

# --- per-table XOR mechanisms (work/il2cpp-readable-20260814) ---
LIT_TAB, LIT_TAB_SIZE = 0x100, 0x6F8D8     # stringLiteral table (57,115 x {len,dataIndex})
LIT_POOL = 0x6F9D8                          # stringLiteral data base
LIT_POOL_END = 0x20621C                      # pool usage end == name table base
LIT_KS_OFF = 0x1E42BA8                       # .so rodata 256B
STR_BASE, STR_MULT, STR_MOD = 0x20621C, 0xD3F754, 0x11D53
NAME_KS_OFF = 0xCDAF980                      # .so rodata 256B
NAME_END = 0xF45970                          # events table start
REGION = (0x70000, 0xF45000)                 # high-entropy region under test

_MASK = 0xFFFFFFFF
def _rotl(x: int, n: int) -> int:
    return ((x << n) | (x >> (32 - n))) & _MASK

def _qr(x: list, a: int, b: int, c: int, d: int) -> None:
    x[a] = (x[a] + x[b]) & _MASK; x[d] ^= x[a]; x[d] = _rotl(x[d], 16)
    x[c] = (x[c] + x[d]) & _MASK; x[b] ^= x[c]; x[b] = _rotl(x[b], 12)
    x[a] = (x[a] + x[b]) & _MASK; x[d] ^= x[a]; x[d] = _rotl(x[d], 8)
    x[c] = (x[c] + x[d]) & _MASK; x[b] ^= x[c]; x[b] = _rotl(x[b], 7)

class ChaChaVariant:
    """ChaCha20 with custom 16B constant, 64-bit counter, nonce=key[:8]."""
    def __init__(self, data: bytes, so: bytes):
        self.const = so[CHACHA_CONST:CHACHA_CONST + 16]
        self.key = so[CHACHA_KEY:CHACHA_KEY + 32]
        self.nonce = self.key[:8]
        self.cw = struct.unpack("<4I", self.const)
        self.kw = struct.unpack("<8I", self.key)
        self.nw = struct.unpack("<2I", self.nonce)
        self.data = data

    def block(self, counter: int) -> bytes:
        x = [self.cw[0], self.cw[1], self.cw[2], self.cw[3],
             self.kw[0], self.kw[1], self.kw[2], self.kw[3],
             self.kw[4], self.kw[5], self.kw[6], self.kw[7],
             counter & _MASK, (counter >> 32) & _MASK,
             self.nw[0], self.nw[1]]
        w = x[:]
        for _ in range(10):
            _qr(w, 0, 4, 8, 12); _qr(w, 1, 5, 9, 13); _qr(w, 2, 6, 10, 14); _qr(w, 3, 7, 11, 15)
            _qr(w, 0, 5, 10, 15); _qr(w, 1, 6, 11, 12); _qr(w, 2, 7, 8, 13); _qr(w, 3, 4, 9, 14)
        return struct.pack("<16I", *[(w[i] + x[i]) & _MASK for i in range(16)])

    def keystream(self, counter_start: int, nblocks: int) -> bytes:
        return b"".join(self.block(counter_start + i) for i in range(nblocks))

    def decrypt(self, offset: int, size: int, counter_start: int | None = None) -> bytes:
        """Stream-decrypt data[offset:offset+size]; counter for file offset X =
        counter_start + (X - offset)//64 (default: counter_start = offset//64, i.e. global stream)."""
        if counter_start is None:
            counter_start = offset // 64
        nblocks = (size + 63) // 64
        ks = self.keystream(counter_start, nblocks)
        return bytes(a ^ b for a, b in zip(self.data[offset:offset + size], ks))

def entropy(b: bytes) -> float:
    if not b:
        return 0.0
    c = Counter(b)
    n = len(b)
    return -sum((v / n) * math.log2(v / n) for v in c.values())

def printable_ratio(b: bytes) -> float:
    if not b:
        return 0.0
    return sum(1 for x in b if 0x20 <= x <= 0x7E) / len(b)

_ASCII_RUN8 = re.compile(rb"[\x20-\x7e]{8,}")

def ascii_runs(b: bytes, minlen: int = 8) -> list[str]:
    return [r.decode("ascii") for r in _ASCII_RUN8.findall(b)][:10]

def load() -> tuple[bytes, bytes]:
    d = META.read_bytes()
    assert d[:4] == b"FMN!", "bad magic"
    assert len(d) == 58401572
    import hashlib
    assert hashlib.sha256(d).hexdigest() == EXPECTED_SHA256, "input hash mismatch"
    so = SO.read_bytes()
    return d, so

# ---------------------------------------------------------------- commands
def cmd_verify_header(d: bytes, c: ChaChaVariant) -> int:
    ct = d[PAIRS_CT:PAIRS_CT + 0x20]
    pt = bytes(a ^ b for a, b in zip(ct, c.block(0)[:0x20]))
    vals = struct.unpack("<8I", pt)
    ok = vals == PAIRS_EXPECTED
    print(f"verify-header: keystream(block0)[:16]={c.block(0)[:16].hex()}")
    print(f"verify-header: pairs0-3 decrypted = {[hex(v) for v in vals]}")
    print(f"verify-header: expected           = {[hex(v) for v in PAIRS_EXPECTED]}")
    print(f"verify-header: MATCH = {ok}")
    # pairs 4-30 shipped plaintext check
    p4 = struct.unpack("<2I", d[0x28:0x30])
    print(f"verify-header: shipped pair4 (plaintext, properties) = {[hex(v) for v in p4]}")
    return 0 if ok else 1

def cmd_attempt_region(d: bytes, c: ChaChaVariant) -> int:
    r0, r1 = REGION
    reg = d[r0:r1]
    nblocks = (r1 - r0) // 64
    print(f"attempt-region: {hex(r0)}..{hex(r1)} = {len(reg)} B, {nblocks} blocks, counter=offset//64")
    t0 = time.time()
    ks = c.keystream(r0 // 64, nblocks)
    print(f"attempt-region: keystream gen {time.time() - t0:.1f}s")
    dec = bytearray(reg)
    for i in range(0, len(reg), 1 << 20):
        dec[i:i + (1 << 20)] = bytes(a ^ b for a, b in zip(reg[i:i + (1 << 20)], ks[i:i + (1 << 20)]))
    dec = bytes(dec)
    print(f"attempt-region: raw entropy={entropy(reg):.4f} ascii8+runs={len(_ASCII_RUN8.findall(reg))}")
    print(f"attempt-region: dec entropy={entropy(dec):.4f} ascii8+runs={len(_ASCII_RUN8.findall(dec))}")
    anchors = [b"BattleShopTips", b"ShopTips", b"Assembly-CSharp", b"<Module>", b"getmetatable", b"System.String"]
    for a in anchors:
        print(f"attempt-region: anchor {a}: raw={reg.count(a)} dec={dec.count(a)}")
    # alternative counter mappings (region/pool/nametable-local streams) - probes
    for base, label in ((r0, "region-local"), (LIT_POOL, "pool-local"), (STR_BASE, "nametable-local")):
        off = r0
        ks_p = c.keystream((off - base) // 64, 4)
        pt = bytes(a ^ b for a, b in zip(reg[:256], ks_p))
        print(f"attempt-region: {label} base 0x{base:x} @0x{r0:x}: ent={entropy(pt):.3f} pr={printable_ratio(pt):.2f}")
    return 0

def cmd_write_header(d: bytes, c: ChaChaVariant) -> int:
    head = bytearray(d[0x00:0x100])
    pt = bytes(a ^ b for a, b in zip(head[PAIRS_CT:PAIRS_CT + 0x20], c.block(0)[:0x20]))
    head[PAIRS_CT:PAIRS_CT + 0x20] = pt
    p = OUT / "metadata-decrypted-header.bin"
    p.write_bytes(bytes(head))
    print(f"write-header: {p} ({len(head)} B)")
    import hashlib
    print(f"write-header: sha256 {hashlib.sha256(bytes(head)).hexdigest()}")
    return 0

def cmd_decode_pool(d: bytes, so: bytes) -> int:
    lit_ks = so[LIT_KS_OFF:LIT_KS_OFF + 256]
    n = LIT_TAB_SIZE // 8
    entries = [struct.unpack_from("<II", d, LIT_TAB + i * 8) for i in range(n)]
    decoded = []
    for i, (ln, di) in enumerate(entries):
        if ln == 0:
            decoded.append(b"")
            continue
        raw = d[LIT_POOL + di:LIT_POOL + di + ln]
        start = ((di * ln + i) & 0xF) << 4
        decoded.append(bytes(b ^ lit_ks[(start + j) & 0xFF] for j, b in enumerate(raw)))
    img = bytearray(d[LIT_POOL:LIT_POOL_END])
    for i, (ln, di) in enumerate(entries):
        if ln == 0:
            continue
        img[di:di + ln] = decoded[i]
    used = max((di + ln for ln, di in entries), default=0)  # relative di-space extent
    tail = LIT_POOL + used
    if tail < LIT_POOL_END:
        print(f"decode-pool: span 0x6F9D8..0x{LIT_POOL_END:x}; tail 0x{tail:x}..0x{LIT_POOL_END:x}"
              f" unreferenced by string table, content NOT_ESTABLISHED")
        img = img[:used]
    p = OUT / "metadata-decrypted-stringpool.bin"
    p.write_bytes(bytes(img))
    print(f"decode-pool: {len(img)} B (0x6F9D8..0x{0x6F9D8+used:x}, full span) -> {p}")
    print(f"decode-pool: raw entropy={entropy(d[LIT_POOL:LIT_POOL_END]):.4f} dec entropy={entropy(bytes(img)):.4f}")
    allb = b"".join(decoded)
    for a in (b"BattleShopTipsActiveEquipFull", b"BattleShopTipsCannotBuyLeaveBase", b"local getmetatable"):
        print(f"decode-pool: anchor {a}: {allb.count(a)}")
    # cross-check vs strings.json when present
    ref = OUT.parent / "il2cpp-readable-20260814" / "strings.json"
    if ref.exists():
        js = json.load(open(ref))
        mism = sum(1 for i, r in enumerate(js) if decoded[i].decode("utf-8", "replace") != r["s"])
        print(f"decode-pool: cross-check vs strings.json mismatches = {mism}/{n}")
    return 0

def name_at(d: bytes, name_ks: bytes, idx: int, maxlen: int = 512) -> bytes:
    pos = STR_BASE + idx
    state = ((STR_MULT * pos) & 0xFFFFFFFF) % STR_MOD
    nib = (state & 0xF) << 4
    out = bytearray()
    for i in range(maxlen):
        p = d[pos + i] ^ name_ks[(nib + i) & 0xFF]
        if p == 0:
            break
        out.append(p)
    return bytes(out)

def cmd_decode_nametable(d: bytes, so: bytes) -> int:
    name_ks = so[NAME_KS_OFF:NAME_KS_OFF + 256]
    out = bytearray()
    pos = STR_BASE
    cnt = bad = 0
    t0 = time.time()
    while pos < NAME_END:
        state = ((STR_MULT * pos) & 0xFFFFFFFF) % STR_MOD
        nib = (state & 0xF) << 4
        ln = 0
        while ln < 512 and (d[pos + ln] ^ name_ks[(nib + ln) & 0xFF]) != 0:
            ln += 1
        if ln == 512:
            bad += 1
        out += bytes(d[pos + i] ^ name_ks[(nib + i) & 0xFF] for i in range(ln))
        out.append(0)
        pos += ln + 1
        cnt += 1
    p = OUT / "metadata-decrypted-nametable.bin"
    p.write_bytes(bytes(out))
    print(f"decode-nametable: {cnt} names, {bad} unterminated, walked 0x{STR_BASE:x}..0x{pos:x} in {time.time() - t0:.1f}s")
    print(f"decode-nametable: raw entropy={entropy(d[STR_BASE:NAME_END]):.4f} dec entropy={entropy(bytes(out)):.4f}")
    for idx in (0, 0x28, 0xD3F3B6):
        print(f"decode-nametable: idx 0x{idx:x} = {name_at(d, name_ks, idx)!r}")
    # bulk cross-check typeDef names vs types.json when present
    ref = OUT.parent / "il2cpp-readable-20260814" / "types.json"
    if ref.exists():
        js = json.load(open(ref))
        mism = 0
        for i in range(48642):
            idx = struct.unpack_from("<I", d, 0x31AC9CC + i * 88)[0]
            s = name_at(d, name_ks, idx).decode("ascii", "replace")
            if s != js[i]["name"]:
                mism += 1
        print(f"decode-nametable: typeDef name cross-check mismatches = {mism}/48642")
    return 0

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("cmd", nargs="?", default="all",
                    choices=["verify-header", "attempt-region", "write-header",
                             "decode-pool", "decode-nametable", "all"])
    args = ap.parse_args()
    d, so = load()
    c = ChaChaVariant(d, so)
    rc = 0
    if args.cmd in ("verify-header", "all"):
        rc |= cmd_verify_header(d, c)
    if args.cmd in ("attempt-region", "all"):
        rc |= cmd_attempt_region(d, c)
    if args.cmd in ("write-header", "all"):
        rc |= cmd_write_header(d, c)
    if args.cmd in ("decode-pool", "all"):
        rc |= cmd_decode_pool(d, so)
    if args.cmd in ("decode-nametable", "all"):
        rc |= cmd_decode_nametable(d, so)
    return rc

if __name__ == "__main__":
    sys.exit(main())
