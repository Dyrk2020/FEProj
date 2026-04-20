#!/usr/bin/env python3
"""Verified vfs codec-3 cipher (Wild Rift FEProj) — cross-validated against the game
under qemu+gdb (round-by-round states identical; full decode identical).

Chain: dispatcher 0x42e9a2c -> codec-3 vtable 0x71ee790 slot[5] = method 0x53dbc8c
       -> stream setup 0x53fe914(stream, key1, 0x100, key2, 0x10, 0)
       -> schedule gen 0x53fe978(stream, key1[0:16]) -> schedule[32] LE at stream+0x20
       -> decode 0x53fc6dc: P[i] = E(C[i]) XOR C[i-1], C[-1] = key2 (stream+8)
       -> block transform 0x53fed70: 32 rounds, S-box 0x5843fc8, rconst 0x58440c8
Constants verified byte-exact against libFEProj.so.
"""
import struct

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
MASK = 0xffffffff

def _rev32(x):
    return int.from_bytes(struct.pack('<I', x), 'big')

def _sub(x):
    return (SBOX[x & 0xff] | (SBOX[(x >> 8) & 0xff] << 8) |
            (SBOX[(x >> 16) & 0xff] << 16) | (SBOX[(x >> 24) & 0xff] << 24)) & MASK

def _ror(x, n):
    return ((x >> n) | (x << (32 - n))) & MASK

def _rol(x, n):
    return ((x << n) | (x >> (32 - n))) & MASK

def key_schedule(seed16):
    """0x53fe978: expand 16-byte seed -> 32x u32 schedule (verified vs game)."""
    w = [_rev32(struct.unpack_from('<I', seed16, 4 * i)[0]) for i in range(4)]
    consts = [0xb9b7ed68, 0x71750a9f, 0xa6070525, 0x3aa8c2c5]
    state = [w[i] ^ consts[i] for i in range(4)]
    sched = []
    for r in range(32):
        t = _sub(state[(r + 1) & 3] ^ state[(r + 2) & 3] ^ state[(r + 3) & 3] ^ RC[r])
        i = r & 3
        state[i] = (t ^ state[i] ^ _ror(t, 19) ^ _ror(t, 9)) & MASK
        sched.append(state[i])
    return sched

def block_transform(block16, sched):
    """0x53fed70: 16B block -> 16B (verified vs game, incl. round-by-round)."""
    state = [_rev32(struct.unpack_from('<I', block16, 4 * i)[0]) for i in range(4)]
    for r in range(32):
        t = _sub(state[(r + 1) & 3] ^ state[(r + 2) & 3] ^ state[(r + 3) & 3] ^ sched[31 - r])
        i = r & 3
        state[i] = (t ^ state[i] ^ _rol(t, 2) ^ _ror(t, 22) ^ _ror(t, 14) ^ _ror(t, 8)) & MASK
    return b''.join(struct.pack('>I', state[i]) for i in (3, 2, 1, 0))

def decode_chunk(chunk, seed16, iv16):
    """0x53fc6dc: P[i] = E(C[i]) XOR C[i-1], C[-1] = iv16."""
    sched = key_schedule(seed16)
    out = b''
    prev = iv16
    for off in range(0, len(chunk) - 15, 16):
        blk = chunk[off:off + 16]
        p = bytes(a ^ b for a, b in zip(block_transform(blk, sched), prev))
        out += p
        prev = blk
    return out

if __name__ == '__main__':
    K = bytes.fromhex('f8158e88c52cdfc5d52a66b44e66ce28ecccd7b7707fa65a76a0718e3c8c87a2')
    K2 = bytes.fromhex('9270ac3f2d1f2e488a2511d10daae08e')
    ct1 = bytes.fromhex('b5324fb7bbeab396e4a5b289fda8a4a6')
    print('E(ct1, sched(K0)) =', block_transform(ct1, key_schedule(K[:16])).hex())
    print('P = E^K2           =', decode_chunk(ct1, K[:16], K2).hex())
