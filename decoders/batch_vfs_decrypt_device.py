#!/usr/bin/env python3
"""Batch-decrypt all LData vfs samples with the verified FEProj codec."""
import sys, struct, glob, os, collections, time, multiprocessing as mp
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import sm4v_decrypt as S

SBOX = S.SBOX
CFG_B = S.CFG_B

def fast_decrypt(data, rk, iv):
    out = bytearray(len(data))
    prev = iv
    sb = SBOX
    for off in range(0, len(data), 16):
        blk = data[off:off+16]
        x = [int.from_bytes(blk[4*i:4*i+4],'big') for i in range(4)]
        for r in range(32):
            t = x[(r+1)&3] ^ x[(r+2)&3] ^ x[(r+3)&3] ^ rk[31-r]
            T = sb[t & 0xFF] | (sb[(t>>8)&0xFF]<<8) | (sb[(t>>16)&0xFF]<<16) | (sb[(t>>24)&0xFF]<<24)
            rot2 = ((T<<2)|(T>>30)) & 0xFFFFFFFF
            a = ((T>>22)|((T&0xFFFFFF)<<10)) & 0xFFFFFFFF
            b = ((T>>14)|((T&0xFFFF)<<18)) & 0xFFFFFFFF
            c = ((T>>8)|((T&0xFF)<<24)) & 0xFFFFFFFF
            x[r&3] = (T ^ x[r&3] ^ rot2 ^ a ^ b ^ c) & 0xFFFFFFFF
        w = x[3]; out[off] = (w>>24)&0xFF; out[off+1] = (w>>16)&0xFF; out[off+2] = (w>>8)&0xFF; out[off+3] = w&0xFF
        w = x[2]; out[off+4] = (w>>24)&0xFF; out[off+5] = (w>>16)&0xFF; out[off+6] = (w>>8)&0xFF; out[off+7] = w&0xFF
        w = x[1]; out[off+8] = (w>>24)&0xFF; out[off+9] = (w>>16)&0xFF; out[off+10] = (w>>8)&0xFF; out[off+11] = w&0xFF
        w = x[0]; out[off+12] = (w>>24)&0xFF; out[off+13] = (w>>16)&0xFF; out[off+14] = (w>>8)&0xFF; out[off+15] = w&0xFF
        for i in range(16):
            out[off+i] ^= prev[i]
        prev = blk
    b = bytes(out)
    pad = b[-1]
    if 0 < pad <= 16 and all(x == pad for x in b[-pad:]):
        return b[:-pad]
    return b

RKS = {st: S.get_rk(st) for st in (1,2,3,4)}

def decrypt_one(path):
    v = open(path,'rb').read()
    name = os.path.basename(path)
    if len(v) < 0x34:
        return (name, None, None)
    magic, A, B, size = struct.unpack_from('<IIII', v, 0)
    if B != A+0x10 or size != len(v):
        return (name, None, None)
    sub = (magic >> 24) & 0xFF
    rk = RKS.get(sub)
    if rk is None:
        return (name, None, None)
    iv = CFG_B[sub][:16]
    parts = []
    try:
        c1 = v[0x04:B]
        c1 = c1[:len(c1)-len(c1)%16]
        if len(c1) >= 16:
            parts.append(fast_decrypt(c1, rk, iv))
    except Exception:
        pass
    try:
        c2 = v[B+4:]
        c2 = c2[:len(c2)-len(c2)%16]
        if len(c2) >= 16:
            parts.append(fast_decrypt(c2, rk, iv))
    except Exception:
        pass
    return (name, sub, b"".join(parts))

def main():
    roots = [
        "<research-workspace>/artifacts/device-backups/wild-rift-google-play-7.2.0.2460-7246064-20260812-device/external-data/files/DynDL-LData",
        "<research-workspace>/artifacts/device-backups/wild-rift-google-play-7.2.0.2460-7246064-20260812-device/external-data/files/Res/LData",
    ]
    files = []
    for r in roots:
        if os.path.isdir(r):
            files += sorted(glob.glob(r+"/*.vfs"))
    print(f"{len(files)} vfs files")
    t0 = time.time()
    outdir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "decrypted-samples-device-20260812")
    os.makedirs(outdir, exist_ok=True)
    subcnt = collections.Counter()
    ok = 0; fail = []
    with mp.Pool(min(8, mp.cpu_count())) as pool:
        for name, sub, pt in pool.imap_unordered(decrypt_one, files):
            if pt is None:
                fail.append((name, None)); continue
            subcnt[sub] += 1
            if len(pt) > 64:
                pr = sum(1 for c in pt[:4096] if c in (9,10,13) or 0x20<=c<=0x7e) / min(len(pt),4096)
                if pr > 0.5:
                    ok += 1
                    with open(os.path.join(outdir, name + ".DECRYPTED.bin"), 'wb') as f:
                        f.write(pt)
                else:
                    fail.append((name, sub))
    print("subtypes:", dict(subcnt))
    print("decrypted ok:", ok, "failed:", len(fail), "time:", round(time.time()-t0,1), "s")
    for f in fail[:20]:
        print("  FAIL", f)

if __name__ == "__main__":
    main()
