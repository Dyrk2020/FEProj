#!/usr/bin/env python3
"""global-metadata.dat structural parser (il2cpp FMN! format, Riot-modified).

Corpus lock: SHA-256 5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d
(58,401,572 bytes).

Header layout: Cpp2IL Il2CppGlobalMetadataHeader for metadata version 31
(magic "FMN!" + version u32 + 31x {Offset:int32, Size:int32} pairs; no Count,
no typeInlineArrays for v31 = Unity 2022.3.33+).

Riot modification findings (empirical, 2026-08-04):
- First 4 section pairs in the header are garbage values (0xcc9ddb49 etc.) —
  obfuscated/patched. Real locations recovered by content fingerprinting:
  * stringLiteral      = 0x100,  size 0x6F8D8  (57,115 x (length u32, dataIndex u32))
  * stringLiteralData  = 0x211CFE0, size 0x196844 (pool; last referenced byte;
    physical pool extends past it to ~0x23F0000 with unreferenced strings)
  * string (metadata names) ~0x2444000..0x24B0000 (mscorlib@0x24444CD; modified
    encoding: 1-byte UTF-16 byte-length + ASCII bytes)
  * events: not located — likely inside the encrypted region below
- 0x70000..0xF45000: 15.5MB high-entropy (7.8) region. Not XOR-0x30/0xFF/0x5A/0x7C,
  not lz4 frame/block. Presumed Riot-encrypted original sections [INFERENCE].
- Remaining 27 pairs are plaintext and verified (properties/methods/
  exportedTypeDefinitions data validate). Note: claimed
  fieldAndParameterDefaultValueData range (0x211A028, 0x390088) overlaps the
  stringLiteralData pool — the pool sits inside the claimed range [INFERENCE:
  modified binary relocated the pool there without updating the header].

Usage:
  python3 metadata.py [--strings N] [--literals N] [--pool N]
"""

from __future__ import annotations

import argparse
import math
import struct
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
META = ROOT / "corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat"
MAGIC = b"FMN!"

# (offset, size) pair order for metadata version >= 29 (Cpp2IL MetadataClass.cs)
SECTIONS = [
    "stringLiteral", "stringLiteralData", "string", "events", "properties",
    "methods", "parameterDefaultValues", "fieldDefaultValues",
    "fieldAndParameterDefaultValueData", "fieldMarshaledSizes", "parameters",
    "fields", "genericParameters", "genericParameterConstraints",
    "genericContainers", "nestedTypes", "interfaces", "vtableMethods",
    "interfaceOffsets", "typeDefinitions", "images", "assemblies",
    "fieldRefs", "referencedAssemblies", "attributeData", "attributeDataRange",
    "unresolvedVirtualCallParameterTypes", "unresolvedVirtualCallParameterRanges",
    "windowsRuntimeTypeNames", "windowsRuntimeStrings", "exportedTypeDefinitions",
]

# Empirically recovered values (evidence: stringLiteral table at 0x100 validated by
# (length,dataIndex) monotonic walk; pool base validated by dataIndex slices;
# mscorlib/Assembly-CSharp text hits at stated offsets).
MEASURED = {
    "stringLiteral": (0x100, 0x6F8D8),
    "stringLiteralData": (0x211CFE0, 0x196844),
    "string": (0x2444000, 0x6C000),  # [INFERENCE] start aligned approx, region w/ mscorlib
}


def entropy(b: bytes) -> float:
    if not b:
        return 0.0
    c = Counter(b)
    n = len(b)
    return -sum((v / n) * math.log2(v / n) for v in c.values())


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--strings", type=int, default=8, help="N metadata string samples")
    ap.add_argument("--literals", type=int, default=8, help="N string-literal samples")
    ap.add_argument("--pool", type=int, default=4, help="N pool strings")
    args = ap.parse_args()

    d = META.read_bytes()
    if d[:4] != MAGIC:
        print(f"ERROR: bad magic {d[:4]!r}", file=sys.stderr)
        return 1
    version = struct.unpack_from("<i", d, 4)[0]
    print(f"file: {META.name} ({len(d):,} bytes) magic=FMN! version={version}")

    off = 8
    sections = {}
    for name in SECTIONS:
        o, s = struct.unpack_from("<II", d, off)
        sections[name] = (o, s)
        off += 8
    print(f"header bytes: {off} ({len(SECTIONS)} sections)")

    bad = 0
    for name, (o, s) in sections.items():
        flag = ""
        if s and (o + s > len(d)):
            flag = "  <-- OUT OF BOUNDS"
            bad += 1
        if name in MEASURED:
            mo, ms = MEASURED[name]
            flag += f"  (claimed value obfuscated; measured {mo:#x}+{ms:#x})"
        print(f"  {name:42s} off={o:>10,} size={s:>12,} end={o+s:>12,}{flag}")
    print(f"sections out of bounds: {bad}")
    ent = entropy(d[0x70000:0xF45000])
    print(f"encrypted region 0x70000..0xF45000 entropy={ent:.2f} "
          f"(not XOR 0x30/0xFF/0x5A/0x7C, not lz4) [INFERENCE: Riot-encrypted originals]")

    so, ss = sections["string"] if sections["string"][0] < len(d) else MEASURED["string"]
    # use measured string region for sampling
    s_off, s_sz = MEASURED["string"]
    print(f"\nstring region (measured) off={s_off:#x} size={s_sz:,}")
    p = s_off
    shown = 0
    i = 0
    while p < s_off + s_sz and shown < args.strings:
        ln = d[p]
        if ln == 0 or p + 1 + ln > len(d):
            break
        s = d[p + 1:p + 1 + ln]
        printable = all(0x20 <= b < 0x7f for b in s)
        if printable and s:
            print(f"  [{i}] {s[:80]!r}")
            shown += 1
        p += 1 + ln
        i += 1

    lo, ls = MEASURED["stringLiteral"]
    ld, lds = MEASURED["stringLiteralData"]
    print(f"\nstringLiteral (measured) off={lo:#x} count={ls // 8:,} (stride 8: length,dataIndex)")
    print(f"stringLiteralData (measured) off={ld:#x} size={lds:,}")
    for i in range(min(args.literals, ls // 8)):
        ln, di = struct.unpack_from("<II", d, lo + i * 8)
        if ln and di + ln <= lds:
            print(f"  [{i}] len={ln:5d} {d[ld+di:ld+di+ln][:80]!r}")

    if args.pool:
        print(f"\npool tail (past referenced end {ld+lds:#x}):")
        p = ld + lds
        for _ in range(args.pool):
            if p >= len(d):
                break
            end = d.find(b"\x00", p)
            if end < 0 or end - p > 120:
                break
            print(f"  {d[p:end][:90]!r}")
            p = end + 1

    return 0


if __name__ == "__main__":
    sys.exit(main())
