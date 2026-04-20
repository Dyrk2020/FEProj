#!/usr/bin/env python3
"""XOR-island inventory: apply key 0x30 to all low-density .text chunks.

Slice 2026-08-04. Builds on page_forensics.py (text-decode-map.json).
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

ROOT = Path(__file__).resolve().parents[2]
ELF = ROOT / "corpus/native-elf/decompressed-arm64/libFEProj.so"
OUT = ROOT / "work/ai-cfg-recovery-2026-08-04"
TEXT_ADDR = 0x1155190
TEXT_OFF = 0x1155190
TEXT_SIZE = 0x44E5C9C
KEY = 0x30


def density(buf: bytes, va: int) -> int:
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    ok = 0
    for j in range(0, len(buf), 4):
        if list(md.disasm(buf[j : j + 4], va + j)):
            ok += 1
    return ok


def main() -> int:
    data = ELF.read_bytes()
    report = json.loads(OUT.joinpath("text-decode-map.json").read_text())
    low = report["low"]

    xor_ok, xor_partial, still_low = [], [], []
    for r in low:
        page = r["page"]
        off = TEXT_OFF + (page - TEXT_ADDR)
        chunk = data[off : off + 0x1000]
        xb = bytes(b ^ KEY for b in chunk)
        d = density(xb, page)
        if d >= 1000:
            xor_ok.append({**r, "xor0x30_decoded": d})
        elif d >= 100:
            xor_partial.append({**r, "xor0x30_decoded": d})
        else:
            still_low.append({**r, "xor0x30_decoded": d})

    OUT.joinpath("xor-islands.json").write_text(
        json.dumps(
            {
                "key": KEY,
                "low_chunks_total": len(low),
                "xor30_full": len(xor_ok),
                "xor30_partial": len(xor_partial),
                "still_low": len(still_low),
                "xor30_full_pages": xor_ok,
                "xor30_partial_pages": xor_partial[:50],
                "still_low_pages": still_low[:50],
            },
            indent=2,
        ),
        encoding="utf-8",
    )
    print(f"low={len(low)} xor30_full={len(xor_ok)} partial={len(xor_partial)} still_low={len(still_low)}")
    print("full pages:", [f"{p['page']:#x}:{p['xor0x30_decoded']}" for p in xor_ok[:30]])

    # ---- decode XOR'd opaque page fully, per-word ----
    page_va = 0x1588000
    page = data[page_va : page_va + 0x1000]
    xpage = bytes(b ^ KEY for b in page)
    OUT.joinpath("raw/xor-key30-page.bin").write_bytes(xpage)
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    lines = []
    ok = 0
    for j in range(0, 0x1000, 4):
        word = xpage[j : j + 4]
        insns = list(md.disasm(word, page_va + j))
        if insns:
            ok += 1
            i = insns[0]
            lines.append(f"{i.address:08x}: {word.hex():<16} {i.mnemonic:<8} {i.op_str}")
        else:
            lines.append(f"{page_va + j:08x}: {word.hex():<16} UNDEFINED")
    OUT.joinpath("xor30-page-disasm.txt").write_text(
        f"# page [0x{page_va:08x}, 0x{page_va + 0x1000:08x}) XOR 0x30\n"
        f"# per-word decode: {ok}/1024\n\n" + "\n".join(lines),
        encoding="utf-8",
    )
    print("xor30 page decoded:", ok, "/1024")
    return 0


if __name__ == "__main__":
    sys.exit(main())
