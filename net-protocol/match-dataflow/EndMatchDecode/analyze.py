#!/usr/bin/env python3
"""EndMatchDecode analysis: align 2d report messages to TDR positional structure."""
import json, sys, collections

def load_frames():
    return [json.loads(l) for l in open('endmatch_frames.jsonl')]

def u16(pl, off):
    return (pl[off] << 8) | pl[off+1]

def u32(pl, off):
    return (pl[off] << 24) | (pl[off+1] << 16) | (pl[off+2] << 8) | pl[off+3]

def u64(pl, off):
    return (u32(pl, off) << 32) | u32(pl, off+4)

def dump_u16_grid(pl, start, n=40, label=''):
    """Print u16 pairs from a start offset."""
    print(f'--- {label} u16 from {start}:')
    out = []
    for i in range(start, min(len(pl), start+n*2), 2):
        out.append(f'{u16(pl,i):04x}')
    print(' '.join(out))

if __name__ == '__main__':
    uniq = load_frames()
    famB = [u for u in uniq if u['fam'] == '0b78']
    famB.sort(key=lambda x: x['seq'])
    for u in famB:
        pl = bytes.fromhex(u['payload_hex'])
        print(f"==== 0b78 seq {u['seq']} payload_len={u['payload_len']}")
        # try grids at 8,10,12,14
        for g in (8, 10, 12, 14):
            vals = [u16(pl, i) for i in range(g, min(len(pl)-1, 223), 2)]
            # show values != 0 with index
            nz = [(k, v) for k, v in enumerate(vals) if v != 0]
            print(f'  grid@{g}: nz_u16 = {nz[:20]}')
