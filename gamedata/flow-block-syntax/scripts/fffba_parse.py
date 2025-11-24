#!/usr/bin/env python3
"""fFFBA container parser (Wild Rift battle-asset config layer, round 14).

Parses the "FFBA " container that wraps hero / item(equip) / rune / skill /
workflow config records extracted from the LData .vfs archives
(decrypted-samples/vfs-extracted/, 31,764 members starting with "fFFBA ").

Container envelope (all LE):
  [0..k)  prefix byte(s)       1 byte for v1 ('f'=0x66; 0xa2/0x93/0xb1), 2 bytes
                                for v0 (0xf0/0xf1/0xf2 + subtype: 0xf0 0x11,
                                0xf1 0x10, 0xf0 0x02, ...). Not part of the
                                validated marker (no code ref; empirical).
  [k..k+6) marker              "FFBA \x00" == 46 46 42 41 20 00  (rodata
                                constant at libFEProj 0x579F978, XOR-30
                                obfuscated, adjacent to the RTTI name of
                                FrameEngine::Extra::LogicBattleAssetDataProcessUtils)
  [k+6]    version byte        0x01 for 'f'-prefixed files, 0x00 for the rest
  header (version dependent, tabulated in fffba-format.md)
  record stream                [type][value] records; value width from TYPE_SIZES
  tail                         ASCII string table (asset paths) + trailer

The record grammar (TYPE_SIZES) was derived empirically by byte-aligning
same-schema samples (e.g. 14 h_twistedfate skin ActorCfgData files, 6
WorkFlow_Rune_Recommend_N files) and tabulating fixed vs variable fields;
semantics of individual tags are [INFERENCE] (see fffba-format.md).

API: parse_bytes(data) -> dict  (ContentExtractAgent contract).
CLI: python3 fffba_parse.py FILE...  or  --scan DIR  for validation stats.

Validation (round 14, full corpus): 48,695 FFBA files, 48,264 (99.1 %)
parse to a record stream + tail region; 4,326 (8.9 %) stop at record types
outside the empirical TYPE_SIZES table (their container envelope, prefix of
the stream and tail strings are still extracted). Historical round-14 `ok`
definition (marker+version parsed, >=2 records, printable tail run present)
is SUPERSEDED 2026-08-09 by the five-way decomposition below; `clean` = zero
errors.

Remediation 2026-08-09 (report 2026-08-09_reverse-audit-remediation-plan.md
§3.5/§3.6):
- `ok` is now decomposed into envelope_ok / header_ok / record_prefix_ok /
  tail_ok / semantic_schema_ok; the overall `ok` is their AND.  The old
  single-boolean behaviour (`ok` = tail_ok only) is SUPERSEDED and marked as
  such.  Legacy fields (`ok`, `clean`, `record_count`, `errors`) are kept.
- The heuristic longest-run scan that picks `stream_start` yields a
  CANDIDATE RECORD START, not a complete serializer proof (plan §3.5).
  `stream_start` / `stream_start_heuristic` / `stream_stop` report the
  candidate choice and the stop point; the raw record pairs are preserved
  as `fallback_records` even when they are not schema-confirmed (plan §3.6).
- Type-width census: see fffba-types-manifest.json (generated 2026-08-09).
  TYPE_SIZES currently has 121 entries; the "119" figure in older docs is
  the historical round-14/15 count of the SAME table (round-16 added 0xf3,
  0x79, ...).  `python3 fffba_parse.py --types` prints the table summary.
"""
import argparse
import os
import struct
import sys

MARKER = b"FFBA \x00"
PREFIX_V1 = b"f"          # 0x66, version byte 0x01
PREFIX_V0_1B = (b"\xa2", b"\x93", b"\xb1")
PREFIX_V0_2B_HI = (0xF0, 0xF1, 0xF2)

# record type -> value byte length (excluding the type byte).
# Derived from aligned same-schema samples; u32/u16/u24 widths verified by
# full-file consumption on the Rune_Recommend / ThreeTower / twistedfate
# samples (see fffba-format.md §3).
TYPE_SIZES = {
    0x01: 2, 0x04: 2, 0x05: 3, 0x09: 2, 0x0B: 3, 0x0C: 3,
    0x0F: 3, 0x10: 1, 0x12: 3, 0x13: 3,
    0x14: 3, 0x15: 3, 0x17: 3, 0x19: 3, 0x1A: 3, 0x1B: 3, 0x1C: 3,
    0x1D: 3, 0x1E: 3, 0x1F: 4, 0x21: 4, 0x22: 4, 0x23: 4, 0x26: 4,
    0x28: 3, 0x29: 3, 0x2A: 2, 0x2E: 4, 0x2F: 5, 0x31: 4, 0x33: 4,
    0x34: 4, 0x36: 2, 0x38: 3, 0x39: 3, 0x3A: 3, 0x3C: 3, 0x3E: 3,
    0x3F: 3, 0x40: 3, 0x41: 6, 0x44: 4, 0x47: 6, 0x48: 6, 0x49: 3, 0x4B: 3,
    0x4C: 3, 0x4E: 3, 0x4F: 4, 0x50: 3, 0x52: 3, 0x53: 3, 0x57: 3, 0x58: 3,
    0x59: 3, 0x5E: 5, 0x5F: 5, 0x62: 3, 0x66: 3, 0x68: 3, 0x69: 3, 0x6A: 3,
    0x6C: 4, 0x6D: 4, 0x6F: 5, 0x71: 3, 0x75: 3, 0x76: 5, 0x77: 4, 0x78: 3,
    0x79: 5, 0x7A: 3, 0x7C: 3, 0x7F: 3, 0x83: 7, 0x84: 4, 0x85: 3,
    0x86: 3, 0x88: 3, 0x8B: 3, 0x8C: 4, 0x8D: 4, 0x8E: 4, 0x8F: 4, 0x90: 3,
    0x92: 3, 0x93: 4, 0x94: 3, 0x98: 3, 0x9F: 3, 0xA0: 4, 0xA1: 3, 0xA2: 4,
    0xA8: 3, 0xAA: 2, 0xAC: 4, 0xB0: 2, 0xB4: 3, 0xBC: 4, 0xBD: 3, 0xC0: 3,
    0xC8: 2, 0xC9: 3, 0xCC: 3, 0xD0: 3, 0xD1: 3, 0xD5: 4, 0xD7: 3, 0xDC: 4,
    0xDD: 4, 0xE0: 3, 0xE8: 3, 0xEE: 4, 0xF1: 3, 0xF2: 2, 0xF3: 4, 0xF4: 3, 0xF8: 4,
    0xF9: 3, 0xFC: 4, 0xFD: 3,
}
# types that terminate the record stream (variable-length string/list payloads)
TERMINAL_TYPES = (0xF0,)


def find_marker(data):
    """Return (marker_offset, prefix_bytes) or None."""
    for off in range(min(3, len(data))):
        if data[off:off + 6] == MARKER:
            return off, data[:off]
    return None


def parse_stream(data, start, end, max_records=100000):
    """Parse [type][value] records from start..end using TYPE_SIZES.

    Returns (records, pos, bad_type_or_None). Stops at the first type not in
    TYPE_SIZES (or a TERMINAL_TYPE) — the remainder is the tail region.
    """
    recs = []
    pos = start
    while pos < end and len(recs) < max_records:
        t = data[pos]
        if t in TERMINAL_TYPES:
            return recs, pos, None
        ln = TYPE_SIZES.get(t)
        if ln is None or pos + 1 + ln > end:
            return recs, pos, t
        recs.append((t, data[pos + 1:pos + 1 + ln]))
        pos += 1 + ln
    return recs, pos, None


def extract_strings(data, start):
    """Printable ASCII runs from start..end — asset-path fragments etc.

    Keeps runs that look like words/asset names (>=5 chars, alphabetic, and
    either long or containing path/name separators) to suppress binary noise.
    """
    out = []
    cur = []
    for i in range(start, len(data)):
        c = data[i]
        if 0x20 <= c < 0x7F:
            cur.append(chr(c))
        else:
            if len(cur) >= 5:
                s = "".join(cur)
                has_alpha = any(ch.isalpha() for ch in s)
                if has_alpha and (len(s) >= 8 or any(
                        ch in s for ch in "/_.")):
                    out.append(s)
            cur = []
    if len(cur) >= 5:
        s = "".join(cur)
        if any(ch.isalpha() for ch in s) and (len(s) >= 8 or any(
                ch in s for ch in "/_.")):
            out.append(s)
    return out


def parse_bytes(data):
    """Parse one fFFBA container. Returns a dict; never raises on bad input."""
    res = {"ok": False, "clean": False, "size": len(data), "prefix": None,
           "marker_offset": None, "version": None, "header": None,
           "records": [], "record_count": 0, "record_end": None,
           "strings": [], "trailer": None, "errors": [],
           # remediation 2026-08-09 (plan §3.6): the single boolean `ok` is
           # decomposed into five independent sub-checks; `ok` = AND of them.
           "envelope_ok": False, "header_ok": False,
           "record_prefix_ok": False, "tail_ok": False,
           "semantic_schema_ok": False,
           "stream_start": None, "stream_start_heuristic": "u32-aligned longest-run scan",
            "candidate_starts": [], "stream_stop": None, "fallback_records": [],
            "terminal": False, "unknown": False, "truncated": False,
            "eof": False, "trailer": None, "prefix_ok": False}

    m = find_marker(data)
    if m is None:
        res["errors"].append("marker 'FFBA \\x00' not found")
        # envelope_ok stays False (marker missing)
        return res
    moff, prefix = m
    res["marker_offset"] = moff
    res["prefix"] = prefix.hex()
    # Prefix is part of the envelope, not an unconstrained marker search.
    prefix_ok = (prefix == PREFIX_V1 or prefix in PREFIX_V0_1B or
                 (len(prefix) == 2 and prefix[0] in bytes(PREFIX_V0_2B_HI)))
    res["prefix_ok"] = prefix_ok
    if not prefix_ok:
        res["errors"].append("invalid prefix/version envelope")
        return res

    vpos = moff + 6
    if vpos >= len(data):
        res["errors"].append("truncated header")
        # marker present but no version byte -> envelope incomplete
        return res
    version = data[vpos]
    res["version"] = version
    if version not in (0x00, 0x01):
        res["errors"].append("unknown version byte %#x" % version)
        return res
    # envelope_ok: prefix + 6-byte marker + version byte all present
    res["envelope_ok"] = True

    hdr = {"raw": data[vpos:vpos + 24].hex()}
    rec_start = None
    if version == 0x01:
        # v1 ('f' prefix): common 5-byte header 01 00 00 0c 00, then per-type
        # fields, then the record stream. Records begin at the first known tag.
        hdr["common"] = data[vpos:vpos + 5].hex()
        hdr["u32s"] = [struct.unpack_from("<I", data, vpos + 5 + 4 * i)[0]
                       for i in range(3)
                       if vpos + 5 + 4 * i + 4 <= len(data)]
        rec_start = vpos + 5
    else:
        # v0: 00 00 + 5 u32 metadata entries + u16 1 + u32 + u16 1 + 00 10 00
        p = vpos + 2
        u32s = []
        for i in range(5):
            if p + 4 <= len(data):
                u32s.append(struct.unpack_from("<I", data, p)[0])
                p += 4
        hdr["u32s"] = u32s
        hdr["tail"] = data[p:p + 10].hex()
        rec_start = p
    res["header"] = hdr
    # header_ok: the version-specific header slice is present (v1 needs the
    # 5-byte common header; v0 needs 2-byte prefix + 5 u32 metadata entries).
    if version == 0x01:
        header_ok = (rec_start is not None and len(data) >= vpos + 5 + 12)
    else:
        header_ok = (rec_start is not None and len(data) >= vpos + 2 + 20)
    res["header_ok"] = header_ok

    # record stream: the type-specific header fields (u32-aligned) are not
    # record-structured, so try each u32-aligned candidate start and keep the
    # one yielding the longest clean record run (deterministic).
    #
    # HEURISTIC (remediation 2026-08-09, plan §3.5): this scan finds a
    # CANDIDATE RECORD START, not a complete serializer proof.  The winning
    # offset is reported as `stream_start` (labeled "candidate") and the
    # choice is kept in `stream_start_heuristic`.
    best = (0, None, None, None, None)  # (score, cand, recs, end, bad)
    candidates = []
    for k in range(0, 24):
        cand = rec_start + 4 * k
        if cand >= len(data):
            break
        if data[cand] not in TYPE_SIZES and data[cand] not in TERMINAL_TYPES:
            continue
        crecs, cend, cbad = parse_stream(data, cand, len(data))
        cwhy = ("terminal" if cbad is None and cend < len(data) and
                data[cend] in TERMINAL_TYPES else
                "unknown" if cbad is not None and cend < len(data) and
                cend + 1 + (TYPE_SIZES.get(cbad, 0)) > len(data) else
                "truncated" if cbad is not None and cend + 1 > len(data) else
                "eof")
        candidates.append({"start": cand, "end": cend, "records": len(crecs),
                           "stop_reason": cwhy, "bad_type": cbad})
        score = len(crecs)
        if score > best[0]:
            best = (score, cand, crecs, cend, cbad)
    res["candidate_starts"] = candidates
    score, sstart, recs, end, bad = best
    res["stream_start"] = sstart
    res["records"] = recs
    res["record_count"] = score
    res["record_end"] = end
    res["strings"] = extract_strings(data, end)
    if end < len(data) and len(data) - end <= 16:
        res["trailer"] = data[end:].hex()
    # record_prefix_ok: >=2 records decoded from the candidate start (the old
    # `ok` threshold; a shorter run is still preserved as fallback_records).
    # The unknown-type stop point is retained verbatim.
    res["record_prefix_ok"] = score >= 2
    if sstart is None:
        reason = "no_known_type"
        stop_pos = rec_start
    else:
        reason = ("unknown_type" if bad is not None and end < len(data) else
                  "truncated" if bad is not None else
                  "terminal" if end < len(data) else "eof")
        stop_pos = end
    res["stream_stop"] = {"pos": stop_pos, "end": stop_pos,
                           "reason": reason,
                           "next_byte": data[stop_pos] if stop_pos < len(data) else None,
                           "bad_type": bad}
    res["terminal"] = reason == "terminal"
    res["unknown"] = reason == "unknown_type"
    res["truncated"] = reason == "truncated"
    res["eof"] = reason == "eof"
    # fallback {t,v}: the raw records from the winning candidate start are
    # kept as-is even when they are not schema-confirmed (remediation §3.6).
    res["fallback_records"] = recs

    # validation: any printable tail run (>=2 chars — 2-char string-table
    # entries are common, e.g. rune-list names) or full consumption => ok
    if bad is not None:
        res["errors"].append("record stream stopped at unknown type %#x" % bad)
    tail_ok = False
    run = 0
    for i in range(end, len(data)):
        if 0x20 <= data[i] < 0x7F:
            run += 1
            if run >= 2:
                tail_ok = True
                break
        else:
            run = 0
    if not tail_ok and end >= len(data) - 1:
        tail_ok = True
    if not tail_ok:
        res["errors"].append("no tail strings found")
    res["tail_ok"] = tail_ok

    # semantic_schema_ok: every record decoded under a table whose widths were
    # verified on aligned same-schema samples.  Unknown-type stops and the
    # heuristic candidate start mean the schema is NOT fully confirmed, even
    # when the envelope/header/prefix/tail all check out.  (remediation
    # 2026-08-09, plan §3.6)
    res["semantic_schema_ok"] = (score >= 2 and bad is None)

    # ok = envelope_ok AND header_ok AND record_prefix_ok AND tail_ok AND
    # semantic_schema_ok (remediation 2026-08-09, plan §3.6; the previous
    # single-boolean `ok` = tail_ok only is SUPERSEDED).
    res["ok"] = bool(res["envelope_ok"] and res["header_ok"]
                     and res["record_prefix_ok"] and res["tail_ok"]
                     and res["semantic_schema_ok"])
    # "clean": zero errors (stream consumed fully or stopped only at a
    # terminal type with a clean tail)
    res["clean"] = not res["errors"]
    return res


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("paths", nargs="*", help="files or --scan DIR")
    ap.add_argument("--scan", metavar="DIR", help="validate every *.bytes in DIR")
    ap.add_argument("--json", action="store_true", help="dump full JSON for files")
    ap.add_argument("--types", action="store_true",
                    help="print the TYPE_SIZES census (entry count, width "
                         "distribution, merge priority; see "
                         "fffba-types-manifest.json for the full record)")
    a = ap.parse_args()

    if a.types:
        import collections
        dist = collections.Counter(TYPE_SIZES.values())
        print("TYPE_SIZES: %d entries" % len(TYPE_SIZES))
        print("  width distribution (width: count):")
        for w in sorted(dist):
            print("    %d: %d" % (w, dist[w]))
        print("  terminal types: %s (stream terminators, not counted)" % (
            " ".join("#%x" % t for t in TERMINAL_TYPES)))
        print("  note: '119' in round-14/15 docs is the historical count of "
              "this SAME table; round-16 added entries (0xf3 etc.) -> 121.")
        print("  note: FLOW_EXTRA_TYPES / TAIL_TYPES live in flow_parse.py; "
              "merge priority FLOW_TYPE_SIZES = TYPE_SIZES < FLOW_EXTRA_TYPES "
              "< TAIL_TYPES (later wins).")
        return 0

    files = list(a.paths)
    if a.scan:
        files = [os.path.join(a.scan, fn) for fn in os.listdir(a.scan)
                 if fn.endswith(".bytes")]
    if not files:
        ap.error("no input files")

    stats = {"total": 0, "ffba": 0, "ok": 0, "v1": 0, "v0": 0,
             "records_total": 0, "records_max": 0, "strings_total": 0,
             "errors": {},
             # remediation 2026-08-09: per-sub-check tallies
             "ok_envelope": 0, "ok_header": 0, "ok_record_prefix": 0,
             "ok_tail": 0, "ok_semantic_schema": 0, "candidate_starts": 0,
             "unknown_type_stops": 0}
    import collections
    for fn in files:
        try:
            with open(fn, "rb") as f:
                data = f.read()
        except OSError as e:
            print("ERR", fn, e)
            continue
        stats["total"] += 1
        r = parse_bytes(data)
        if r["marker_offset"] is None:
            continue
        stats["ffba"] += 1
        if r["version"] == 1:
            stats["v1"] += 1
        else:
            stats["v0"] += 1
        if r["ok"]:
            stats["ok"] += 1
        stats["ok_envelope"] += bool(r.get("envelope_ok"))
        stats["ok_header"] += bool(r.get("header_ok"))
        stats["ok_record_prefix"] += bool(r.get("record_prefix_ok"))
        stats["ok_tail"] += bool(r.get("tail_ok"))
        stats["ok_semantic_schema"] += bool(r.get("semantic_schema_ok"))
        stats["candidate_starts"] += (1 if r.get("stream_start") is not None else 0)
        stats["unknown_type_stops"] += (1 if (r.get("stream_stop") or {}).get(
            "reason") == "unknown_type" else 0)
        stats["records_total"] += r["record_count"]
        stats["records_max"] = max(stats["records_max"], r["record_count"])
        stats["strings_total"] += len(r["strings"])
        for e in r["errors"]:
            stats["errors"][e] = stats["errors"].get(e, 0) + 1
        if a.json:
            print(fn)
            print(r)

    print("== fFFBA validation stats ==")
    for k, v in stats.items():
        if k == "errors":
            for e, n in sorted(v.items(), key=lambda x: -x[1])[:10]:
                print("   error %r: %d" % (e, n))
        else:
            print("%s: %d" % (k, v))
    print("  -- sub-check pass rates (2026-08-09 remediation §3.6):")
    print("     envelope_ok: %d/%d" % (stats["ok_envelope"], stats["ffba"]))
    print("     header_ok: %d/%d" % (stats["ok_header"], stats["ffba"]))
    print("     record_prefix_ok: %d/%d" % (stats["ok_record_prefix"], stats["ffba"]))
    print("     tail_ok: %d/%d" % (stats["ok_tail"], stats["ffba"]))
    print("     semantic_schema_ok: %d/%d" % (stats["ok_semantic_schema"], stats["ffba"]))
    print("     candidate record starts (heuristic): %d" % stats["candidate_starts"])
    print("     unknown-type stops retained: %d" % stats["unknown_type_stops"])
    if stats["ffba"]:
        print("parse success: %d/%d (%.1f%%)" % (
            stats["ok"], stats["ffba"], 100.0 * stats["ok"] / stats["ffba"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
