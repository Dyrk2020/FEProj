#!/usr/bin/env python3
"""LData skill/buff field labeling (slice ldata-skill-buff-fields-20260822).

Closes gap C3: run the equips.json parse+label pipeline (round-16 recipe,
full_extract.py) over ALL Skill and Buff LData config files.

Inherited round-16 fix (MANDATED): the fFFBA container-header prefix records
are tagged `container_N` SEPARATELY, never positionally mislabeled as schema
fields.  Only the payload AFTER the detected container prefix is aligned in
order against the binding-member vocabulary:
  skills -> SkillResObject  (dispatcher case805, 41 prop_members)
  buffs  -> BuffResObject   (dispatcher case744, 49 prop_members)
The other four vocabulary classes (case743 BuffLevelData, case823 ActorBuff,
case850 ActorSkill, case852 SkillUseObj) are runtime object classes: their
prop names are used ONLY as string-token hints (vocab_hits), never for
positional alignment.

Inputs (READ-ONLY):
  ../ai-cfg-recovery-2026-08-04/fffba_parse.py            (copied here verbatim)
  ../ai-cfg-recovery-2026-08-04/vfs-paths.json            manifest
  ../ai-cfg-recovery-2026-08-04/decrypted-samples/vfs-extracted/<file>
  ../ai-cfg-recovery-2026-08-04/dispatcher-881-cases.tsv  vocabularies

Outputs (this slice only):
  data/skills.json  data/buffs.json  data/stats.md

Reproduce:
  cd work/ldata-skill-buff-fields-20260822 && python3 scripts/extract_ldata_fields.py

Evidence tags used in outputs:
  [V] verified by running this script over the full corpus (counts given)
  [I] inference / heuristic, not independently confirmed
"""
import csv
import json
import os
import re
import sys
import hashlib
import collections
from concurrent.futures import ProcessPoolExecutor

HERE = os.path.dirname(os.path.abspath(__file__))
SLICE = os.path.dirname(HERE)
REPO = os.path.abspath(os.path.join(SLICE, "..", ".."))
SRC = os.path.join(REPO, "work", "ai-cfg-recovery-2026-08-04")
EXTRACTED = os.path.join(SRC, "decrypted-samples", "vfs-extracted")
MANIFEST = os.path.join(SRC, "vfs-paths.json")
TSV = os.path.join(SRC, "dispatcher-881-cases.tsv")
OUT = os.path.join(SLICE, "data")

sys.path.insert(0, HERE)
import fffba_parse  # noqa: E402

TYPE_SIZES = fffba_parse.TYPE_SIZES

# dispatcher cases whose prop_members form the labeling vocabulary
VOCAB_CASES = {
    "case744": "BuffResObject",
    "case743": "BuffLevelData",
    "case805": "SkillResObject",
    "case823": "ActorBuff",
    "case850": "ActorSkill",
    "case852": "SkillUseObj",
}
ALIGN_SCHEMA = {"skill": "SkillResObject", "buff": "BuffResObject"}


def load_vocab():
    """prop_members lists per class from the dispatcher TSV."""
    want = {v: k for k, v in VOCAB_CASES.items()}
    out = {}
    with open(TSV) as fh:
        for row in csv.DictReader(fh, delimiter="\t"):
            cn = row["class_name"].strip().rstrip("* ")
            if cn in want and cn not in out:
                props = [p for p in row["prop_members"].split(";") if p]
                out[cn] = props
    return out


# ---------------- helpers vendored from full_extract.py (round-16) ----------

def decode_value(t, vhex):
    try:
        v = bytes.fromhex(vhex)
    except (ValueError, TypeError):
        return vhex
    sz = TYPE_SIZES.get(t)
    if sz in (1, 2, 3, 4, 5, 8) and len(v) == sz:
        return int.from_bytes(v, "little")
    return vhex


def container_prefix(types, values=None):
    """Round-16 detector: first 8-10 records = fFFBA container header family.

    Verbatim logic from full_extract.py (equips.json recipe).  The invariant
    is a config-id record [27|19 : 6312] followed by a size record [4 : 40].
    Returns prefix length or 0 when the family is absent.
    """
    off = 1 if types[:1] == [1] else 0
    t = types[off:]
    vals = (values or [None] * len(t))
    if off:
        vals = vals[1:]
    n = len(t)
    kidx = None
    for i in range(3, min(8, n)):
        if t[i] in (27, 19) and vals[i] == 6312:
            kidx = i
            break
    if kidx is None:
        return 0
    sidx = None
    for i in range(kidx + 1, min(kidx + 3, n)):
        if t[i] == 4 and vals[i] == 40:
            sidx = i
            break
    if sidx is None:
        return 0
    rest = t[sidx + 1:]
    if len(rest) >= 3 and rest[1] in (146, 147, 162) and rest[2] == 5:
        return sidx + 1 + 3 + off
    if len(rest) >= 2 and rest[0] == 5:
        return sidx + 1 + 1 + off
    if len(rest) >= 3 and rest[1] == 64 and rest[2] == 16:
        return sidx + 1 + 3 + off
    if len(rest) >= 2 and rest[0] == 64 and rest[1] == 16:
        return sidx + 1 + 2 + off
    return sidx + 1 + off


def hint_tokens(strings, blob, vocab):
    """String-table hints + vocabulary token hits."""
    out = {"name_keys": [], "desc_keys": [], "formulas": [], "flows": [],
           "attr_refs": []}
    for s in strings:
        if not s or len(s) < 3:
            continue
        if re.match(r"^lol_[A-Za-z0-9_]+", s):
            out["name_keys"].append(s)
        elif re.search(r"(EquipDescription|Description)_\d+", s) or "BuffDesc" in s:
            out["desc_keys"].append(s)
        elif re.search(r"att\.[A-Za-z_]+|skill\.[A-Za-z_]+|attr_[A-Za-z_]+", s):
            out["formulas"].append(s)
            out["attr_refs"] += re.findall(r"(?:att\.|attr_|skill\.)([A-Za-z_]+)", s)
        elif "NewFlows/" in s or "/Flow/" in s:
            out["flows"].append(s)
        elif re.search(r"math\.|/100|_rate|_ratio|dmg", s):
            out["formulas"].append(s)
        elif re.search(r"tips_\d+|_tips_", s):
            out["desc_keys"].append(s)
    for k in ("name_keys", "desc_keys", "formulas", "flows"):
        out[k] = out[k][:8]
    out["attr_refs"] = sorted(set(out["attr_refs"]))[:12]
    # [I] vocabulary token hits: which binding prop names appear in the file's
    # printable strings. Substring match; strings are often mangled runs, so
    # this is a recall-oriented hint, not a proof of field presence.
    hits = {}
    for cls, props in vocab.items():
        m = [p for p in props if p in blob]
        if m:
            hits[cls] = m[:20]
    out["vocab_hits"] = hits
    return out


def id_from_path(p):
    segs = p.replace("\\", "/").split("/")
    stem = segs[-1][:-6] if segs[-1].endswith(".bytes") else segs[-1]
    if stem.isdigit():
        return stem
    num = [s for s in segs if s.isdigit()]
    if num:
        return num[-1] + ":" + stem if stem else num[-1]
    return stem


def classify(path):
    if "/WorkFlow/Skill/" in path or "/NewFlows/Skill/" in path:
        return "skill"
    if "/WorkFlow/Buff/" in path or "/NewFlows/Buff/" in path:
        return "buff"
    return None


# ---------------- per-file build ---------------------------------------------

def build_one(member, vocab):
    kind, vfs, idx, path, size = member
    disk = os.path.join(EXTRACTED, "%s__%03d_%s"
                        % (os.path.basename(vfs), idx, path.replace("/", "_")))
    try:
        with open(disk, "rb") as fh:
            raw = fh.read()
    except OSError:
        return {"path": path, "id": id_from_path(path), "vfs": vfs, "idx": idx,
                "size": size, "kind": kind, "schema": ALIGN_SCHEMA.get(kind),
                "on_disk": False, "parse_ok": False, "record_count": 0,
                "container_records": 0, "payload_records": 0,
                "labeled_records": 0, "unmatched_records": 0,
                "parse_errors": ["not extracted on disk"],
                "hints": {}, "fields": {}, "raw_records": [], "strings": []}
    md5 = hashlib.md5(raw).hexdigest()
    pr = fffba_parse.parse_bytes(raw)
    recs = [[t, v.hex() if isinstance(v, bytes) else v] for t, v in pr["records"]]
    types = [t for t, _ in recs]
    fields_ok = bool(pr.get("ok")) and bool(recs)
    # container prefix detection runs on every parse (also when semantic check
    # failed): the header family is independent of the tail/unknown-type stop.
    n_cont = container_prefix(types, [decode_value(t, v) for t, v in recs]) if recs else 0
    payload = recs[n_cont:] if recs else []
    schema = ALIGN_SCHEMA.get(kind)
    vocab_props = vocab.get(schema, [])

    fields = {}
    labeled = 0
    unmatched = 0
    if fields_ok or recs:
        for i in range(n_cont):
            t, v = recs[i]
            fields["container_%d" % i] = {"t": t, "v": decode_value(t, v)}
        if vocab_props and n_cont > 0:
            n = min(len(vocab_props), len(payload))
            for i in range(n):
                t, v = payload[i]
                fields[vocab_props[i]] = {"t": t, "v": decode_value(t, v)}
                labeled += 1
            for j in range(len(vocab_props), len(payload)):
                t, v = payload[j]
                fields["unknown_%d" % (j - len(vocab_props))] = {"t": t, "v": decode_value(t, v)}
                unmatched += 1
        else:
            for i, (t, v) in enumerate(payload):
                fields["field_%d" % i] = {"t": t, "v": decode_value(t, v)}
            unmatched = len(payload)

    return {
        "path": path,
        "id": id_from_path(path),
        "vfs": vfs,
        "idx": idx,
        "size": size,
        "md5": md5,
        "schema": schema,
        "kind": kind,
        "on_disk": True,
        "parse_ok": bool(pr.get("ok")),
        "record_count": len(recs),
        "container_records": n_cont,
        "payload_records": len(payload),
        "labeled_records": labeled,
        "unmatched_records": unmatched,
        "parse_errors": pr.get("errors", []),
        "stream_stop_reason": pr.get("stream_stop", {}).get("reason"),
        "hints": hint_tokens(pr.get("strings", []),
                             "\n".join(pr.get("strings", [])), vocab),
        "fields": fields,
        "raw_records": [[t, v] for t, v in recs],
        "strings": pr.get("strings", [])[:40],
    }


_FM = None


def _run_chunk(members):
    global _FM
    if _FM is None:
        _FM = load_vocab()
    return [build_one(m, _FM) for m in members]


# ---------------- stats -------------------------------------------------------

SIZE_BUCKETS = [(512, "<512B"), (1024, "512B-1K"), (4096, "1K-4K"),
                (16384, "4K-16K"), (1 << 62, ">=16K")]


def size_hist(docs):
    h = collections.Counter()
    for x in docs:
        for cap, name in SIZE_BUCKETS:
            if x["size"] < cap:
                h[name] += 1
                break
    return h


def type_hist(docs):
    h = collections.Counter()
    for x in docs:
        for t, _ in x["raw_records"]:
            h[t] += 1
    return h


def member_stats(docs, vocab_len):
    tot = len(docs)
    on_disk = sum(1 for x in docs if x["on_disk"])
    parse_ok = sum(1 for x in docs if x["parse_ok"])
    cont = sum(1 for x in docs if x["container_records"] > 0)
    labeled = sum(1 for x in docs if x["labeled_records"] > 0)
    partial = sum(1 for x in docs if x["on_disk"] and 0 < x["payload_records"]
                  <= vocab_len and x["labeled_records"] == x["payload_records"]
                  and x["container_records"] > 0)
    overflow = sum(x["unmatched_records"] for x in docs)
    noc = [x for x in docs if x["on_disk"] and x["container_records"] == 0]
    stop = collections.Counter(x.get("stream_stop_reason") for x in docs if x["on_disk"])
    return {"manifest_entries": tot, "on_disk": on_disk,
            "missing_on_disk": tot - on_disk, "parse_ok": parse_ok,
            "container_prefix_detected": cont, "aligned_labeled": labeled,
            "fully_in_vocab": partial, "records_beyond_vocab": overflow,
            "no_container_prefix_files": len(noc),
            "stop_reasons": dict(stop)}


def write_stats(skill_docs, buff_docs, missing_buff, vocab, path):
    vs, vb = len(vocab["SkillResObject"]), len(vocab["BuffResObject"])
    ss, sb = member_stats(skill_docs, vs), member_stats(buff_docs, vb)
    lines = []
    a = lines.append
    a("# LData Skill/Buff ldata-skill-buff-fields-20260822")
    a("")
    a("`python3 scripts/extract_ldata_fields.py`")
    a("")
    a("## ")
    a("")
    a("")
    a("## ")
    a("")
    a("- `fffba_parse.py`round-14 TYPE_SIZES "
      "u32/u16/u24  Rune_Recommend / ThreeTower / twistedfate "
      " [V]")
    a("- **parse_ok=False **flow "
      "`semantic_schema_ok`  equips.json "
      "]")
    a("- `container_prefix`round-16 equips.json "
      "[27|19:6312]  id  + [4:40]  "
      "`container_N` schema  round-16 [V]")
    a("- SkillResObject = dispatcher case805 prop_members%d "
      "BuffResObject = case744 prop_members%d [V—— TSV]"
      % (vs, vb))
    a("- positional `fields` keys = binding prop names; payload record i -> vocab member i [I]")
    a("- [V] `container_*`")
    a("")
    a("## ")
    a("")
    a("|  | skills | buffs |")
    a("|---|---|---|")
    a("| vfs-paths.json  /Skill/  /Buff/  | %d | %d |"
      % (ss["manifest_entries"], sb["manifest_entries"]))
    a("| decrypted-samples/vfs-extracted | %d | %d |"
      % (ss["on_disk"], sb["on_disk"]))
    a("|  | %d | %d |"
      % (ss["missing_on_disk"], sb["missing_on_disk"]))
    a("| parse_ok | %d (%.1f%%) | %d (%.1f%%) |"
      % (ss["parse_ok"], 100.0 * ss["parse_ok"] / max(ss["on_disk"], 1),
         sb["parse_ok"], 100.0 * sb["parse_ok"] / max(sb["on_disk"], 1)))
    a("|  | %d | %d |"
      % (ss["container_prefix_detected"], sb["container_prefix_detected"]))
    a("|  1  | %d (%.1f%% of ) | %d (%.1f%%) |"
      % (ss["aligned_labeled"],
         100.0 * ss["aligned_labeled"] / max(ss["on_disk"], 1),
         sb["aligned_labeled"],
         100.0 * sb["aligned_labeled"] / max(sb["on_disk"], 1)))
    a("| payload 0  | %d | %d |"
      % (ss["fully_in_vocab"], sb["fully_in_vocab"]))
    a("|  payload unmatched | %d | %d |"
      % (ss["records_beyond_vocab"], sb["records_beyond_vocab"]))
    a("|  | %d | %d |"
      % (ss["no_container_prefix_files"], sb["no_container_prefix_files"]))
    a("")
    a("**parse_ok  [V]**Skill/Buff flow "
      " stop reasons  round-14 "
      "`semantic_schema_ok` parse_ok  equips "
      "`raw_records`")
    a("")
    a("###  [V]")
    a("")
    a("| stop reason | skills | buffs |")
    a("|---|---|---|")
    keys = sorted(set(ss["stop_reasons"]) | set(sb["stop_reasons"]), key=str)
    for k in keys:
        a("| %s | %d | %d |" % (k, ss["stop_reasons"].get(k, 0),
                                sb["stop_reasons"].get(k, 0)))
    a("")
    a("##  [V]")
    a("")
    a("|  | skills | buffs |")
    a("|---|---|---|")
    hs, hb = size_hist(skill_docs), size_hist(buff_docs)
    for _, name in SIZE_BUCKETS:
        a("| %s | %d | %d |" % (name, hs.get(name, 0), hb.get(name, 0)))
    a("")
    a("##  top20 raw_recordstype  [V]")
    a("")
    ts, tb = type_hist(skill_docs), type_hist(buff_docs)
    all_t = collections.Counter()
    all_t.update(ts)
    all_t.update(tb)
    a("| type | skills | buffs | total |")
    a("|---|---|---|---|")
    for t, _c in all_t.most_common(20):
        a("| 0x%02x (%d) | %d | %d | %d |"
          % (t, t, ts.get(t, 0), tb.get(t, 0), _c))
    a("")
    a("## Buff ")
    a("")
    if not missing_buff:
        a(" Buff  0 [V]")
    else:
        a(" %d  [V]" % len(missing_buff))
        a("")
        for m in missing_buff:
            a("- `%s` (idx=%d, size=%d)" % (m[2], m[1], m[3]))
    ms = sb["missing_on_disk"]
    a("")
    a("## ")
    a("")
    a("- skills %d vs  %d %+d [V]"
      % (ss["on_disk"], ss["manifest_entries"], ss["on_disk"] - ss["manifest_entries"]))
    a("- buffs %d ≈423 %d %s [V]"
      % (sb["on_disk"], ms, "" if ms else ""))
    a("- entry  equips.json  path/vfs/size/parse_ok/"
      "container_records/payload_records/labeled_records/fields/raw_records/"
      "hints idx/id/md5/schema/kind/on_disk/unmatched_records/"
      "stream_stop_reason[V]")
    with open(path, "w") as fh:
        fh.write("\n".join(lines) + "\n")
    return ss, sb


# ---------------- main ---------------------------------------------------------

def main():
    os.makedirs(OUT, exist_ok=True)
    vocab = load_vocab()
    print("vocab sizes:", {k: len(v) for k, v in vocab.items()})

    members = {"skill": [], "buff": []}
    with open(MANIFEST) as fh:
        manifest = json.load(fh)
    for md5key, items in manifest.items():
        for idx, item in enumerate(items):
            path, size = item[0], item[2]
            kind = classify(path)
            if kind:
                members[kind].append((kind, md5key, idx, path, size))
    print("manifest entries: skill %d buff %d"
          % (len(members["skill"]), len(members["buff"])))

    results = {}
    for kind in ("buff", "skill"):
        ms = members[kind]
        chunk = 32
        docs = []
        with ProcessPoolExecutor(max_workers=8) as ex:
            for part in ex.map(_run_chunk,
                               [ms[i:i + chunk] for i in range(0, len(ms), chunk)]):
                docs.extend(part)
        results[kind] = docs
        out_path = os.path.join(OUT, "skills.json" if kind == "skill" else "buffs.json")
        with open(out_path, "w") as fh:
            json.dump(docs, fh, indent=1)
        print("%s: %d docs -> %s" % (kind, len(docs), out_path))

    missing_buff = [(k, idx, p, s)
                    for (k, idx, p, s) in [(m[0], m[2], m[3], m[4]) for m in members["buff"]]
                    if not any(x["path"] == p and x["idx"] == idx
                               for x in results["buff"])]
    ss, sb = write_stats(results["skill"], results["buff"], missing_buff,
                         vocab, os.path.join(OUT, "stats.md"))
    for name, st in (("skills", ss), ("buffs", sb)):
        print(name, json.dumps(st, ensure_ascii=False))


if __name__ == "__main__":
    main()
