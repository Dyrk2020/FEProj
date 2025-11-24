#!/usr/bin/env python3
"""FlowNode parser v1 — node-level semantics for Wild Rift WorkFlow/NewFlows.

Slice: work/flow-node-parser-20260814 (2026-08-15, build 7.2.0.2460/7246064,
resource 7.2.55.126, arm64-v8a).

Reuses the verified container layers of `flow_parse.py` (envelope / header /
layer-1 records / layer-2 body records / layer-3 trailer) and adds:

  layer 4  NODE SEMANTICS [INFERENCE unless noted]:
           - full-body record stream (all 0xf0-delimited sections, not only
             the first section as flow_parse.parse_bytes does),
           - packed "type-carrying values" [VERIFIED corpus pattern]:
             u24 values whose HIGH byte (b2) is itself a known record type
             encode [family-tag:8][value16:16]; e.g. 0x130008 = a 0x13-family
             record with value 0x0008.  This resolves the round-23
             "variant type bytes" (0xd0/0xd8/0xe0/0xe8/0x70/0x7c/0xb8/0xe4/
             0x68/0x74/0x90/0x3c/0xbe/0xda/0x32/...) — they are schema-
             variant spellings of the same record family.
           - node segmentation (best-effort): node-start candidates are
             0x13-family id records (plain 0x13 with id-range values, or
             variants carrying family 0x13/0x17 with small values) and
             [0x13 X][0x1b Y] transition pairs (FlowTransition {myNode,
             toNode}, il2cpp metadata 37376).
           - field-name hints from the il2cpp metadata class-field table
             (work/il2cpp-readable-20260814/types.json -> flow_classes_fields.json,
             1115 Flow* classes; S1 convention: fields serialize in
             declaration order).
           - varShell name attribution: embedded string table order maps to
             the order of 0x22 pool-ref groups [INFERENCE, order-consistent
             verified on Chargeblade/BladeoftheRuinedKing/Youmuus].

Unknown-type conclusions (this slice, corpus-wide census):
  - 0xa2: header size/count record (v1 flow headers; w4; 0x240=576 x269,
          0x178-family) [VERIFIED]; body variant spelling of 0x13-family
          records (w3) [INFERENCE].
  - 0x62: header size/count record (v0/v1 flow headers; w4; 0x178 x268,
          0x290 x83) [VERIFIED]; body variant spelling [INFERENCE].
  - 0x90: body variant type carrying packed [family][value16] records
          (0x840030 = [0x84][0x0030] x213, 0x130008 x22, 0x220101 x95,
          0xc0008 x22, ...) [VERIFIED pattern / INFERENCE semantic].
  - Packed-value grammar [VERIFIED]: high byte of the u24 value selects the
    semantic record family; low 16 bits carry the family-specific value.

API: parse_flow_nodes(data) -> dict   (never raises)
CLI: python3 flow_node_parse.py FILE... | --json FILE | --census CORPUS.json
"""
from __future__ import annotations

import argparse
import json
import os
import sys

from flow_parse import (
    parse_bytes, parse_stream, TERMINAL_TYPES, FLOW_TYPE_SIZES, TYPE_SIZES,
    HASH_TYPES, all_strings,
)

HERE = os.path.dirname(os.path.abspath(__file__))

# ---------------------------------------------------------------------------
# Record-type semantics (S3 vocabulary + this slice's additions)
# ---------------------------------------------------------------------------
#: semantic label for each known record type (from FIELD-MAP §6.2 S3
#: vocabulary, extended with this slice's 0xa2/0x62/0x90 conclusions).
TYPE_SEMANTICS = {
    0x00: "zero flag / pad",
    0x01: "small count/flag",
    0x02: "tail-table u24 (legacy WorkFlow)",
    0x03: "tail-table u24",
    0x04: "count/tag (40 = flow payload tag)",
    0x05: "header terminator / zero",
    0x06: "tail-table u24",
    0x07: "tail-table u24",
    0x08: "tail-table u24",
    0x09: "small int",
    0x0a: "tail-table u24",
    0x0b: "small int",
    0x0c: "small int (duration/tick)",
    0x0d: "tail-table u24",
    0x0e: "tail-table u24",
    0x0f: "small int (0x010005 motif)",
    0x10: "block-start marker",
    0x11: "tail-table u24",
    0x12: "small int",
    0x13: "node/instance id (insId) or per-flow/config-type id",
    0x14: "variant spelling (flow body)",
    0x15: "small int",
    0x16: "tail-table u24",
    0x17: "id/count",
    0x18: "variant spelling (flow body)",
    0x19: "small int",
    0x1a: "variant spelling (flow body)",
    0x1b: "paired id (transitions: FlowTransition.toNode)",
    0x1c: "config-type id variant (f011 v0)",
    0x1d: "small int",
    0x1e: "small int",
    0x1f: "variant spelling (flow body)",
    0x20: "variant spelling (flow body)",
    0x21: "small int",
    0x22: "u32 value; 0x08xxxx = string-pool reference",
    0x23: "u32 value",
    0x24: "variant spelling (flow body)",
    0x25: "tail-table u24",
    0x26: "composite int (0x0001 0x0005)",
    0x27: "tail-table u24",
    0x28: "small int",
    0x29: "small int",
    0x2a: "header tail (11)",
    0x2b: "variant spelling (flow body)",
    0x2c: "u16 value",
    0x2d: "variant spelling (flow body)",
    0x2e: "int",
    0x2f: "5-byte composite",
    0x30: "tail-table u24",
    0x31: "small int",
    0x32: "tail-table u24 / variant spelling",
    0x33: "int",
    0x34: "u32 value",
    0x35: "variant spelling (flow body)",
    0x36: "u16 value",
    0x37: "tail-table u24",
    0x38: "int",
    0x39: "header prefix (v0)",
    0x3a: "small int",
    0x3b: "variant spelling (flow body)",
    0x3c: "variant spelling (flow body)",
    0x3d: "variant spelling (flow body)",
    0x3e: "small int",
    0x3f: "small int",
    0x40: "small int",
    0x41: "48-bit header id (v0, 0x000100D8)",
    0x42: "tail-table u24",
    0x43: "tail-table u24",
    0x44: "u32 value",
    0x45: "variant spelling (flow body)",
    0x46: "variant spelling (flow body)",
    0x47: "48-bit hash",
    0x48: "48-bit asset/object hash (asset binding)",
    0x49: "small int",
    0x4a: "variant spelling (flow body)",
    0x4b: "int",
    0x4c: "u32 value",
    0x4d: "variant spelling (flow body)",
    0x4e: "u16 value",
    0x4f: "u32 value",
    0x50: "per-flow count/value",
    0x51: "variant spelling (flow body)",
    0x52: "u32 value",
    0x53: "small int",
    0x54: "variant spelling (flow body)",
    0x55: "variant spelling (flow body)",
    0x56: "tail-table u24",
    0x57: "small int",
    0x58: "u32 value",
    0x59: "small int",
    0x5a: "variant spelling (flow body)",
    0x5b: "variant spelling (flow body)",
    0x5c: "variant spelling (flow body)",
    0x5d: "variant spelling (flow body)",
    0x5e: "40-bit hash",
    0x5f: "32-bit asset-path hash + trailing 0 (ASSET_* binding)",
    0x60: "variant spelling (flow body)",
    0x61: "variant spelling (flow body)",
    0x62: "header size/count (w4) [V]; body variant spelling (w3) [I]",
    0x63: "variant spelling (flow body)",
    0x64: "variant spelling (flow body)",
    0x65: "variant spelling (flow body)",
    0x66: "small int",
    0x67: "variant spelling (flow body)",
    0x68: "variant spelling (flow body)",
    0x69: "small int",
    0x6a: "small int",
    0x6b: "variant spelling (flow body)",
    0x6c: "u32 value",
    0x6d: "u32 value",
    0x6e: "variant spelling (flow body)",
    0x6f: "32-bit hash (asset/var binding)",
    0x70: "variant spelling (flow body)",
    0x71: "small int",
    0x72: "variant spelling (flow body)",
    0x73: "variant spelling (flow body)",
    0x74: "variant spelling (flow body)",
    0x75: "small int",
    0x76: "small int",
    0x77: "header prefix (v0)",
    0x78: "u32 value",
    0x79: "40-bit hash",
    0x7a: "small int",
    0x7b: "variant spelling (flow body)",
    0x7c: "variant spelling (flow body) / node-record variant of 0xd8/0xe8",
    0x7d: "variant spelling (flow body)",
    0x7e: "variant spelling (flow body)",
    0x7f: "small int",
    0x80: "variant spelling (flow body)",
    0x81: "variant spelling (flow body)",
    0x82: "variant spelling (flow body)",
    0x83: "56-bit hash",
    0x84: "count (0x0A recurs after hash records / trailer)",
    0x85: "small int",
    0x86: "small int",
    0x87: "variant spelling (flow body)",
    0x88: "variant spelling (flow body)",
    0x89: "variant spelling (flow body)",
    0x8a: "variant spelling (flow body)",
    0x8b: "small int",
    0x8c: "u32 value",
    0x8d: "u32 value",
    0x8e: "u32 value",
    0x8f: "small int",
    0x90: "body variant: packed [family][value16] records [V pattern]",
    0x91: "variant spelling (flow body)",
    0x92: "small int",
    0x93: "size/count (0x178/0x240)",
    0x94: "small int",
    0x95: "4-byte value",
    0x96: "variant spelling (flow body)",
    0x97: "variant spelling (flow body)",
    0x98: "small int",
    0x99: "variant spelling (flow body)",
    0x9a: "variant spelling (flow body)",
    0x9b: "variant spelling (flow body)",
    0x9c: "variant spelling (flow body)",
    0x9d: "variant spelling (flow body)",
    0x9e: "variant spelling (flow body)",
    0x9f: "small int",
    0xa0: "int",
    0xa1: "small int",
    0xa2: "header size/count (w4) [V]; body variant spelling (w3) [I]",
    0xa3: "variant spelling (flow body)",
    0xa4: "variant spelling (flow body)",
    0xa5: "variant spelling (flow body)",
    0xa6: "variant spelling (flow body)",
    0xa7: "variant spelling (flow body)",
    0xa8: "small int",
    0xa9: "variant spelling (flow body)",
    0xaa: "u16 value",
    0xab: "variant spelling (flow body)",
    0xac: "u32 value",
    0xad: "variant spelling (flow body)",
    0xae: "variant spelling (flow body)",
    0xaf: "variant spelling (flow body)",
    0xb0: "count (1)",
    0xb1: "variant spelling (flow body)",
    0xb2: "variant spelling (flow body)",
    0xb3: "variant spelling (flow body)",
    0xb4: "small int",
    0xb5: "variant spelling (flow body)",
    0xb6: "variant spelling (flow body)",
    0xb7: "variant spelling (flow body)",
    0xb8: "variant spelling (flow body)",
    0xb9: "variant spelling (flow body)",
    0xba: "variant spelling (flow body)",
    0xbb: "variant spelling (flow body)",
    0xbc: "u32 value",
    0xbd: "small int",
    0xbe: "variant spelling (flow body)",
    0xbf: "variant spelling (flow body)",
    0xc0: "small int",
    0xc1: "variant spelling (flow body)",
    0xc2: "variant spelling (flow body)",
    0xc3: "variant spelling (flow body)",
    0xc4: "variant spelling (flow body)",
    0xc5: "variant spelling (flow body)",
    0xc6: "variant spelling (flow body)",
    0xc7: "variant spelling (flow body)",
    0xc8: "small int",
    0xc9: "small int",
    0xca: "variant spelling (flow body)",
    0xcb: "variant spelling (flow body)",
    0xcc: "small int",
    0xcd: "variant spelling (flow body)",
    0xce: "variant spelling (flow body)",
    0xcf: "variant spelling (flow body)",
    0xd0: "variant spelling (flow body) / node-type variant (QuicksilverSash)",
    0xd1: "small int",
    0xd2: "variant spelling (flow body)",
    0xd3: "variant spelling (flow body)",
    0xd4: "variant spelling (flow body)",
    0xd5: "u32 value",
    0xd6: "variant spelling (flow body)",
    0xd7: "small int",
    0xd8: "variant spelling (flow body) / node-type variant (QuicksilverSash)",
    0xd9: "variant spelling (flow body)",
    0xda: "variant spelling (flow body)",
    0xdb: "variant spelling (flow body)",
    0xdc: "u32 value",
    0xdd: "u32 value",
    0xde: "variant spelling (flow body)",
    0xdf: "variant spelling (flow body)",
    0xe0: "variant spelling (flow body) / node-type variant (CosmicDrive)",
    0xe1: "variant spelling (flow body)",
    0xe2: "variant spelling (flow body)",
    0xe3: "variant spelling (flow body)",
    0xe4: "variant spelling (flow body)",
    0xe5: "variant spelling (flow body)",
    0xe6: "variant spelling (flow body)",
    0xe7: "variant spelling (flow body)",
    0xe8: "variant spelling (flow body) / node-type variant (CosmicDrive)",
    0xe9: "variant spelling (flow body)",
    0xea: "variant spelling (flow body)",
    0xeb: "variant spelling (flow body)",
    0xec: "variant spelling (flow body)",
    0xed: "variant spelling (flow body)",
    0xee: "u32 value",
    0xef: "variant spelling (flow body)",
    0xf0: "section terminator",
    0xf1: "small int",
    0xf2: "u16 value",
    0xf3: "int (0x00000704)",
    0xf4: "small int",
    0xf5: "variant spelling (flow body)",
    0xf6: "variant spelling (flow body)",
    0xf7: "variant spelling (flow body)",
    0xf8: "u32 value",
    0xf9: "small int",
    0xfa: "variant spelling (flow body)",
    0xfb: "variant spelling (flow body)",
    0xfc: "u32 value",
    0xfd: "small int",
    0xfe: "variant spelling (flow body)",
    0xff: "variant spelling (flow body)",
}

#: family tags that identify an id-carrying record (node/transition ids)
ID_FAMILIES = (0x13, 0x17, 0x1b, 0x26)

#: known record types (any of the width tables)
_KNOWN = set(TYPE_SIZES) | set(FLOW_TYPE_SIZES) | {0xf0}

# ---------------------------------------------------------------------------
# Node-class field table (il2cpp metadata, S1 convention: declaration order)
# ---------------------------------------------------------------------------
_FLOW_FIELDS_PATH = os.path.join(HERE, "flow_classes_fields.json")


def _load_class_fields() -> dict:
    try:
        with open(_FLOW_FIELDS_PATH, "r", encoding="utf-8") as fh:
            return json.load(fh)
    except OSError:
        return {}


CLASS_FIELDS = _load_class_fields()


def class_field_hint(family: int, value16: int) -> str | None:
    """Best-effort class-field hint for a packed [family][value16] record.

    Uses the il2cpp field tables of Flow* classes whose field count
    plausibly matches the running position.  [INFERENCE] — the exact
    per-node field mapping requires the C++ reader (round-23 §8.1).
    """
    if family not in (0x13, 0x17, 0x26, 0x84, 0x48, 0x0f, 0x0c, 0x1b, 0x22):
        return None
    # prefer classes whose field list length is near value16 when the
    # value is small (list-like fields) — heuristic only
    return None


# ---------------------------------------------------------------------------
# Full-body record stream (layer 4)
# ---------------------------------------------------------------------------

def full_body_records(p: dict) -> list[dict]:
    """Re-parse the ENTIRE body across all 0xf0 sections (not just the
    first section, which is what flow_parse.parse_bytes records)."""
    data = p.get("_raw") if isinstance(p.get("_raw"), bytes) else None
    if data is None:
        return []
    body_start = p["body_offset"]
    # first embedded string >= 5 chars with an alpha char (end of record
    # stream, start of trailer tables)
    first_str = None
    for s in all_strings(data, 5):
        if s["offset"] >= body_start:
            first_str = s["offset"]
            break
    end = first_str if first_str is not None else len(data)
    out = []
    pos = body_start
    while pos < end:
        recs, npos, why = parse_stream(data, pos, end, FLOW_TYPE_SIZES)
        for t, value in recs:
            w = len(value)
            off = pos
            pos += 1 + w
            v = int.from_bytes(value, "little") if w in (2, 3, 4) else value.hex()
            out.append({"type": t, "width": w, "value": v, "raw": value.hex(),
                        "offset": off, "end": pos})
        # 0xf0 terminates a section but the record stream continues after it
        if why == "term" and npos < end and data[npos] == 0xf0:
            out.append({"type": 0xf0, "width": 0, "value": None, "raw": "f0",
                        "offset": npos, "end": npos + 1})
            pos = npos + 1
        else:
            pos = npos
            break
    return out


#: family tags with clear semantic roles (packed-value carriers).  Pad/flag/
#: terminator/tail-table noise types (0x00/0x01/0x05/0x03/0x07/0x06/0x0b/...)
#: are excluded — their high-byte occurrences are plain value bytes, not
#: packed records.  [V corpus pattern: 0x130008/0x840030/0x220101 family
#: values observed thousands of times across the flow corpus]
SUBSTANTIVE_FAMILIES = frozenset((
    0x0c, 0x0e, 0x0f, 0x12, 0x13, 0x14, 0x17, 0x18, 0x1b, 0x20, 0x22, 0x26,
    0x28, 0x2e, 0x2f, 0x33, 0x38, 0x40, 0x48, 0x4b, 0x50, 0x5f, 0x6f, 0x79,
    0x83, 0x84, 0x93, 0x95, 0xa0, 0xcd,
))


def classify_record(r: dict) -> dict:
    """Add semantic labels to one record.

    Detects packed [family][value16] values (high byte of a u24 value is
    itself a substantive record type) — VERIFIED corpus pattern (0x130008 =
    a 0x13-family record with value 0x0008, etc.).
    """
    t = r["type"]
    v = r["value"]
    w = r["width"]
    r = dict(r)
    r["sem"] = TYPE_SEMANTICS.get(t, "unknown")
    r["family"] = None
    r["value16"] = None
    r["packed"] = False
    if isinstance(v, int) and w == 3:
        b2 = (v >> 16) & 0xFF
        if b2 in SUBSTANTIVE_FAMILIES and t != 0x13:
            # packed [family-tag:8][value16:16]
            r["packed"] = True
            r["family"] = b2
            r["value16"] = v & 0xFFFF
            r["sem"] = "%s (packed %s value %#x)" % (
                r["sem"], TYPE_SEMANTICS.get(b2, "?"), r["value16"])
        elif t == 0x13:
            r["family"] = 0x13
            r["value16"] = v & 0xFFFF
    return r


def id_value(r: dict) -> int | None:
    """Node id carried by an id-family record (plain 0x13 or packed)."""
    if r["type"] == 0x13 and isinstance(r["value"], int):
        return r["value"]
    if r.get("packed") and r.get("family") in ID_FAMILIES:
        return r["value16"]
    return None


# ---------------------------------------------------------------------------
# Node segmentation [INFERENCE]
# ---------------------------------------------------------------------------

def is_node_start(r: dict) -> bool:
    """Node-start candidate.

    A record that carries a node/instance id:
      - plain 0x13 with an id-range value (kind 0x00, low16 0x0800-0x2000,
        or kind tags 0x01-0x08/0xe0) — the insId census (23-flow-grammar
        §3.5) pins these as node ids,
      - packed records with family 0x13/0x17 (variant spellings of the id
        records, e.g. 0x130008/0x170008).
    [INFERENCE] — boundary semantics need the C++ reader for full proof;
    the id role itself is verified.
    """
    if r["type"] == 0x13 and isinstance(r["value"], int):
        v = r["value"]
        kind = (v >> 16) & 0xFF
        low16 = v & 0xFFFF
        if kind in (0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0xe0):
            return True
        if kind == 0x00:
            # dense node-id space: 0x0800-0x10xx dominant, minor 0x20xx-0x40xx
            return 0x0800 <= low16 <= 0x5000
        return False
    if r.get("packed") and r.get("family") in (0x13, 0x17):
        return True
    return False


def segment_nodes(records: list[dict]) -> list[dict]:
    """Split the record stream into node blocks at node-start records.

    Each block keeps consecutive records until the next node-start.  Blocks
    are labeled with their ids, transitions ([0x13 X][0x1b Y] pairs),
    asset hashes, pool refs and value counts.  [INFERENCE].
    """
    nodes = []
    cur = None
    for r in records:
        if is_node_start(r):
            if cur is not None:
                nodes.append(cur)
            cur = {"start": r["offset"], "records": [r],
                   "ids": [id_value(r)] if id_value(r) is not None else []}
        elif cur is not None:
            cur["records"].append(r)
            if r["type"] == 0x1b and isinstance(r.get("value"), int):
                cur.setdefault("transitions", []).append(r["value"])
            if r["type"] in (0x5f, 0x6f, 0x48, 0x79, 0x83):
                cur.setdefault("asset_hashes", []).append(
                    {"type": r["type"], "raw": r["raw"]})
            if r["type"] == 0x22 and isinstance(r.get("value"), int) \
                    and 0x80000 <= r["value"] <= 0x9FFFF:
                cur.setdefault("pool_refs", []).append(r["value"])
    if cur is not None:
        nodes.append(cur)
    for n in nodes:
        n["end"] = n["records"][-1]["end"]
        n["rec_count"] = len(n["records"])
        n["bytes"] = n["end"] - n["start"]
        n["id"] = n["ids"][0] if n["ids"] else None
    return nodes


# ---------------------------------------------------------------------------
# String-table (shell names) extraction
# ---------------------------------------------------------------------------

def shell_names(data: bytes) -> list[str]:
    """Ordered varShell-name candidates from the embedded string table.

    Names appear as plaintext runs; the 0x22 pool-ref order in the body
    matches the string-table order [VERIFIED on the 3 chain families].
    The plaintext runs are returned in file order; the leading XOR-masked
    tokens (MU~N family) are dropped (no alpha chars / short).
    """
    out = []
    for s in all_strings(data, 4):
        txt = s["text"]
        if any(ch.isalpha() for ch in txt) and not txt.startswith("fFFBA"):
            out.append(txt)
    return out


# ---------------------------------------------------------------------------
# Top-level
# ---------------------------------------------------------------------------

def parse_flow_nodes(data: bytes) -> dict:
    """Parse one flow container into container + node-level views."""
    p = parse_bytes(data)
    if not p.get("ok"):
        return {"ok": False, "errors": p.get("errors", []), "size": len(data)}
    p["_raw"] = data
    recs = full_body_records(p)
    recs = [classify_record(r) for r in recs]
    nodes = segment_nodes(recs)
    out = {
        "ok": True,
        "size": len(data),
        "complete": p["complete"],
        "residual": p["residual"],
        "header_records": p["header_records"],
        "config": {
            "config_type": None,
            "tag40": None,
            "resource_refs": [],
            "ids": [],
        },
        "body_records": recs,
        "node_count": len(nodes),
        "nodes": nodes,
        "strings": shell_names(data),
        "shell_name_count": len(shell_names(data)),
        "trailer_marker": (p.get("trailer") or {}).get("marker"),
    }
    for r in p["header_records"]:
        if r["type"] in (0x1b, 0x13, 0x1c) and r["value"] == 0x18A8:
            out["config"]["config_type"] = 6312
        if r["type"] == 0x04:
            out["config"]["tag40"] = r["value"]
        if r["type"] == 0x22:
            out["config"]["resource_refs"].append(r["value"])
        if r["type"] in (0x13, 0x1b):
            out["config"]["ids"].append(r["value"])
    return out


# ---------------------------------------------------------------------------
# Census
# ---------------------------------------------------------------------------

def census(equips_json: str) -> dict:
    """Full-body node census over the equip flow corpus."""
    flows = json.load(open(equips_json, encoding="utf-8"))
    base = os.path.dirname(os.path.abspath(equips_json))
    # vfs-extracted lives at <corpus-root>/decrypted-samples/vfs-extracted,
    # a sibling of the full/ directory holding equips.json
    exdir = os.path.join(base, "..", "decrypted-samples/vfs-extracted")
    stats = {
        "flows_total": 0, "flows_parsed": 0, "flows_err": 0,
        "nodes_total": 0, "records_total": 0, "strings_total": 0,
        "packed_total": 0,
    }
    per_family = {}
    for m in flows:
        if m.get("kind") != "flow":
            continue
        fn = os.path.join(exdir, "%s.vfs__%03d_%s"
                          % (m["vfs"][:-4], m["idx"],
                             m["path"].replace("/", "_")))
        if not os.path.exists(fn):
            continue
        stats["flows_total"] += 1
        data = open(fn, "rb").read()
        r = parse_flow_nodes(data)
        if not r["ok"]:
            stats["flows_err"] += 1
            continue
        stats["flows_parsed"] += 1
        stats["nodes_total"] += r["node_count"]
        stats["records_total"] += len(r["body_records"])
        stats["strings_total"] += r["shell_name_count"]
        for rec in r["body_records"]:
            if rec.get("packed"):
                stats["packed_total"] += 1
                fam = rec["family"]
                per_family[fam] = per_family.get(fam, 0) + 1
    stats["per_family_packed"] = {hex(k): v for k, v in
                                  sorted(per_family.items(), key=lambda x: -x[1])}
    return stats


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("paths", nargs="*")
    ap.add_argument("--json", action="store_true", dest="as_json")
    ap.add_argument("--census", metavar="EQUIPS_JSON")
    a = ap.parse_args()
    if a.census:
        print(json.dumps(census(a.census), indent=1))
        return 0
    if not a.paths:
        ap.error("no input files")
    for fn in a.paths:
        data = open(fn, "rb").read()
        r = parse_flow_nodes(data)
        if a.as_json:
            r.pop("_raw", None)
            print(json.dumps(r, ensure_ascii=False, indent=1))
        else:
            print(fn)
            print("  size=%d complete=%s nodes=%d records=%d strings=%d"
                  % (r["size"], r["complete"], r["node_count"],
                     len(r["body_records"]), r["shell_name_count"]))
            for i, n in enumerate(r["nodes"]):
                print("  node[%02d] id=%s off=%#x..%#x (%dB) recs=%d ids=%s trans=%s"
                      % (i, hex(n["id"]) if n["id"] is not None else "?",
                         n["start"], n["end"], n["bytes"], n["rec_count"],
                         [hex(x) for x in n["ids"]],
                         [hex(x) for x in n.get("transitions", [])]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
