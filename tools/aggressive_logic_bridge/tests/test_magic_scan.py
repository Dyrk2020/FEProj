from __future__ import annotations

import importlib.util
import sys
import struct
import pytest
from pathlib import Path


def load_mod():
    path = Path(__file__).resolve().parents[1] / "magic_scan.py"
    spec = importlib.util.spec_from_file_location("magic_scan", path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    assert spec.loader is not None
    spec.loader.exec_module(module)
    return module


def elf_with_literal_xref() -> bytes:
    blob = bytearray(0x140)
    blob[:16] = b"\x7fELF\x02\x01\x01" + (b"\0" * 9)
    struct.pack_into("<HHIQQQIHHHHHH", blob, 16,
                     3, 183, 1, 0x400100, 64, 0, 0, 64, 56, 1, 0, 0, 0)
    struct.pack_into("<IIQQQQQQ", blob, 64,
                     1, 5, 0x100, 0x400100, 0, 0x40, 0x40, 0x1000)
    struct.pack_into("<I", blob, 0x100, 0x18000048)  # ldr w8, [pc, #8]
    struct.pack_into("<I", blob, 0x104, 0xD503201F)  # nop
    blob[0x108:0x10C] = bytes.fromhex("46 4d 4e 21")
    blob[0x10C:0x110] = b"ABCD"
    blob[0x110:0x118] = b"EFGHIJKL"
    return bytes(blob)


def test_reports_magic_hit_with_context_and_literal_xref(tmp_path):
    scanner = load_mod()
    sample = tmp_path / "libfixture.so"
    sample.write_bytes(elf_with_literal_xref())

    records = scanner.scan_file(sample)

    assert len(records) == 1
    record = records[0]
    assert record["file"] == "libfixture.so"
    assert record["pattern"] == "FMN!"
    assert record["offset"] == "0x108"
    assert record["va"] == "0x400108"
    assert record["context_16_hex"] == "480000181f2003d5464d4e2141424344"
    assert record["instruction_xref"] == "LDR literal"
    assert record["instruction_xref_va"] == "0x400100"

def elf_with_movz_movk_construct() -> bytes:
    blob = bytearray(0x140)
    blob[:16] = b"\x7fELF\x02\x01\x01" + (b"\0" * 9)
    struct.pack_into("<HHIQQQIHHHHHH", blob, 16,
                     3, 183, 1, 0x400100, 64, 0, 0, 64, 56, 1, 0, 0, 0)
    struct.pack_into("<IIQQQQQQ", blob, 64,
                     1, 5, 0x100, 0x400100, 0, 0x40, 0x40, 0x1000)
    struct.pack_into("<I", blob, 0x100, 0x5289A8C8)  # movz w8, #0x4d46
    struct.pack_into("<I", blob, 0x104, 0x72A429C8)  # movk w8, #0x214e, lsl #16
    return bytes(blob)


def test_reports_movz_movk_magic_construct_without_raw_literal(tmp_path):
    scanner = load_mod()
    sample = tmp_path / "libconstruct.so"
    sample.write_bytes(elf_with_movz_movk_construct())

    records = scanner.scan_file(sample)

    assert len(records) == 1
    assert records[0]["record_type"] == "magic-immediate-construct"
    assert records[0]["pattern"] == "FMN!"
    assert records[0]["instruction_xref"] == "MOVZ/MOVK immediate"
    assert records[0]["offset"] == "0x100"


def test_instruction_xrefs_reject_prfm_and_clobbered_adrp_chain():
    scanner = load_mod()
    segment = scanner.Segment(0, 0x20, 0x400000, True)
    prfm = struct.pack("<I", 0xD8000040) + b"\0" * 0x1C
    assert scanner.instruction_xrefs(prfm, [segment], {0x400008}) == {}

    # ADRP x0; MOVZ x0, #0; LDR w8, [x0]; CMP w8, #1. The write to x0
    # invalidates the address materialization, so it must not be classified.
    chain = struct.pack("<IIII", 0x90000000, 0xD2800000, 0xB9400008, 0x7100051F) + b"\0" * 0x10
    assert scanner.instruction_xrefs(chain, [segment], {0}) == {}

    # Non-NOP arithmetic can rewrite the ADRP base or loaded value; neither
    # sequence is a direct chain even though a later LDR/CMP appears.
    base_arithmetic = struct.pack("<IIII", 0x90000000, 0x91000400, 0xB9400008, 0x7100051F) + b"\0" * 0x10
    value_arithmetic = struct.pack("<IIII", 0x90000000, 0xB9400008, 0x11000508, 0x7100051F) + b"\0" * 0x10
    assert scanner.instruction_xrefs(base_arithmetic, [segment], {0x400000}) == {}
    assert scanner.instruction_xrefs(value_arithmetic, [segment], {0x400000}) == {}


def test_known_loader_record_rejects_unlocked_corpus_copy(tmp_path):
    scanner = load_mod()
    fake = tmp_path / "libFEProj.so"
    fake.write_bytes(b"\x7fELF" + b"\0" * 64)

    with pytest.raises(ValueError, match="locked libFEProj"):
        scanner.known_loader_record(fake)


def test_rejects_movz_movk_construct_split_by_register_clobber(tmp_path):
    scanner = load_mod()
    blob = bytearray(elf_with_movz_movk_construct())
    struct.pack_into("<I", blob, 0x104, 0x2A0003E8)  # mov w8, w0
    struct.pack_into("<I", blob, 0x108, 0x72A429C8)  # movk w8, #0x214e, lsl #16
    sample = tmp_path / "libclobbered.so"
    sample.write_bytes(blob)

    assert scanner.scan_file(sample) == []




def test_instruction_xrefs_rejects_fp_and_wzr_unsigned_loads():
    scanner = load_mod()
    segment = scanner.Segment(0, 0x20, 0x400000, True)
    fp_load = struct.pack("<III", 0x90000000, 0xFD400008, 0x7100051F) + b"\0" * 0x14
    wzr_load = struct.pack("<III", 0x90000000, 0xB940001F, 0x7100051F) + b"\0" * 0x14
    assert scanner.instruction_xrefs(fp_load, [segment], {0x400000}) == {}
    assert scanner.instruction_xrefs(wzr_load, [segment], {0x400000}) == {}


def test_wide_move_uses_w_register_zero_extension(tmp_path):
    scanner = load_mod()
    blob = bytearray(elf_with_movz_movk_construct())
    struct.pack_into("<III", blob, 0x100, 0xD2E00028, 0x7289A8C8, 0x72A429C8)
    sample = tmp_path / "libwidth.so"
    sample.write_bytes(blob)

    records = scanner.scan_file(sample)
    assert len(records) == 1
    assert records[0]["pattern"] == "FMN!"
    assert records[0]["record_type"] == "magic-immediate-construct"
