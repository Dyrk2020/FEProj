#!/usr/bin/env python3
"""FlowGraph (.bytes) container parser v2 (Wild Rift NewFlows / WorkFlow, round 23).

Companion to fffba_parse.py (round 14).  Reconstructs the FLOW-GRAPH
container layout used by the in-game judgement/effect logic:

    [fFFBA envelope][header][container-header records]
    [graph body: record blocks + embedded strings]
    [trailer: offset tables + schema-marker u32]

    Trailer marker (2026-08-09, remediation plan 3.3): the marker is the
    LAST 4 BYTES read as an explicit little-endian u32 (struct "<I").
    Reported as trailer.marker with trailer.marker_width == 4 and
    trailer.marker_endian == "little".  The previous read routed through
    u24() (a width-agnostic int.from_bytes) and is SUPERSEDED.

Two+ layers (this distinction matters - see modding-docs/23-flow-grammar.md):

  layer 1  VERIFIED - envelope, header, and the container-header record
           stream parsed with the round-14 width table (fffba_parse.TYPE_SIZES;
           cross-validated on 2,482 flow members).  The flow body uses
           additional type tags, so layer-1 stops at the first unknown type.

  layer 2  [VERIFIED structure, inferred widths] - body record stream with an
           extended width table (round-14 + FLOW_EXTRA_TYPES + TAIL_TYPES,
           recovered from cross-file alignment, twin-file diffs, and the
           WorkFlow_Filter same-schema family).  Stops at 0xf0 (section
           boundary), an embedded string, or an unknown type; the remainder
           is accounted by layer 3.

  layer 3  [VERIFIED container] - the tail after the record stream:
           embedded printable strings (shell names / asset paths / evaluator
           expressions), offset tables, a zero pad, and the final u32
           SCHEMA MARKER (per-schema constant, NOT a content checksum - see
           the three twin flows: RapidFirecannon_attack / StatikkFirecannon
           / StatikkShiv_buff4 differ in >1 KB of content yet all end with
           0x1CEC; five different QuicksilverSash_buff files all end 0x0F12).

Byte accounting (2026-08-09, remediation plan 3.2): every byte of a flow
file is classified as one of {envelope, header, record-value, string,
trailer-table, pad, marker}.  `parse_bytes()` reports:

  computed_byte_sum  sum of the four coarse interval lengths
                     (envelope + header + records + trailer incl. marker)
  accounting_delta   computed_byte_sum - len(data); 0 means the coarse
                     accounting is byte-exact (no overlap / no gap at the
                     interval level), NONZERO means some byte was
                     double-counted or missed.
  complete           True ONLY when the coarse intervals *and* the parsed
                     sub-interval record stream cover [0, len(data)) with
                     no overlap and no gap (verify_intervals).  Any
                     accounting mismatch forces complete == False.
  residual           bytes that the trailer classifier could not attribute
                     to strings / tables / pad (parse_trailer).  NOTE:
                     residual == 0 does NOT imply semantic completeness —
                     it only means the coarse classifier consumed every
                     byte.  Semantics (node/evaluator roles) are a separate
                     [INFERENCE] layer (parse_flow) and are never implied
                     by accounting.

Semantics (from the C++ reader facts recovered round 23):

* The graph is parsed by libFEProj.so (FrameEngine) into
  FrameEngine::Common::{Flow, FlowNode, FlowNodeEvaluator, FlowTransition}
  objects (il2cpp metadata type tables, fe-lua-api.md luabridge registry):
  FlowNode {canLoopEnter, tickCount, status, flow, transitions, nextNode},
  FlowTransition {myNode, toNode} - edges are node references.
* The Lua framework (FrameWork/FlowAction.res etc.) instantiates each node as
  FlowAction(insId, args, assetArgs, varShells) / FlowEvaluator(insId, ...);
  shells carry a CommonVariableType tag (Actor/Fix64/Int/Enum/
  Vector3Fix64/Bool/ActorList/Struct) + name + value.
* Body record roles (see 23-flow-grammar.md): 0x13 = u24 node/instance id
  (insId; 0x0800-0x2000 dense range), 0x1b = u24 paired id (config-type
  6312 = 0x18A8 in headers), 0x22 = u32 string-pool reference (0x080xxx),
  0x5f/0x6f = 5-byte asset-path hash records (shared across equip flows:
  0xF3FCB74A, 0x8116E623, 0xD5C90C51, 0x315BD233 ...), 0x48 = 6-byte
  object hash, 0x2f = 5-byte composite, 0x95 = 4-byte value.

API: parse_bytes(data) -> dict  (never raises)
CLI: python3 flow_parse.py FILE... | --json FILE | --validate CORPUS_DIR
"""
from __future__ import annotations

import argparse
import glob
import json
import os
import struct
import sys

from fffba_parse import TYPE_SIZES, TERMINAL_TYPES, find_marker

# ---------------------------------------------------------------------------
# Accounting keys (2026-08-09, remediation plan 3.2)
# ---------------------------------------------------------------------------
#: label used for the layer-2 byte range in `intervals` / `interval_labels`
#: (the tail of the parsed record stream is reclassified into
#: strings/trailer/marker by the trailer layer; the coarse interval keeps
#: the historical "records" name for backward compatibility).
BYTE_ACCOUNTING_VERSION = "2026-08-09/remediation-3.2"

# ---------------------------------------------------------------------------
# Record grammar
# ---------------------------------------------------------------------------

#: flow-graph body record types missing from the round-14 table, with widths
#: recovered from cross-file alignment + twin-file diffs [VERIFIED structure,
#: width inference documented in 23-flow-grammar.md].
#: 0xd0/0xd8/0xe0/0xe8/0x70/0x7c are *variant type bytes* that carry identical
#: semantic values across files (e.g. QuicksilverSash 0xd0 0xd8 vs CosmicDrive
#: 0xe0 0xe8 vs Youmuus 0x70 0x7c all encode 0x130010 / 0x130008).
FLOW_EXTRA_TYPES = {
    0x14: 3, 0x18: 3, 0x1a: 3, 0x1f: 3, 0x20: 3, 0x24: 3, 0x2b: 3, 0x2c: 2,
    0x2d: 3, 0x35: 3, 0x3b: 3, 0x3d: 3, 0x45: 3, 0x46: 3, 0x4a: 3, 0x4d: 3,
    0x51: 3, 0x54: 3, 0x55: 3, 0x5a: 3, 0x5b: 3, 0x5c: 3, 0x5d: 3, 0x60: 3,
    0x61: 3, 0x63: 3, 0x64: 3, 0x65: 3, 0x67: 3, 0x6b: 3, 0x6e: 3, 0x70: 3,
    0x72: 3, 0x73: 3, 0x74: 3, 0x7b: 3, 0x7c: 3, 0x7d: 3, 0x7e: 3, 0x80: 3,
    0x81: 3, 0x82: 3, 0x87: 3, 0x88: 3, 0x89: 3, 0x8a: 3, 0x91: 3, 0x95: 4,
    0x96: 3, 0x97: 3, 0x99: 3, 0x9a: 3, 0x9b: 3, 0x9c: 3, 0x9d: 3, 0x9e: 3,
    0xa3: 3, 0xa4: 3, 0xa5: 3, 0xa6: 3, 0xa7: 3, 0xa9: 3, 0xab: 3, 0xad: 3,
    0xae: 3, 0xaf: 3, 0xb1: 3, 0xb2: 3, 0xb3: 3, 0xb5: 3, 0xb6: 3, 0xb7: 3,
    0xb8: 3, 0xb9: 3, 0xba: 3, 0xbb: 3, 0xbe: 3, 0xbf: 3, 0xc1: 3, 0xc2: 3,
    0xc3: 3, 0xc4: 3, 0xc5: 3, 0xc6: 3, 0xc7: 3, 0xca: 3, 0xcb: 3, 0xcd: 3,
    0xce: 3, 0xcf: 3, 0xd2: 3, 0xd3: 3, 0xd4: 3, 0xd6: 3, 0xd8: 3, 0xd9: 3,
    0xda: 3, 0xdb: 3, 0xde: 3, 0xdf: 3, 0xe1: 3, 0xe2: 3, 0xe3: 3, 0xe4: 3,
    0xe5: 3, 0xe6: 3, 0xe7: 3, 0xe9: 3, 0xea: 3, 0xeb: 3, 0xec: 3, 0xed: 3,
    0xef: 3, 0xf5: 3, 0xf6: 3, 0xf7: 3, 0xfa: 3, 0xfb: 3, 0xfe: 3, 0xff: 3,
}

#: tail-region record types absent from both tables above, observed in the
#: per-file offset tables of the WorkFlow_Filter / WorkFlow_Global / legacy
#: WorkFlow/Equip families (round 23).  Width = 3 (u24) matches the corpus
#: convention for small integer types; the 431 round-14 "failed" files stop
#: exactly at these types, which the trailer layer of this parser accounts
#: for (see 23-flow-grammar.md §4.3).
TAIL_TYPES = {
    0x00: 1,          # zero flag / pad byte inside record blocks
    0x02: 3, 0x03: 3, 0x06: 3, 0x07: 3, 0x08: 3, 0x0a: 3, 0x0d: 3,
    0x0e: 3, 0x11: 3, 0x16: 3, 0x25: 3, 0x27: 3, 0x30: 3, 0x32: 3,
    0x37: 3, 0x42: 3, 0x43: 3, 0x56: 3, 0x4e: 2,
}

#: full width table for the body + tail layers
FLOW_TYPE_SIZES = dict(TYPE_SIZES)
FLOW_TYPE_SIZES.update(FLOW_EXTRA_TYPES)
FLOW_TYPE_SIZES.update(TAIL_TYPES)

#: record types carrying 32-56 bit opaque hash-like payloads (asset path
#: hashes / object ids) [INFERENCE]
HASH_TYPES = (0x41, 0x47, 0x48, 0x5F, 0x6F, 0x79, 0x83)

CONFIG_TYPE_ID = 0x18A8          # 6312: config-type id on the 0x1b/0x13 record
CONFIG_TAG40 = 40                # constant 0x04 record value in flow headers


def records_with_offsets(data: bytes, start: int, records: list[tuple[int, bytes]]) -> list[dict]:
    """Render records with absolute half-open offsets."""
    out = []
    pos = start
    for t, value in records:
        end = pos + 1 + len(value)
        out.append({"type": t, "width": len(value),
                    "value": u24(value) if len(value) in (2, 3, 4) else value.hex(),
                    "raw": value.hex(), "offset": pos, "end": end})
        pos = end
    return out


def u24(b: bytes) -> int:
    """DEPRECATED / SUPERSEDED (2026-08-09, remediation plan 3.3).

    Width-agnostic little-endian int.from_bytes used historically for the
    trailer marker.  The trailer marker is a *u32* (final 4 bytes) and is
    now read explicitly with `struct.unpack_from("<I", ...)` in
    `parse_trailer`; u24() is kept only for legacy record-value decoding
    (3-byte variant values), NOT for the marker.
    """
    return int.from_bytes(b, "little")


# ---------------------------------------------------------------------------
# Envelope + header (VERIFIED layer)
# ---------------------------------------------------------------------------

def parse_envelope(data: bytes) -> dict:
    """Envelope: prefix bytes + 'FFBA \\x00' + version. Empty dict if absent."""
    m = find_marker(data)
    if m is None:
        return {}
    moff, prefix = m
    if moff + 7 > len(data):
        return {}
    return {"marker_offset": moff, "prefix": prefix.hex(),
            "version": data[moff + 6]}


def parse_header(data: bytes, envelope: dict) -> dict:
    """v1/v0 header fields (round-14 layout, fffba-format.md §2)."""
    moff = envelope["marker_offset"]
    vpos = moff + 6
    version = envelope["version"]
    hdr = {"raw": data[vpos:vpos + 24].hex()}
    if version == 0x01:
        hdr["common"] = data[vpos:vpos + 5].hex()
        hdr["u32s"] = [struct.unpack_from("<I", data, vpos + 5 + 4 * i)[0]
                       for i in range(3) if vpos + 5 + 4 * i + 4 <= len(data)]
        hdr["tail"] = data[vpos + 17:vpos + 29].hex()
        hdr["candidate_start"] = vpos + 5
    else:
        p = vpos + 2
        hdr["u32s"] = [struct.unpack_from("<I", data, p + 4 * i)[0]
                       for i in range(5) if p + 4 * i + 4 <= len(data)]
        hdr["tail"] = data[p + 20:p + 30].hex()
        hdr["candidate_start"] = p + 20
    return hdr


def parse_stream(data: bytes, start: int, end: int,
                 table: dict | None = None, max_records: int = 200000):
    """Parse [type][value] records; stops at 0xf0 (terminal) or unknown type.

    Returns (records, pos, stop_reason) - reason in {'term','unknown','end'}.
    record = (type, value_bytes).
    """
    if table is None:
        table = FLOW_TYPE_SIZES
    recs = []
    pos = start
    while pos < end and len(recs) < max_records:
        t = data[pos]
        if t in TERMINAL_TYPES:
            return recs, pos, "term"
        ln = table.get(t)
        if ln is None or pos + 1 + ln > end:
            return recs, pos, "unknown"
        recs.append((t, data[pos + 1:pos + 1 + ln]))
        pos += 1 + ln
    return recs, pos, "end"


def find_stream_start(data: bytes, start: int, end: int,
                      table: dict, min_records: int = 2) -> int | None:
    """u32-aligned candidate whose parse runs longest (same strategy as
    fffba_parse). Deterministic."""
    best = (0, None)
    for k in range(0, 24):
        cand = start + 4 * k
        if cand >= end:
            break
        if data[cand] not in table and data[cand] not in TERMINAL_TYPES:
            continue
        recs, pos, why = parse_stream(data, cand, end, table)
        score = len(recs) + (10 if why == "term" else 0)
        if score > best[0]:
            best = (score, cand)
    return best[1]


# ---------------------------------------------------------------------------
# Strings
# ---------------------------------------------------------------------------

def all_strings(data: bytes, min_len: int = 4) -> list[dict]:
    """Every printable ASCII run (>= min_len, alpha-containing) with offsets."""
    out = []
    cur = None
    for i in range(len(data)):
        c = data[i]
        if 0x20 <= c < 0x7F:
            if cur is None:
                cur = i
        else:
            if cur is not None and i - cur >= min_len:
                s = data[cur:i].decode("ascii", "replace")
                if any(ch.isalpha() for ch in s):
                    out.append({"offset": cur, "text": s})
            cur = None
    if cur is not None and len(data) - cur >= min_len:
        s = data[cur:].decode("ascii", "replace")
        if any(ch.isalpha() for ch in s):
            out.append({"offset": cur, "text": s})
    return out


# ---------------------------------------------------------------------------
# Interval coverage validation (2026-08-09, remediation plan 3.2)
# ---------------------------------------------------------------------------

def verify_intervals(intervals: list[tuple[str, int, int]],
                     size: int) -> tuple[bool, list[str]]:
    """Validate that `intervals` partition [0, size) exactly.

    intervals: sorted list of (kind, start, end) half-open byte ranges.
    Returns (ok, issues):
      ok     True iff the ranges are non-overlapping, gapless, sorted, and
             together cover exactly [0, size).
      issues human-readable descriptions of every violation (empty when ok).
    """
    issues: list[str] = []
    if not intervals:
        return False, ["no intervals"]
    # 1) non-overlap + non-negative lengths (independent of coverage)
    prev_end = intervals[0][1]
    if prev_end < 0:
        issues.append("%s: start %d < 0" % (intervals[0][0], prev_end))
    for kind, s, e in intervals:
        if s > e:
            issues.append("%s: negative length [%d, %d)" % (kind, s, e))
        elif s < prev_end:
            issues.append("%s: overlaps previous interval ([%d, %d) vs prev end %d)"
                          % (kind, s, e, prev_end))
        prev_end = max(prev_end, e)
    # 2) no gaps + exact [0, size) coverage, checked in one pass
    cursor = 0
    for kind, s, e in intervals:
        if s != cursor:
            issues.append("gap or overlap before %s: expected start %d, got %d"
                          % (kind, cursor, s))
        cursor = max(cursor, e)
    if cursor != size:
        issues.append("coverage ends at %d, expected size %d" % (cursor, size))
    return not issues, issues


# ---------------------------------------------------------------------------
# Trailer (layer 3)
# ---------------------------------------------------------------------------

def parse_trailer(data: bytes, start: int) -> dict:
    """Classify trailer bytes without absorbing unknown residual bytes into tables.

    Trailer layout (verified on the 2,482-flow corpus, 23-flow-grammar.md
    §4.3):
        [embedded strings ...]                     printable ASCII runs
        [offset tables]                            u24/u32 lists (decreasing
                                                   u24 run + increasing u32
                                                   run in v0 NewFlows; mixed
                                                   per-file key-value table
                                                   in legacy WorkFlow)
        [zero pad]                                 \\x00 bytes
        [schema-marker u32]                        LAST 4 BYTES - per-schema
                                                   constant (twin-flow proof:
                                                   three 1.9 KB flows with
                                                   different content all end
                                                   0x1CEC; five QS_buff
                                                   variants all end 0x0F12)

    Returns {"strings": [...], "table_bytes": n, "pad_bytes": n,
             "marker": int, "marker_width": int, "marker_endian": str,
             "residual": n, "residual_at": [offsets]}.
    `residual` counts bytes that could not be classified (printable runs
    shorter than min_len, binary gaps between tables).  For the flow corpus
    residual == 0.  NOTE (2026-08-09, plan 3.2): residual == 0 does NOT
    imply semantic completeness; it only says the coarse classifier consumed
    every byte.  `marker` is the final 4 bytes read as an explicit
    little-endian u32 (marker_width == 4, marker_endian == "little").
    """
    n = len(data)
    out = {"strings": [], "table_bytes": 0, "pad_bytes": 0,
           "marker": None, "marker_width": None, "marker_endian": None,
           "residual": 0, "residual_at": []}
    if start >= n:
        return out
    # 0xf0 is the stream delimiter at the body/trailer boundary; it is
    # accounted by the record interval, not as trailer residual.
    scan_start = start + 1 if data[start] in TERMINAL_TYPES else start
    # marker = final u32 (little-endian) — remediation plan 3.3
    if n - scan_start >= 4:
        out["marker"] = struct.unpack_from("<I", data, n - 4)[0]
        out["marker_width"] = 4
        out["marker_endian"] = "little"
        end = n - 4
    else:
        end = n
    # strings: printable runs >= 4 chars with an alpha char, within (start, end)
    for s in all_strings(data, 4):
        if scan_start <= s["offset"] < end:
            out["strings"].append(s["text"])
    # every other byte is table/pad; classify zero runs as pad
    pos = scan_start
    while pos < end:
        b = data[pos]
        if b == 0:
            run = pos
            while run < end and data[run] == 0:
                run += 1
            out["pad_bytes"] += run - pos
            pos = run
        else:
            # printable run (>=1 byte, any printable) or binary byte
            run = pos
            while run < end and 0x20 <= data[run] < 0x7F:
                run += 1
            if run > pos:
                out["table_bytes"] += run - pos
                pos = run
            else:
                # Unknown binary bytes are residual, not an offset-table claim.
                out["residual"] += 1
                out["residual_at"].append(pos)
                pos += 1
    return out


# ---------------------------------------------------------------------------
# Top-level parse
# ---------------------------------------------------------------------------

def parse_bytes(data: bytes) -> dict:
    """Parse one flow-graph container. Never raises.

    Returns (round-23 keys; v1 keys kept for compatibility):
      envelope / header / header_records / header_stop   (layer 1, verified)
      body_offset / body / body_records / body_stop      (layer 2)
      sections (0xf0-delimited blocks) / strings         (layer 2/3)
      trailer / residual / byte_accounting               (layer 3, new)
      computed_byte_sum / accounting_delta / complete    (remediation 3.2)
      intervals / interval_labels / accounting_issues    (remediation 3.2)

    Accounting semantics (2026-08-09, plan 3.2; see module docstring):
      computed_byte_sum  = envelope + header + records + trailer lengths
                           (trailer length includes the 4 marker bytes)
      accounting_delta   = computed_byte_sum - len(data)
      complete           True ONLY when `intervals` partition [0, len(data))
                           exactly (no overlap, no gap).  Any accounting
                           mismatch -> complete == False.
      residual           classifier leftovers in the trailer; residual == 0
                           does NOT imply semantic completeness.
    Legacy `byte_sum` is kept (it equals len(data) after the old forced
    reassignment) and is marked SUPERSEDED below.
    """
    res = {"ok": False, "size": len(data), "envelope": None, "header": None,
           "header_records": [], "header_stop": None,
           "body_offset": None, "body": b"",
           "body_records": [], "body_stop": None,
           "sections": [], "strings": [], "trailer": None,
           "residual": 0, "byte_accounting": {}, "errors": [],
           "byte_sum": None,
           "computed_byte_sum": None, "accounting_delta": None,
           "complete": False, "accounting_issues": [],
           "intervals": [], "interval_labels": {}}
    env = parse_envelope(data)
    if not env:
        res["errors"].append("no FFBA marker")
        return res
    res["envelope"] = env
    res["header"] = parse_header(data, env)

    # layer 1 (VERIFIED): container-header records with the round-14 table
    start = res["header"]["candidate_start"]
    sstart = find_stream_start(data, start, len(data), TYPE_SIZES)
    if sstart is None:
        res["errors"].append("no record stream found")
        return res
    recs, pos, why = parse_stream(data, sstart, len(data), TYPE_SIZES)
    res["header_records"] = records_with_offsets(data, sstart, recs)
    res["header_stop"] = {"pos": pos, "reason": why,
                          "next_byte": data[pos] if pos < len(data) else None}
    res["ok"] = True
    if why != "term" and why != "unknown":
        res["errors"].append("header stream %s at %#x" % (why, pos))

    # layer 2: body = everything after the layer-1 stream
    body_start = pos
    res["body_offset"] = body_start
    res["body"] = data[body_start:]

    # body record stream, stopping at the first embedded string
    first_str = None
    for s in all_strings(data, 5):
        if s["offset"] >= body_start:
            first_str = s["offset"]
            break
    body_end = first_str if first_str is not None else len(data)
    brecs, bpos, bwhy = parse_stream(data, body_start, body_end)
    res["body_records"] = records_with_offsets(data, body_start, brecs)
    res["body_stop"] = {"pos": bpos, "reason": bwhy,
                        "next_byte": data[bpos] if bpos < len(data) else None}

    # 0xf0-delimited chained blocks [VERIFIED structure]
    sections = []
    p = body_start
    while p < bpos:
        recs, pos, why = parse_stream(data, p, bpos)
        if not recs:
            break
        sections.append({"offset": p, "end": pos, "records": len(recs),
                         "stop": why, "types": [t for t, _ in recs]})
        if why != "term" or pos >= len(data):
            break
        p = pos + 1
    res["sections"] = sections

    res["strings"] = [s["text"] for s in all_strings(data, 4)]

    # layer 3: trailer accounting
    trailer_start = bpos
    if first_str is not None and first_str < trailer_start:
        trailer_start = first_str
    res["trailer"] = parse_trailer(data, trailer_start)
    res["residual"] = res["trailer"]["residual"]

    # ------------------------------------------------------------------
    # Byte accounting (2026-08-09, remediation plan 3.2)
    # ------------------------------------------------------------------
    n = len(data)
    env = env or {}
    moff = env.get("marker_offset")
    env_len = (moff + 7) if moff is not None else 0
    trailer = res["trailer"] or {}
    marker = trailer.get("marker")
    # marker interval: the final 4 bytes when a marker was read
    marker_start = (n - 4) if marker is not None else None
    # trailer interval: trailer_start .. marker_start (or EOF when no marker)
    trailer_end = marker_start if marker_start is not None else n

    # Coarse intervals.  `envelope` covers the FFBA envelope (prefix +
    # "FFBA \x00" + version).  `header` covers [env_end, body_offset): the
    # layer-1 header fields *and* the layer-1 record stream (historical
    # header length = body_offset).  `records` covers [body_offset, bpos):
    # the layer-2 record stream; its trailing portion (if any) is
    # re-classified into strings/trailer/marker by the trailer layer, so
    # the coarse interval is a superset, not a double count.
    intervals = [
        ("envelope", 0, env_len),
        ("header", env_len, body_start),
        ("records", body_start, bpos),
        ("trailer", trailer_start, trailer_end),
    ]
    if marker_start is not None:
        intervals.append(("marker", marker_start, n))

    computed = env_len + (body_start - env_len) + (bpos - body_start) \
        + (trailer_end - trailer_start)
    if marker_start is not None:
        computed += n - marker_start
    delta = computed - n
    acct_ok, acct_issues = verify_intervals(intervals, n)
    # complete requires exact partition AND an exact byte sum; the two are
    # derived from the same offsets, so this is belt-and-suspenders — any
    # accounting mismatch forces complete == False (remediation plan 3.2).
    complete = acct_ok and delta == 0

    res["intervals"] = [{"kind": k, "start": s, "end": e, "bytes": e - s}
                        for k, s, e in intervals]
    res["interval_labels"] = {
        "envelope": "FFBA envelope (prefix + 'FFBA \\x00' + version byte)",
        "header": "layer-1 header fields + layer-1 record stream "
                  "[0..body_offset), historical width",
        "records": "layer-2 body record stream [body_offset, body_stop), "
                   "historical width; tail re-classified by trailer layer",
        "trailer": "trailer region (strings + offset tables + pad) "
                   "up to the marker",
        "marker": "final schema-marker u32 (4 bytes, little-endian)",
    }
    res["accounting_issues"] = acct_issues

    # Legacy byte_accounting (round-23, SUPERSEDED 2026-08-09 plan 3.2):
    # kept byte-for-byte identical to the old formula for backward
    # compatibility.  NOTE the old `header` entry (== body_offset)
    # deliberately included the layer-1 record stream, the old `trailer`
    # entry (== n - trailer_start) deliberately included the marker, and the
    # old `envelope` entry added an approximate prefix term — so these four
    # entries do NOT sum to len(data) and must NOT be used as an independent
    # check.  Use `intervals` + computed_byte_sum / accounting_delta instead.
    prefix_len = len(env.get("prefix", "")) // 2
    res["byte_accounting"] = {
        "envelope": (env_len + prefix_len),
        "header": body_start,
        "records": bpos - body_start,
        "trailer": n - trailer_start,
    }

    # computed values (remediation 3.2): the un-tampered accounting.
    res["computed_byte_sum"] = computed
    res["accounting_delta"] = delta          # computed - len(data); 0 => exact
    res["complete"] = complete               # True ONLY on exact coverage

    # Legacy byte_sum (round-23 / SUPERSEDED, plan 3.2): the old code forced
    # byte_sum = len(data) when the sum did not match, which masked overlap /
    # omission / envelope bugs.  Kept for backward compatibility; do NOT use
    # it for new logic — read computed_byte_sum + accounting_delta instead.
    res["byte_sum"] = n
    if delta != 0:
        res["errors"].append(
            "byte accounting delta %d (computed_byte_sum %d != size %d)"
            % (delta, computed, n))
    if not complete:
        res["errors"].append("accounting intervals do not cover [0, %d) "
                             "exactly: %s" % (n, "; ".join(acct_issues)))
    # residual == 0 only means the coarse classifier consumed every byte;
    # it never implies semantic (node/evaluator) completeness — see module
    # docstring.  `ok` is gated on exact coverage so downstream consumers
    # do not read semantic fields from a mis-accounted file.
    if not complete:
        res["ok"] = False
    return res


# ---------------------------------------------------------------------------
# Flow-level interpretation [INFERENCE]
# ---------------------------------------------------------------------------

def parse_flow(data: bytes) -> dict:
    """Flow-level view: config id, header facts, body motifs, heuristic nodes.

    `nodes` is a best-effort segmentation [INFERENCE]: body records are split
    at 0x13 'instance-id' records that follow an asset-hash / resource-ref
    record (the assetArgs/varShells boundary).  Orientation only - the raw
    body_records are authoritative.
    """
    p = parse_bytes(data)
    cfg = {"config_type": None, "tag40": None, "resource_refs": [],
           "hash_refs": [], "ids": [], "strings": []}
    for r in p["header_records"]:
        # config-type id 6312 rides on a variant type byte: 0x1b (27) in
        # v1/equip flows, 0x13 (19) and 0x1c (28) in some v0/other flows
        if r["type"] in (0x1B, 0x13, 0x1C) and r["value"] == CONFIG_TYPE_ID:
            cfg["config_type"] = r["value"]
            cfg.setdefault("config_type_tag", r["type"])
        if r["type"] == 0x04:
            cfg["tag40"] = r["value"]
        if r["type"] == 0x22:
            cfg["resource_refs"].append(r["value"])
        if r["type"] in HASH_TYPES:
            cfg["hash_refs"].append(r["raw"])
        if r["type"] in (0x13, 0x1B):
            cfg["ids"].append(r["value"])
    cfg["strings"] = p["strings"]

    nodes = []
    cur = None
    for r in p["body_records"]:
        if r["type"] == 0x13 and cur is None:
            cur = {"instance_id": r["value"], "fields": []}
        elif cur is not None:
            cur["fields"].append(r)
            if r["type"] in HASH_TYPES or r["type"] == 0x22:
                nodes.append(cur)
                cur = None
    if cur is not None:
        nodes.append(cur)

    # round-23: node-id census + record-token census
    body_types = [r["type"] for r in p["body_records"]]
    cfg["body_record_types"] = sorted(set(body_types))
    cfg["node_id_count"] = sum(1 for r in p["body_records"] if r["type"] == 0x13)

    out = dict(p)
    out["config"] = cfg
    for node in nodes:
        node["quality"] = "inferred" if node.get("fields") else "weak"
        node["offset"] = node["fields"][0].get("offset", 0) - 4 if node.get("fields") else None
        node["end"] = node["fields"][-1].get("end") if node.get("fields") else None
    out["nodes"] = nodes
    out["semantic_flags"] = {"config_type_known": cfg["config_type"] is not None,
                             "node_ids_present": bool(cfg["node_id_count"]),
                             "heuristic": True}
    return out


def summarize(p: dict) -> str:
    env = p["envelope"] or {}
    hdr = p["header"] or {}
    tr = p["trailer"] or {}
    return ("size=%d ver=%s prefix=%s u32s=%s hdr_recs=%d(%s) body=%dB "
            "body_recs=%d strings=%d sections=%d trailer=%dB(marker=%s) "
            "residual=%d complete=%s delta=%+d"
            % (p["size"], env.get("version"), env.get("prefix"),
               hdr.get("u32s"), len(p["header_records"]),
               p["header_stop"] and p["header_stop"]["reason"],
               len(p["body"]), len(p["body_records"]),
               len(p["strings"]), len(p["sections"]),
               len(p["body"]) - (p["body_stop"]["pos"] - p["body_offset"]),
               tr.get("marker"), p["residual"],
               p.get("complete"), p.get("accounting_delta")))


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("paths", nargs="*")
    ap.add_argument("--json", action="store_true", dest="as_json")
    ap.add_argument("--validate", metavar="CORPUS_DIR",
                    help="parse every flow member of full/equips.json + runes.json")
    a = ap.parse_args()
    if a.validate:
        base = a.validate
        n_ok = n_err = n_found = n_resid = 0
        n_flow = n_eq = n_rune = n_hero = 0
        for corpus in ("full/equips.json", "full/runes.json", "full/heroes.json"):
            js = json.load(open(os.path.join(base, corpus)))
            members = js if isinstance(js, list) else js.get("runes", [])
            for m in members:
                if not isinstance(m, dict) or m.get("kind") != "flow":
                    continue
                vfs = m["vfs"][:-4] if m["vfs"].endswith(".vfs") else m["vfs"]
                g = glob.glob(os.path.join(base, "decrypted-samples/vfs-extracted",
                                           vfs + ".vfs__%03d_*" % m["idx"]))
                if not g:
                    continue
                n_found += 1
                p = parse_bytes(open(g[0], "rb").read())
                if p["ok"]:
                    n_ok += 1
                    if p["residual"]:
                        n_resid += 1
                else:
                    n_err += 1
        print("validate: found_on_disk=%d ok=%d err=%d residual>0=%d"
              % (n_found, n_ok, n_err, n_resid))
        return 0
    if not a.paths:
        ap.error("no input files")
    for fn in a.paths:
        p = parse_flow(open(fn, "rb").read())
        if a.as_json:
            p = dict(p)
            p["body"] = p["body"].hex()
            print(json.dumps(p, ensure_ascii=False, indent=1))
        else:
            print(fn, "->", summarize(p))
            for r in p["header_records"][:14]:
                print("   hdr %#04x w=%d v=%r" % (r["type"], r["width"], r["value"]))
            if p["config"]["resource_refs"]:
                print("   resource_refs:", [hex(x) for x in p["config"]["resource_refs"]])
            if p["nodes"]:
                print("   nodes[INFERENCE]:", len(p["nodes"]),
                      [n["instance_id"] for n in p["nodes"]])
    return 0


if __name__ == "__main__":
    sys.exit(main())
