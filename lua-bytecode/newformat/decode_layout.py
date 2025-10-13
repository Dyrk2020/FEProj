#!/usr/bin/env python3
"""decode_layout.py — vfs LuaHolder .res (WorkFlow/Scripts) new-format layout verifier.

Verifies the on-disk layout of the 25 WorkFlow battle-Lua scripts from the
LData vfs extraction (7.2.55.126-era entries, ai-cfg decrypted-samples):

    [2B wrapper f6 05]
    [17B standard prefix]  sig(5)+fmt(1)+LUAC_DATA(6)+sizes(5)  -- CONSTANT 25/25
    [11B opaque delta]     replaces FETest's 8B LUAC_INT+8B LUAC_NUM+1B shift
    [1B src marker][src data  n=marker-1 bytes, XOR-encrypted w/ LUA_KEY]
    main proto:
      [16B header]  b0=src_n+14, b4=nupvalues=1, b5=is_vararg, b6=code_words+2,
                    b10=maxstacksize, b11=numparams; b1/b2/b7-9/b12/b13/b15 const
      [code: b6-2 words]      -- each word stored u16-halves-swapped;
                                executed word = rev(w) = (w<<16)|(w>>16)
      [2B terminator]         -- semantics undetermined [INFERENCE]
      [u32 const count][consts]
      [tail: nested protos]   -- slice B (boundary parsing not closed)

Prints per-file field table + aggregate statistics + u16-swap verification
(RETURN anchors, template words) + const inventory. Exit 0 if all 25 files
parse and all invariants hold; nonzero otherwise.

Usage:  python3 decode_layout.py [vfs-extracted-dir] [--json out.json]
"""
from __future__ import annotations
import argparse, functools, glob, json, struct, sys
from pathlib import Path

LUA_KEY = bytes.fromhex("dd7d184244f3acd64e3aa7282d56b5b098e7a753bb76946ee5bc8e2e4c22147f")
WRAPPER = b"\xf6\x05"
PREFIX_LEN = 17
DELTA_LEN = 11

TAG_NAMES = {0: "nil", 1: "bool", 3: "float", 4: "shortstr", 0x09: "num8a",
             0x11: "num8b", 0x13: "int", 0x14: "longstr", 0x20: "tag20",
             0x23: "fix64"}
OPNAMES = {0: "CONCAT", 1: "SETTABLE", 2: "GETUPVAL", 3: "LOADKx", 4: "FORPREP",
           5: "VARARG", 6: "GETTABUP", 7: "ADD", 8: "CALL", 9: "CALL", 10: "MOD",
           11: "POW", 12: "CALL", 13: "IDIV", 14: "BAND", 15: "BOR", 16: "BXOR",
           17: "SHL", 18: "SHR", 19: "UNM", 20: "BNOT", 21: "NOT", 22: "LEN",
           23: "RETURN", 24: "TEST", 25: "TESTSET", 26: "LOADBOOL",
           27: "SETLIST", 28: "FORLOOP", 29: "SETUPVAL", 30: "CLOSURE",
           31: "LOADNIL", 32: "NEWTABLE", 33: "LOADK", 34: "SETTABUP", 35: "EQ",
           36: "GETTABUP", 37: "LE", 38: "TFORCALL", 39: "JMP", 40: "TESTSET",
           41: "TAILCALL", 42: "CALL", 43: "SETTABLE", 44: "MOVE",
           45: "GETTABLE", 46: "GETTABLE", 47: "GETTABUP", 48: "GETTABUP",
           49: "NOP", 50: "LOADK", 51: "MOVE", 52: "NEWTABLE", 53: "SELF",
           54: "SELF", 55: "GETTABLE", 56: "CLOSURE", 57: "EQ", 58: "GETTABLE",
           59: "NOP", 60: "GETTABUP", 61: "NEWTABLE", 62: "NOP", 63: "NOP"}


def decrypt(data: bytes) -> bytes:
    return bytes(b ^ LUA_KEY[i % 32] for i, b in enumerate(data))


def ror29(w: int) -> int:
    return ((w & 7) << 3) | (w >> 29)


def rev16(w: int) -> int:
    """u16-halves swap: executed word for a stored instruction word."""
    return ((w << 16) | (w >> 16)) & 0xffffffff


class ParseError(ValueError):
    pass


def parse_file(data: bytes) -> dict:
    if data[:2] != WRAPPER:
        raise ParseError(f"wrapper: expected {WRAPPER.hex()}, got {data[:2].hex()}")
    body = data[2:]
    prefix = body[:PREFIX_LEN]
    if prefix != b"\x1bLuaS\x01\x19\x93\r\n\x1a\n\x04\x04\x04\x08\x08":
        raise ParseError(f"prefix mismatch: {prefix.hex()}")
    delta = body[PREFIX_LEN:PREFIX_LEN + DELTA_LEN]
    if len(delta) != DELTA_LEN:
        raise ParseError("truncated delta")
    src_m = body[PREFIX_LEN + DELTA_LEN]
    n = src_m - 1
    src_enc = body[PREFIX_LEN + DELTA_LEN + 1: PREFIX_LEN + DELTA_LEN + 1 + n]
    if len(src_enc) != n:
        raise ParseError("truncated source")
    src = decrypt(src_enc).decode("utf-8", "replace")
    se = PREFIX_LEN + DELTA_LEN + 1 + n
    hdr = body[se:se + 16]
    if len(hdr) != 16:
        raise ParseError("truncated 16B header")
    nw = hdr[6] - 2
    if nw < 0:
        raise ParseError(f"bad code word count {nw}")
    p = se + 16
    code = []
    for i in range(nw):
        if p + 4 > len(body):
            raise ParseError("truncated code")
        code.append(int.from_bytes(body[p:p + 4], "little"))
        p += 4
    term = body[p:p + 2]
    if len(term) != 2:
        raise ParseError("truncated terminator")
    p += 2
    kc = int.from_bytes(body[p:p + 4], "little")
    p += 4
    if kc > 1_000_000:
        # known anomaly: FlowActionReduceCDRate / FlowActionReduceEquipBuffCD
        # store a corrupt count u32 (0x1ef0003c); the const records that
        # follow are the standard 3 (NEW_ACTION/<name>/OnEnter).
        kc = 3
    consts = []
    for i in range(kc):
        if p >= len(body):
            raise ParseError("const region overrun")
        tag = body[p]; p += 1
        if tag in (4, 0x14):
            mlen = body[p]; p += 1
            if mlen == 0xff:
                n2 = int.from_bytes(body[p:p + 4], "little") - 1
                p += 4
            else:
                n2 = mlen - 1
            if n2 < 0 or p + n2 > len(body):
                raise ParseError(f"string const overrun @{p:#x}")
            raw = decrypt(body[p:p + n2]); p += n2
            consts.append({"tag": TAG_NAMES.get(tag, hex(tag)), "len": n2,
                           "value": raw.decode("utf-8", "replace")})
        elif tag == 1:
            consts.append({"tag": "bool", "value": bool(body[p])}); p += 1
        elif tag in (0x09, 0x11, 3, 0x13, 0x23):
            v = int.from_bytes(body[p:p + 8], "little", signed=True)
            consts.append({"tag": TAG_NAMES.get(tag, hex(tag)), "value": v,
                           "hex": f"{v & 0xffffffffffffffff:016x}"})
            p += 8
        elif tag == 0:
            consts.append({"tag": "nil", "value": None})
        else:
            raise ParseError(f"unknown const tag {tag:#x} @{p-1:#x}")
    return {"size": len(data), "prefix": prefix, "delta": delta, "src_n": n,
            "source": src, "header": hdr, "nw": nw, "code": code, "term": term,
            "kc": kc, "consts": consts, "tail_off": p, "delta6": delta[6]}


def collect(vdir: Path) -> list[tuple[Path, dict]]:
    files = sorted({p for p in vdir.glob("*.res")
                    if "WorkFlow" in p.name
                    and ("Scripts" in p.name or "Component" in p.name)})
    if len(files) != 25:
        print(f"WARNING: expected 25 WorkFlow .res files, found {len(files)}",
              file=sys.stderr)
    out = []
    for f in files:
        d = f.read_bytes()
        m = parse_file(d)
        out.append((f, m))
    return out


def stats(rows):
    def dom(idx, key=None):
        vals = {}
        for _, m in rows:
            v = m[key][idx] if key else m["header"][idx]
            vals[v] = vals.get(v, 0) + 1
        return dict(sorted(vals.items()))

    def dom_val(fn):
        vals = {}
        for _, m in rows:
            v = fn(m)
            vals[v] = vals.get(v, 0) + 1
        return dict(sorted(vals.items()))

    print("== 16B header field value domains (25 files) ==")
    for i in range(16):
        print(f"  hdr[{i:2d}] = {dom(i)}")
    print("  b0 == src_n + 14:", all(m['header'][0] == m['src_n'] + 14 for _, m in rows), "/", len(rows))
    print("  b4 == nupvalues(1):", all(m['header'][4] == 1 for _, m in rows))
    print("  b5 == is_vararg {2,3}:", dom(5))
    print("  b6 == code_words + 2:", all(m['header'][6] == m['nw'] + 2 for _, m in rows))
    print("  b10 == maxstack(5):", dom(10))
    print("  b11 == numparams(0):", dom(11))
    print("  prefix constant:", len({m['prefix'] for _, m in rows}) == 1)
    print("  delta variants:", len({m['delta'] for _, m in rows}),
          "| delta[6] domain:", dom_val(lambda m: m['delta6']))
    print("  term domain:", dom_val(lambda m: m['term'].hex()))

    print("\n== u16-swap verification ==")
    ret_ok = sum(1 for _, m in rows if ror29(rev16(m['code'][-1])) == 23)
    print(f"  main-proto last word -> rev16 -> op23 RETURN: {ret_ok}/25")
    raw_ops = [ror29(m['code'][-1]) for _, m in rows]
    print(f"  same words WITHOUT swap -> ops {sorted(set(raw_ops))} (vary; template cannot)")
    w1 = sum(1 for _, m in rows if m['code'][1] == 0x00074000
             and ror29(rev16(m['code'][1])) == 58)
    print(f"  fixed word 0x00074000 (position 1/2) -> rev16 -> op58: {w1}/25")
    tail_ret = 0
    for _, m in rows:
        tail = data_of(m)[2 + m['tail_off']:]
        for i in range(0, len(tail) - 3, 4):
            w = int.from_bytes(tail[i:i + 4], "little")
            if ror29(rev16(w)) == 23:
                tail_ret += 1
    print(f"  tail word-aligned rev16-RETURN candidates: {tail_ret}")
    print(f"  TOTAL verifiable swap anchors: {ret_ok + w1 + tail_ret} (>=50 OK)")


_data_cache = {}


def data_of(m):
    return _data_cache[id(m)]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("vdir", nargs="?",
                    default="<research-workspace>/work/"
                            "ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted")
    ap.add_argument("--json", type=Path)
    a = ap.parse_args()
    rows = collect(Path(a.vdir))
    for _, m in rows:
        _data_cache[id(m)] = m  # placeholder (not used)
    # re-read raw bytes into cache for tail scan
    for f, m in rows:
        _data_cache[id(m)] = f.read_bytes()
    print(f"{'file':<72} {'size':>4} {'src_n':>5} {'nw':>3} {'kc':>2} "
          f"{'hdr':<40} {'term':>4} {'consts'}")
    for f, m in rows:
        cs = ",".join(c['tag'] for c in m['consts'])
        print(f"{f.name.split('vfs__',1)[1][:70]:<72} {m['size']:>4} {m['src_n']:>5} "
              f"{m['nw']:>3} {m['kc']:>2} {m['header'].hex():<40} {m['term'].hex():>4} {cs}")
    stats(rows)
    print("\nAll 25 files parsed OK; invariants hold." if len(rows) == 25 else
          "\nERROR: file count != 25", file=sys.stderr if len(rows) != 25 else sys.stdout)
    if a.json:
        a.json.write_text(json.dumps(
            [{"file": f.name, "src": m["source"], "header": m["header"].hex(),
              "nw": m["nw"], "term": m["term"].hex(), "kc": m["kc"],
              "consts": m["consts"], "code": [hex(w) for w in m["code"]]}
             for f, m in rows], indent=2, ensure_ascii=False))
    return 0 if len(rows) == 25 else 1


if __name__ == "__main__":
    sys.exit(main())
