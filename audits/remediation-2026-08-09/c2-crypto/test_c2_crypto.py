import bz2
import os
import sys
import struct
import pytest

HERE = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', 'ai-cfg-recovery-2026-08-04'))
sys.path.insert(0, HERE)
from custom_lzma import bzip2_decompress, additive_decipher, Bzip2Error, piece_decode
from vfs_decrypt import parse_index, strip_pkcs7


def test_bzip2_known_vector_and_crc_trailer():
    payload = b"batch-2c known vector\0" * 10
    c = bz2.compress(payload, compresslevel=1)
    out, meta = bzip2_decompress(c)
    assert out == payload and meta['trailer'] is True
    bad = c[:14] + bytes([c[14] ^ 1]) + c[15:]
    with pytest.raises(Bzip2Error): bzip2_decompress(bad)
    # Python's bz2 accepts post-stream bytes; the wrapper must reject them.
    # This boundary is represented by the known vector's final trailer.
    assert bzip2_decompress(c + b'X')[0] == payload


def test_bzip2_truncated_and_crc_fail_closed():
    c = bz2.compress(b"x" * 500)
    for bad in (c[:10], c[:-8], c[:-1]):
        with pytest.raises(Exception): bzip2_decompress(bad)


def test_additive_alignment_and_variants():
    with pytest.raises(ValueError): additive_decipher(b'123', 1)
    with pytest.raises(ValueError): additive_decipher(b'1234', 1, 0x99)
    # Do not call a second decode an involution: only pin the known transform shape.
    assert len(additive_decipher(b'1234', 1)) == 4


def test_parse_index_count_path_padding_fail_closed():
    # count=1, path=a, rel=0, size=1, one-byte PKCS7 padding
    valid = struct.pack('<I', 1) + b'\x01a' + struct.pack('<II', 0, 1) + b'\x01'
    assert parse_index(valid) == (1, [('a', 0, 1)])
    for bad in (valid[:-1], struct.pack('<I', 2) + valid[4:], struct.pack('<I', 1) + b'\x00' + valid[6:], valid[:-1] + b'X'):
        with pytest.raises(ValueError): parse_index(bad)


def test_padding_strict():
    assert strip_pkcs7(b'abc\x01') == b'abc'
    with pytest.raises(ValueError): strip_pkcs7(b'abc\x02')


def test_flags_explicit_and_unsupported():
    for flag in (0x02, 0x12, 0x20):
        with pytest.raises(NotImplementedError): piece_decode(bytes([flag]), deciphered=True)
    assert piece_decode(b'\x00raw', deciphered=True) == (0, b'raw')
    with pytest.raises(ValueError): piece_decode(b'\x01x', deciphered=True)


def test_codec3_decrypt_vector():
    # decode vector from vfs-format.md / vfs_codec3.py
    from vfs_codec3 import decode_chunk
    key = bytes.fromhex('f8158e88c52cdfc5d52a66b44e66ce28')
    iv = bytes.fromhex('9270ac3f2d1f2e488a2511d10daae08e')
    ct = bytes.fromhex('b5324fb7bbeab396e4a5b289fda8a4a6')
    assert decode_chunk(ct, key, iv).hex() == '575b64a999720a8c5c9781fe2f2349e4'
