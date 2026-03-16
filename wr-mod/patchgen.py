#!/usr/bin/env python3
"""patchgen.py —  libFEProj.so raw  /  ^0x30 

  patchgen.py <runtime_va> <orig_hex> <new_hex> [--out patch.txt] [--elffile PATH]
    runtime_va : == static VAtext 
    orig_hex   : hex text_runtime.bin 
    new_hex    : hex
: patch.txt  `FILEOFFSET HEXBYTES` + 
"""
import argparse, sys

P = [6, 2, 4, 5, 3, 7, 0, 1]
PINV = [P.index(i) for i in range(8)]
X20 = 0x1167000
BASE = 0x1155190
ELF = 'work/native-container-audit/decompressed-arm64/libFEProj.so'
RT = 'work/u16-semantics-20260812/QemuSim/dump/text_runtime.bin'


def mapping(v):
    d = v - X20
    g = d // 0x80000
    rem = d % 0x80000
    p = (rem >> 16) & 7
    off = rem & 0xffff
    if off < 0x4000:
        return 'island', X20 + (8 * g + PINV[p]) * 0x10000 + off
    return 'raw', v


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('va', type=lambda s: int(s, 16))
    ap.add_argument('orig', help='orig runtime bytes hex')
    ap.add_argument('new', help='new runtime bytes hex')
    ap.add_argument('--out', default='patch.txt')
    ap.add_argument('--elffile', default=None)
    ap.add_argument('--rtfile', default=None)
    args = ap.parse_args()

    elf = open(args.elffile or ELF, 'rb').read()
    rt = open(args.rtfile or RT, 'rb').read()
    orig = bytes.fromhex(args.orig)
    new = bytes.fromhex(args.new)
    if len(orig) != len(new):
        sys.exit('orig/new length mismatch')
    if args.va < BASE or args.va + len(orig) > BASE + len(rt):
        sys.exit(f'va {hex(args.va)} out of text range')

    # verify current runtime bytes
    cur = rt[args.va - BASE:args.va - BASE + len(orig)]
    if cur != orig:
        sys.exit(f'MISMATCH: runtime@{hex(args.va)}={cur.hex()} != orig {orig.hex()}')

    # verify mapping consistency per byte, emit writes
    bytemap = {}
    for k in range(len(orig)):
        v = args.va + k
        kind, fo = mapping(v)
        fileb = elf[fo]
        if kind == 'raw':
            assert fileb == cur[k], f'raw mismatch at {hex(v)}'
            bytemap[fo] = new[k]
        else:
            assert fileb == (cur[k] ^ 0x30), f'island mismatch at {hex(v)}'
            bytemap[fo] = new[k] ^ 0x30
    # merge contiguous runs
    runs = []
    for fo in sorted(bytemap):
        if runs and fo == runs[-1][0] + len(runs[-1][1]):
            runs[-1][1].append(bytemap[fo])
        else:
            runs.append([fo, [bytemap[fo]]])
    lines = [f'{fo:x} {bytes(b).hex()}' for fo, b in runs]
    with open(args.out, 'w') as f:
        f.write('\n'.join(lines) + '\n')
    print(f'OK: {len(lines)} write(s) -> {args.out}')
    for l in lines:
        print('  ', l)


if __name__ == '__main__':
    main()
