#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
netcrypto_reference.py — Wild Rift LNet `NetCrypto*` 

libLNet.so (VA==file offset, < 0x6a5ba94)
  - NetCrypto vtable @0x22c878: [0x10]=0xd6ee0 SetKey, [0x18]=0xd7410 Encrypt, [0x20]=0xd7834 Decrypt
  -  APIdynsym : NetCryptoCreate@0x9f37c / NetCryptoSetKey@0x9f640 /
    NetCryptoEncrypt@0x9fab4 / NetCryptoDecrypt@0xa001c / NetCryptoDestroy@0x9f3c0
  - ctor 0xd6ae0: EVP_aes_256_gcm (bl 0x647b0 -> GOT 0x246d50 -> EVP_aes_256_gcm@0xe8224,
    struct @0x22d1b0: key_len=32, iv_len=12)  => AES-256-GCM tag 
  - SetKey 0xd6ee0: keylen  keylen-0x20 < 0x11 (0xd7114..0xd7130)
    memcpy(ctx+0x110, key+0x20, keylen-0x20) (0xd7164..0xd7174)
    EVP_CIPHER_CTX_ctrl(ctx, 9 /*EVP_CTRL_GCM_SET_IVLEN*/, keylen-0x20, 0) (0xd71a4..0xd71b4)
    EVP_EncryptInit_ex(ctx,0,0,key,ctx+0x110) (0xd71b8..0xd71cc) / EVP_DecryptInit_ex(ctx+0x68,...) (0xd71e8..0xd7210)
  - Encrypt 0xd7410: CRC32(in, tlen)  in[hlen] (0xd75cc..0xd75e0)
    nonce=MD5(keymat[0:keylen-0x24]||in[0:4]) (0xd75e4..0xd7624)
    EVP_EncryptInit_ex(...,NULL,digest) (0xd7628..0xd763c)
    memcpy(out,in,hlen); EVP_EncryptUpdate(ctx,out+hlen,&outl,in+hlen,tlen-hlen) (0xd768c..0xd76d4)
  - Decrypt 0xd7834:  nonce  (0xd79b0..0xd79fc)
    memcpy(out,in,hlen); EVP_DecryptUpdate(ctx+0x68,out+hlen,&outl,in+hlen,tlen-hlen) (0xd7a24..0xd7a80)
    CRC32  out[hlen:hlen+4]  crc32(out,outl) (0xd7ab0..0xd7ac8, 0xd7b14..0xd7b18)
  - CRC32  @0x24d658IEEE  zlib crc32  0xd9858w0=data,w1=len -> w0=crc
  - GCM tagEncrypt/Decrypt  vtable  [0x38]=0xdda88 [0x40]=0xde50c [0x48]=0xdcfc8 [0x50]=0xdd004
     EVP_EncryptFinal_ex / EVP_CIPHER_CTX_ctrl(GCM_GET_TAG/SET_TAG)  =>
     GCM tag CRC32 “GCM-CTR”
    CTR  GCM J0 nonce<12  GHASH  pycryptodome 

  1.  key —— NetCryptoSetKey  key  ctx
  2. keylen keylen-0x20 = nonce  = GCM IV  [0,16]
      12 => keylen=44 => key blob = [32B AES-256 key][12B nonce ][I]
  3. hlen tlen[0:4]  nonce [I]
  4. / netcrypto-cipher.md §7“/”[I]
"""

import hashlib
import struct
import zlib
from Crypto.Cipher import AES

# ---------------------------------------------------------------------------
# ---------------------------------------------------------------------------
CIPHER = "AES-256-GCM (EVP, no tag emitted; GCM-CTR keystream)"
KEY_LEN = 32          # AES-256key = key_blob[0:32]  ✅ (EVP_aes_256_gcm struct key_len=32 @0x22d1b0)
CRC_FIELD_LEN = 4     #  4  CRC32   ✅ (Encrypt/Decrypt  rev )
GCM_TAG_LEN = 0       #  GCM tag  ✅ (vtable  Final/GET_TAG/SET_TAG)


def _be32(x: int) -> bytes:
    return struct.pack(">I", x & 0xFFFFFFFF)


def _crc32(data: bytes) -> int:
    """IEEE CRC-32 0xd9858  @0x24d658zlib [V]"""
    return zlib.crc32(data) & 0xFFFFFFFF


def derive_gcm_nonce(key_blob: bytes, frame_head: bytes) -> bytes:
    """ GCM nonce

    key_blob : NetCryptoSetKey  key  keylen32..48 
    frame_head:  4 in[0:4]
    : MD5(key_mat[0:keylen-0x24] || frame_head[0:4])[0:keylen-0x20]

    : 0xd7410: memcpy(stack,ctx+0x110,keylen-0x20); rev w8,[in]0xd75f8..0xd7608;
          str rev(in[0:4]) @stack+keylen-0x240xd7620; MD5(stack,keylen-0x20,digest);
          EVP_EncryptInit_ex(...,iv=digest)  ✅
    : `rev w8,[in]` + `str`LE==  in[0:4]  MD5 
          Encrypt 0xd75f8..0xd7620 / Decrypt 0xd79d0..0xd79f8 
    """
    keylen = len(key_blob)
    nonce_material = key_blob[0x20:keylen]          # = ctx+0x110  ✅
    nm_len = keylen - 0x20                          # = ctx+0x120 ✅
    assert 0 <= nm_len <= 16, "keylen-0x20  [0,16]"
    assert nm_len >= 4, "nonce  < 4  0xd7410/0xd7834  4 [I]"
    md5_input = nonce_material[:nm_len - 4] + frame_head[0:4][::-1]   # rev  ✅
    digest = hashlib.md5(md5_input).digest()
    return digest[:nm_len]                          # GCM IV  = keylen-0x20 ✅


def gcm_ctr_crypt(key: bytes, nonce: bytes, data: bytes, decrypt: bool) -> bytes:
    """AES-256-GCM  CTR  tagnonce  = GCM IV 

    12  nonce: J0 = nonce || 0x00000002 J0 
     12 :  pycryptodome GCM J0=GHASH mac_len=16  tag /
    vtable  EVP_EncryptFinal_ex / GCM_GET_TAG / GCM_SET_TAG =>
     CTR keystream tag
    """
    assert len(key) == 32
    if len(nonce) == 12:
        j0 = bytearray(nonce + b"\x00\x00\x00\x02")
        ctr = AES.new(key, AES.MODE_ECB)
        out = bytearray()
        for off in range(0, len(data), 16):
            ks = ctr.encrypt(bytes(j0))
            chunk = data[off:off + 16]
            out += bytes(a ^ b for a, b in zip(chunk, ks))
            #  32 GCM 
            c = (int.from_bytes(j0[12:16], 'big') + 1) & 0xFFFFFFFF
            j0[12:16] = c.to_bytes(4, 'big')
        return bytes(out)
    #  12  noncetag  CTR 
    cipher = AES.new(key, AES.MODE_GCM, nonce=nonce, mac_len=16)
    return cipher.decrypt(data) if decrypt else cipher.encrypt(data)


def encrypt_frame(key_blob: bytes, msg: bytes, hlen: int, tlen: int) -> bytes:
    """ NetCryptoEncrypt(ctx, in=msg, hlen, tlen, out, &outlen)

    msg : [hlen ][4B CRC /][payload] tlen
    : [][GCM-CTR(CRC||payload)]wire  tlenoutlen  = tlen
    : 0xd7410 hlen>=4
    """
    assert len(msg) == tlen and hlen >= 4
    assert tlen - hlen >= 4
    key = key_blob[0:32]
    m = bytearray(msg)
    # 1.  CRC  CRC32
    m[hlen:hlen + 4] = b"\x00" * 4
    crc = _crc32(bytes(m))
    m[hlen:hlen + 4] = _be32(crc)                    # ✅ 0xd75cc..0xd75e0
    # 2.  nonce 4 
    nonce = derive_gcm_nonce(key_blob, bytes(m[0:4]))
    # 3.  [CRC||payload]
    ciphertext = gcm_ctr_crypt(key, nonce, bytes(m[hlen:tlen]), decrypt=False)
    return bytes(m[0:hlen]) + ciphertext


def decrypt_frame(key_blob: bytes, wire: bytes, hlen: int, tlen: int) -> bytes:
    """ NetCryptoDecrypt(ctx, in=wire, hlen, tlen, out, &outlen)

    wire : [hlen ][GCM-CTR ] tlen
     (plaintext, crc_ok): plaintext = [][CRC||payload]crc_ok = CRC32 
     0xd7834  0outlen  = tlen
    """
    assert len(wire) == tlen and hlen >= 4
    key = key_blob[0:32]
    nonce = derive_gcm_nonce(key_blob, wire[0:4])    # ✅ 0xd79d0..0xd79fc
    # 4.  + 0xd7a24 memcpy, 0xd7a70 DecryptUpdate
    plain = bytearray(wire[0:hlen])
    plain += gcm_ctr_crypt(key, nonce, wire[hlen:tlen], decrypt=True)
    # 5. CRC32 ///
    saved = bytes(plain[hlen:hlen + 4])
    plain[hlen:hlen + 4] = b"\x00" * 4
    crc = _crc32(bytes(plain))
    plain[hlen:hlen + 4] = saved
    crc_ok = (crc == struct.unpack(">I", saved)[0])  # ✅ 0xd7ab0..0xd7ac8, 0xd7b14
    return bytes(plain), crc_ok


# ---------------------------------------------------------------------------
# Encrypt/Decrypt  + CRC 
# ---------------------------------------------------------------------------
def _selftest() -> None:
    keylen = 44                 # 32B key + 12B nonce [I] 
    key_blob = bytes(range(keylen))
    hlen, tlen = 8, 64
    header = b"\x11\x22\x33\x44PKT\x00"          #  4  nonce 
    payload = bytes(range(0x30, 0x30 + (tlen - hlen - 4)))
    msg = header + b"\x00\x00\x00\x00" + payload # CRC  0
    # Encrypt  CRC 0xd75cc..0xd75e0
    #  Decrypt  =  CRC 
    msg_filled = bytearray(msg)
    msg_filled[hlen:hlen + 4] = b"\x00" * 4
    msg_filled[hlen:hlen + 4] = _be32(_crc32(bytes(msg_filled)))
    msg_filled = bytes(msg_filled)
    wire = encrypt_frame(key_blob, msg, hlen, tlen)
    assert len(wire) == tlen
    assert wire[0:hlen] == header                 # 
    assert wire[hlen:] != msg[hlen:]              # 
    plain, ok = decrypt_frame(key_blob, wire, hlen, tlen)
    assert ok, "CRC "
    assert plain == msg_filled, ""
    #  CRC 
    bad = bytearray(wire); bad[hlen + 2] ^= 1
    _, ok2 = decrypt_frame(key_blob, bytes(bad), hlen, tlen)
    assert not ok2, ""
    print("self-test OK: round-trip + tamper-detection")


if __name__ == "__main__":
    _selftest()
