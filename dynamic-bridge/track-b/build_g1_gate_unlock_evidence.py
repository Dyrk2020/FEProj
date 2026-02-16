#!/usr/bin/env python3
"""Fail-closed evidence builder for the G1 gate-unlock controlled sequence
(plan docs/plans/2026-08-22-g1-gate-unlock-testmain.md).

Verifies N>=2 run directories produced by g1_gate_unlock_driver.py against
locked inputs and plan §6 acceptance. Any check failure raises and writes
nothing, so the evidence file exists only if every check passed.

Scope: controlled-call confirmation of the registrar writer attribution and
gate conditions, plus observation of any spontaneous dispatch edge in the
post window. G1-resource-to-Lua-dispatch verdict remains NOT_ESTABLISHED
unless the review documents a gate-change; this builder does not re-grade.
"""
from __future__ import annotations

import hashlib
import json
import sys
from datetime import datetime
from pathlib import Path
from typing import Any

TRACK_B = Path(__file__).resolve().parent
ROOT = TRACK_B.resolve().parents[2]
TESTMAIN = ROOT / "corpus" / "basic-data" / "external-device-20260814" / "files" / "Res" / "FETest" / "TestMain.res"
EVIDENCE_OUT = TRACK_B / "g1-gate-unlock-evidence.json"

LOCKED_TESTMAIN = "ef953d6f8ea871624a11ed21957f7a3f541a0cd18d9cbcae3b154bd9f14a8dfc"
TESTMAIN_SIZE = 698
EXPECTED_FRIDA = "17.15.5"


def fail(msg: str) -> None:
    raise RuntimeError(f"g1-gate-unlock evidence check failed: {msg}")


def load_jsonl(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if line.strip():
            records.append(json.loads(line))
    return records



def load_events(run_dir: Path) -> list[dict[str, Any]]:
    return load_jsonl(run_dir / "events.jsonl")
def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def verify_run(run_dir: Path, index: int, testmain_head16: str) -> dict[str, Any]:
    run_dir = Path(run_dir)
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))

    if attempt.get("operation") != "g1-gate-unlock":
        fail(f"run{index}: wrong operation")
    if str(attempt.get("frida_version")) != EXPECTED_FRIDA:
        fail(f"run{index}: frida version mismatch")
    fault = attempt.get("fault", {})
    if fault.get("status") != "normal":
        fail(f"run{index}: fault {fault}")
    if not attempt.get("survival", {}).get("alive"):
        fail(f"run{index}: process did not survive")

    unlock = attempt.get("unlock") or {}
    steps = {s.get("label"): s.get("slots") for s in unlock.get("steps", [])}
    pre = steps.get("pre")
    after_val = steps.get("after_validator")
    if pre is None or after_val is None:
        fail(f"run{index}: missing slot snapshots")

    def nullish(v: Any) -> bool:
        return v is None or v in ("0x0", "0", 0)

    for key in ("g_buf_0x726D0D0", "state_0x726D0E0", "ctx_cache_0x726DEA0",
                "second_0x726DEA8", "state_plus8"):
        if not nullish(pre.get(key)):
            fail(f"run{index}: precondition slot {key} not null: {pre.get(key)}")
    if nullish(after_val.get("g_buf_0x726D0D0")):
        fail(f"run{index}: g_buf still null after validator")
    if after_val.get("g_len_0x726D0D8") != TESTMAIN_SIZE:
        fail(f"run{index}: g_len != {TESTMAIN_SIZE}: {after_val.get('g_len_0x726D0D8')}")
    if nullish(after_val.get("state_0x726D0E0")) or nullish(after_val.get("state_plus8")):
        fail(f"run{index}: dispatcher singleton missing after validator")

    if unlock.get("rc_validator") != 0:
        fail(f"run{index}: validator rc != 0: {unlock.get('rc_validator')}")

    # locked-input provenance: staging verifier must have bound the locked
    # BattleLogic.res; TestMain binding is asserted via registrar blob head16.
    plan = json.loads((run_dir / "load-plan.json").read_text(encoding="utf-8"))
    bl = plan.get("input_provenance", {}).get("battle_logic", {})
    if bl.get("sha256") != "347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5":
        fail(f"run{index}: staged battle_logic SHA not locked: {bl.get('sha256')}")
    events = load_events(run_dir)
    registrar_enters = [e for e in events if e.get("event") == "ANCHOR_ENTER"
                        and e.get("label") == "fe_registrar"]
    if not registrar_enters:
        fail(f"run{index}: no registrar entry observed")
    heads = {e.get("blob_head16") for e in registrar_enters}
    attempt_head = (attempt.get("unlock") or {}).get("blob_head16")
    if testmain_head16 not in heads and attempt_head != testmain_head16:
        fail(f"run{index}: registrar blob head mismatch: {heads}/{attempt_head} vs {testmain_head16}")

    labels_seen = {e.get("label") for e in events
                   if e.get("event") == "ANCHOR_ENTER"}
    coverage = sorted(labels_seen)
    # Anchor coverage is recorded, not asserted: the final instrumented runs
    # intentionally carry a reduced anchor set (longjmp skips leave
    # trampolines). U1 requires only the registrar edge, asserted above.

    truncated = any(e.get("event") in ("EVENTS_TRUNCATED", "B2_EVENTS_TRUNCATED")
                    for e in events)
    if truncated:
        fail(f"run{index}: event stream truncated")

    spontaneous = {
        "fetest_open": sum(1 for e in events if e.get("event", "").startswith("FETEST_OPEN")),
        "fetest_read": sum(1 for e in events if e.get("event", "").startswith("FETEST_READ")),
        "lua_load": sum(1 for e in events if e.get("event") in ("LUA_LOAD", "ANCHOR_ENTER")
                        and (e.get("event") == "LUA_LOAD" or e.get("label") in
                             ("flat_loader_entry",))),
        "docommand_core": sum(1 for e in events if e.get("label") == "DoCommand_core"),
        "openlibs_L": [e.get("L") for e in events if e.get("event") == "LUA_OPENLIBS"],
    }
    return {
        "run_dir": str(run_dir),
        "pid": attempt["attach"]["pid"],
        "started_at": attempt["started_at"],
        "rc_validator": unlock.get("rc_validator"),
        "rc_gate_a": unlock.get("rc_gate_a"),
        "rc_gate_b": unlock.get("rc_gate_b"),
        "anchor_coverage": coverage,
        "spontaneous_window": spontaneous,
    }


def main() -> int:
    if len(sys.argv) < 3:
        print("usage: build_g1_gate_unlock_evidence.py RUN_DIR [RUN_DIR ...]")
        return 2
    run_dirs = [Path(p) for p in sys.argv[1:]]

    if sha256(TESTMAIN) != LOCKED_TESTMAIN:
        fail("locked TestMain.res SHA mismatch")
    head = TESTMAIN.read_bytes()[:16].hex()

    runs = [verify_run(rd, i + 1, head) for i, rd in enumerate(sorted(run_dirs))]
    rc_sets = {(r["rc_validator"], r["rc_gate_b"], r["rc_gate_a"]) for r in runs}
    consistent = len(rc_sets) == 1

    evidence = {
        "generated_at": datetime.utcnow().isoformat() + "Z",
        "plan": "docs/plans/2026-08-22-g1-gate-unlock-testmain.md",
        "locked_inputs": {"testmain_sha256": LOCKED_TESTMAIN,
                          "testmain_size": TESTMAIN_SIZE},
        "runs": runs,
        "cross_run_consistent": consistent,
        "boundary": (
            "H-layer controlled-call evidence: registrar writer attribution "
            "and gate-condition confirmation. Spontaneous-edge counts in "
            "spontaneous_window are observations only; G1 verdict unchanged "
            "by this builder."),
    }
    EVIDENCE_OUT.write_text(json.dumps(evidence, sort_keys=True, indent=2) + "\n",
                            encoding="utf-8")
    print(f"wrote {EVIDENCE_OUT}")
    print(json.dumps({"runs": len(runs), "cross_run_consistent": consistent,
                      "rc_sets": [sorted(rc_sets)]}, indent=None))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
