#!/usr/bin/env python3
"""LData .vfs structural parser (round 12, evidence-backed).

Header (52 bytes):
  0x00 u32 magic   = bytes "01 03 01 xx" (LE u32 0x00010301..0x04010301, xx in 0x00..0x04)
  0x04 u32 A       = end of region R1 (encrypted first chunk)
  0x08 u32 B = A+0x10 = start of block stream
  0x0C u32 size    = total file size (validated)
  0x10 u32 magic   = repeat of 0x00
  0x14 u8 [32] K   = key/digest block (see report vfs-format.md, section 3)
  0x34 .. A        R1 (encrypted payload, size A-0x34)
  A   .. B         16-byte field F (keyed MAC of R1, [INFERENCE])
  B   .. EOF       blocks {u32 magic, u8[32] K', data} (K' = 16B group-key + 16B per-block)

Magic-scan boundary validation (remediation 2026-08-09, plan §3.6):
  A raw byte-scan for magic can be fooled by a magic byte sequence that
  happens to appear inside a block payload.  Every magic hit is therefore
  validated before being treated as a block boundary:
    * length       - at least one data byte after the 36-byte block header
                     (block header = 4-byte magic + 32-byte key K')
    * alignment    - hit offset ≡ 0 (mod 4) and ≡ B (mod 4)
    * next-header validity - the next magic hit (or EOF) must itself satisfy
                     the same length/alignment checks
  A hit that fails any check is demoted from `confirmed` to `candidate`
  (still reported, never silently dropped).  NOTE: payloads are NOT required
  to be word-aligned — the format evidence does not establish that, so it is
  not enforced (enforcing it would falsely demote real blocks).
"""
import struct, sys

# bytes "01 03 01 xx" as little-endian u32 (xx = 00..04)
MAGICS = {0x00010301, 0x01010301, 0x02010301, 0x03010301, 0x04010301}

BLOCK_HEADER = 4 + 32          # magic u32 + 32-byte key block K'


def _valid_boundary(data, off, magic_bytes, align):
    """Return (ok, reason) without recursion.

    A boundary is valid only when its header fits, it is aligned, it has at
    least one payload byte, and every later magic hit selected by the scan is
    also a valid header.  The latter is deliberately checked iteratively: a
    hostile payload can contain a very long chain of magic hits and must not
    consume Python call-stack depth.
    """
    n = len(data)
    current = off
    while True:
        if current + BLOCK_HEADER > n:
            return False, "truncated: header overruns EOF"
        if (current - align) % 4 != 0:
            return False, "misaligned: off %#x not ≡ B (mod 4)" % current
        nxt = data.find(magic_bytes, current + BLOCK_HEADER)
        end = nxt if nxt != -1 else n
        if end - (current + BLOCK_HEADER) < 1:
            return False, "no payload byte before next header/EOF"
        if nxt == -1:
            return True, "ok"
        current = nxt



def _boundary_failure(code, detail):
    """Create a stable, machine-readable parser failure message."""
    return ValueError("vfs[%s]: %s" % (code, detail))


class VfsFile:
    def __init__(self, data: bytes):
        if len(data) < 0x34:
            raise ValueError("vfs: file too short (%d)" % len(data))
        self.data = data
        self.magic, self.A, self.B, self.size = struct.unpack_from('<IIII', data, 0)
        self.magic2 = struct.unpack_from('<I', data, 0x10)[0]
        if self.magic not in MAGICS:
            raise ValueError("vfs: bad magic %#x" % self.magic)
        if self.magic2 != self.magic:
            raise ValueError("vfs: magic repeat mismatch")
        if self.A < 0x34:
            raise _boundary_failure("bad-A", "A %#x before payload start 0x34" % self.A)
        if self.B != self.A + 0x10:
            raise _boundary_failure("bad-AB", "B != A+0x10 (%#x vs %#x)" % (self.B, self.A))
        if self.size != len(data):
            raise _boundary_failure("bad-size", "size field %d != actual %d" % (self.size, len(data)))
        if not self.A <= self.B <= self.size:
            raise _boundary_failure("bad-AB", "require A<=B<=size (%#x, %#x, %#x)" %
                                    (self.A, self.B, self.size))
        if self.B + BLOCK_HEADER > self.size:
            raise _boundary_failure("no-block", "B+BLOCK_HEADER %#x beyond EOF %#x" %
                                    (self.B + BLOCK_HEADER, self.size))
        if data[self.B:self.B + 4] != data[0:4]:
            raise _boundary_failure("bad-B-magic", "block stream does not start with magic at B %#x" % self.B)
        if self.size <= self.B + BLOCK_HEADER:
            raise _boundary_failure("no-block", "no payload byte after first block header")
        self.K = data[0x14:0x34]
        self.R1 = data[0x34:self.A]
        self.F = data[self.A:self.B]

    def block_offsets(self):
        """All candidate block magic offsets (0x00, 0x10, then B..).

        SUPERSEDED (2026-08-09, plan §3.6): the old raw scan returned every
        magic byte-sequence hit with no length/alignment/next-header checks,
        so a magic that appears inside a payload could be mistaken for a block
        boundary.  The raw hit list is preserved as `_raw_magic_hits`; callers
        wanting validated boundaries must use `validated_block_offsets()`.
        """
        return [o for o in self._raw_magic_hits()]

    def _raw_magic_hits(self):
        """Every byte offset holding the 4-byte magic (0x00, 0x10, then B..).

        Unvalidated byte-scan — kept for compatibility / forensic review.
        """
        offs = [0, 0x10]
        i = self.B
        magic_bytes = self.data[0:4]
        while i < len(self.data):
            if self.data[i:i+4] == magic_bytes:
                offs.append(i)
            i += 1
        return offs

    def validated_block_offsets(self):
        """Block boundaries that survive length + alignment + next-header
        validation (remediation 2026-08-09, plan §3.6).

        Returns a list of dicts:
          {"offset": int, "status": "confirmed"|"candidate",
           "reason": "ok" or a failure string}
        `confirmed` = passes all three checks; `candidate` = a magic hit that
        fails one of them (reported, never dropped).  Offsets 0x00/0x10 are
        the file-header magic repeats, always `confirmed` (verified in
        __init__).
        """
        magic_bytes = self.data[0:4]
        out = [{"offset": 0, "status": "confirmed", "reason": "file header"},
               {"offset": 0x10, "status": "confirmed", "reason": "file header repeat"}]
        for off in self._raw_magic_hits()[2:]:
            ok, reason = _valid_boundary(self.data, off, magic_bytes, self.B)
            out.append({"offset": off, "status": "confirmed" if ok else "candidate",
                        "reason": reason})
        return out

    def blocks(self):
        """Yield blocks using confirmed, validated boundaries only.

        Raw magic hits remain available through ``block_offsets()`` and
        ``validated_block_offsets()``; a payload collision is never used to
        split a block here.  Records expose absolute ``offset``/``end`` via
        ``block_records()`` without changing this legacy tuple API.
        """
        magic_bytes = self.data[0:4]
        confirmed = [x["offset"] for x in self.validated_block_offsets()
                     if x["offset"] >= self.B and x["status"] == "confirmed"]
        if not confirmed:
            candidates = [x["offset"] for x in self.validated_block_offsets()
                          if x["offset"] >= self.B and x["status"] == "candidate"]
            if candidates:
                raise _boundary_failure("candidate-boundary",
                                        "no confirmed block boundary; candidates=%s" % candidates)
            raise _boundary_failure("no-block", "no confirmed block boundaries")
        for index, off in enumerate(confirmed):
            end = confirmed[index + 1] if index + 1 < len(confirmed) else len(self.data)
            if off + BLOCK_HEADER > end:
                raise ValueError("vfs: truncated block header @ %#x" % off)
            if self.data[off:off + 4] != magic_bytes:
                raise ValueError("vfs: block magic @ %#x != %#x" % (off, self.magic))
            k = self.data[off + 4:off + 36]
            yield off, self.magic, k[:16], k[16:], self.data[off + 36:end]

    def block_records(self):
        """Return validated block records with absolute half-open offsets."""
        out = []
        for off, magic, kg, kp, payload in self.blocks():
            out.append({"offset": off, "end": off + BLOCK_HEADER + len(payload),
                        "magic": magic, "k_group": kg, "k_perblock": kp,
                        "data": payload})
        return out

    def summary(self):
        return dict(magic=hex(self.magic), A=hex(self.A), B=hex(self.B),
                    size=self.size, K=self.K.hex(), R1_len=len(self.R1),
                    F=self.F.hex(), blocks=[hex(o) for o in self.block_offsets()])


if __name__ == "__main__":
    for path in sys.argv[1:]:
        with open(path, "rb") as f:
            v = VfsFile(f.read())
        print(path, v.summary())
        vb = v.validated_block_offsets()
        n_cand = sum(1 for x in vb if x["status"] == "candidate")
        print("  validated boundaries: %d hits, %d confirmed, %d candidate"
              % (len(vb), len(vb) - n_cand, n_cand))
        for x in vb[2:]:
            print("   %s %#x (%s)" % (x["status"], x["offset"], x["reason"]))
