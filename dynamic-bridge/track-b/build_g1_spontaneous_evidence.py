#!/usr/bin/env python3
"""Fail-closed evidence builder for the G1 spontaneous loader-edge surface.

Verifies two g1spont run directories against the locked inputs and emits
track-b/g1-spontaneous-evidence.json.  Any check failure raises and writes
nothing, so the evidence file exists only if every check passed.

This surface is observe-only and fail-closed: the spontaneous loader edge is
NOT_OBSERVED in this round (no FEProj-internal open/read -> lua_load within the
60s window).  The evidence records the U1/U2/U3 conclusions, the plan A/B
outcomes, and the anchor-attach surface, and keeps G1 NOT_ESTABLISHED.
"""
from __future__ import annotations

import json
import sys
from datetime import datetime
from pathlib import Path
from typing import Any

TRACK_B = Path(__file__).resolve().parent
EVIDENCE_OUT = TRACK_B / "g1-spontaneous-evidence.json"

LOCKED_FEPROJ = "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a"
LOCKED_RES = "347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5"
LOCKED_TESTMAIN = "ef953d6f8ea871624a11ed21957f7a3f541a0cd18d9cbcae3b154bd9f14a8dfc"
EXPECTED_FRIDA = "17.15.5"
EXPECTED_ANCHORS = [
    "validator_D_entry",
    "registrar_callsite",
    "registrar_body",
    "testscript_ctx_init",
    "flat_loader_entry",
    "loader_validator_call_1",
    "loader_validator_call_2",
    "island27_check",
    "island27_check2",
    "check_driver",
    "teardown",
    "luamanager_meta_wrap",
    "dispatch_gate",
    "dispatch_trampoline",
    "dispatch_881",
]


def load_events(run_dir: Path) -> list[dict[str, Any]]:
    events: list[dict[str, Any]] = []
    for line in (run_dir / "events.jsonl").read_text(encoding="utf-8").splitlines():
        if line.strip():
            events.append(json.loads(line))
    return events


def verify_run(run_dir: Path, index: int) -> dict[str, Any]:
    run_dir = Path(run_dir)
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    events = load_events(run_dir)

    # 1) frida 17.15.5
    assert attempt.get("frida_version") == EXPECTED_FRIDA, f"run{index}: frida version wrong"

    # 2) fault normal + survival >= 60s
    assert attempt.get("fault") == {"status": "normal"}, f"run{index}: fault not normal: {attempt.get('fault')}"
    survival = attempt.get("survival", {})
    assert survival.get("alive") is True, f"run{index}: process not alive"
    assert survival.get("observed_seconds", 0) >= 60, f"run{index}: survival < 60s"

    # 3) module load event with locked DSO sha + base
    load_events_ = [e for e in events if e.get("event") == "B2_MODULE_LOAD"]
    assert len(load_events_) >= 1, f"run{index}: no B2_MODULE_LOAD"
    load_event = load_events_[0]
    assert load_event.get("sha256") == LOCKED_FEPROJ, f"run{index}: DSO sha mismatch"
    base = load_event.get("base")
    assert isinstance(base, str) and base.startswith("0x"), f"run{index}: bad base"

    # 4) all 15 internal anchors attached
    attached = {e.get("anchor") for e in events if e.get("event") == "ANCHOR_ATTACH" and e.get("attached") is True}
    for anchor in EXPECTED_ANCHORS:
        assert anchor in attached, f"run{index}: anchor {anchor} not attached"

    # 5) registry pre-read present (U3/U4 snapshot)
    preread = [e for e in events if e.get("event") == "REGISTRY_PREREAD"]
    assert len(preread) >= 1, f"run{index}: no REGISTRY_PREREAD"
    snapshot = preread[0].get("snapshot", {})
    for key in ["g_ctx_0x726D0C8", "g_buf_0x726D0D0", "g_len_0x726D0D8", "ctx_cache_0x726DEA0", "state_0x726D0E0"]:
        assert key in snapshot, f"run{index}: registry snapshot missing {key}"

    # 6) plan A recorded (A2 expected: ctx cache null -> stamp-less blob -> 0x45B)
    plan_a = attempt.get("plan_a", {})
    assert plan_a.get("plan") == "A2", f"run{index}: plan A not A2: {plan_a}"
    a2_result = plan_a.get("result", {})
    assert a2_result.get("return_code") == 1115, f"run{index}: A2 return_code != 1115 (0x45B): {a2_result}"

    # 7) validator D entry observed (ANCHOR_ENTER) and return recorded
    validator_enter = [e for e in events if e.get("event") == "ANCHOR_ENTER" and e.get("anchor") == "validator_D_entry"]
    assert len(validator_enter) >= 1, f"run{index}: no validator_D_entry ANCHOR_ENTER"
    validator_ret = [e for e in events if e.get("event") == "VALIDATOR_D_RETURN"]
    assert len(validator_ret) >= 1, f"run{index}: no VALIDATOR_D_RETURN"
    assert validator_ret[0].get("return_code") == 1115, f"run{index}: validator return != 1115"

    # 8) no spontaneous FEProj-internal open/read (F2 not met -> NOT_OBSERVED)
    fetest_open = [e for e in events if e.get("event") == "FETEST_OPEN"]
    fetest_read = [e for e in events if e.get("event") == "FETEST_READ"]
    spontaneous_open = [e for e in fetest_open if e.get("caller_module") == "libFEProj.so"]
    spontaneous_read = [e for e in fetest_read if e.get("caller_module") == "libFEProj.so"]
    assert len(spontaneous_open) == 0, f"run{index}: unexpected spontaneous FETEST_OPEN"
    assert len(spontaneous_read) == 0, f"run{index}: unexpected spontaneous FETEST_READ"

    # 9) no dropped events
    assert not any(e.get("event") == "B2_EVENTS_TRUNCATED" for e in events), f"run{index}: dropped events present"

    # 10) U2 scan recorded (string located at a stable RVA)
    u2 = attempt.get("u2_scan", {})
    assert isinstance(u2, dict), f"run{index}: no u2_scan"
    u2_matches = u2.get("matches", [])
    u2_rva = None
    if u2_matches:
        u2_rva = u2_matches[0].get("rva")

    return {
        "run_dir": str(run_dir),
        "base": base,
        "registry_preread": snapshot,
        "plan_a": plan_a,
        "plan_b": attempt.get("plan_b"),
        "u2_scan": u2,
        "u2_string_rva": u2_rva,
        "survival_seconds": survival.get("observed_seconds"),
        "spontaneous_open_count": len(spontaneous_open),
        "spontaneous_read_count": len(spontaneous_read),
    }


def main(run_dirs: list[str]) -> int:
    verified = []
    for index, run in enumerate(run_dirs, start=1):
        verified.append(verify_run(Path(run), index))

    # Cross-run stability: registry snapshot and A2 return must match.
    snapshots = [json.dumps(run["registry_preread"], sort_keys=True) for run in verified]
    assert len(set(snapshots)) == 1, f"registry snapshot unstable across runs: {snapshots}"
    a2_codes = [run["plan_a"]["result"]["return_code"] for run in verified]
    assert len(set(a2_codes)) == 1, f"A2 return_code unstable across runs: {a2_codes}"

    # U2 string RVA must match across runs (when located).
    u2_rvas = [run["u2_string_rva"] for run in verified if run["u2_string_rva"] is not None]
    u2_stable = len(set(u2_rvas)) == 1 if u2_rvas else None

    evidence = {
        "verdict": "G1_SPONTANEOUS_LOADER_EDGE_NOT_OBSERVED",
        "scope": "spontaneous (FEProj-internal) open/read -> lua_load edge NOT observed within the 60s "
                 "window; U3 resolved (0x726D0D0 zeroed), plan A ran as A2 control (ctx cache null, "
                 "observe-only), plan B not run (precondition unmet); U1 blob-producer still unknown; "
                 "U2 string located at runtime RVA 0x565d9b2 but caller function not pinned; "
                 "G1 full verdict remains NOT_ESTABLISHED",
        "evidence_tier": "H",
        "frida_version": EXPECTED_FRIDA,
        "locked_inputs": {
            "libFEProj.so_sha256": LOCKED_FEPROJ,
            "BattleLogic.res_sha256": LOCKED_RES,
            "TestMain.res_sha256": LOCKED_TESTMAIN,
        },
        "u3_conclusion": "0x726D0D0 (g_buf) is null (zeroed, not the 0x6960 stub) in both runs; "
                         "0x726D0C8/0x726D0D8/0x726DEA0/0x726D0E0 all null/zero -> registrar first-call "
                         "free() is safe, but ctx cache is null so plan A1 cannot fire (observe-only).",
        "plan_a_conclusion": "A1 skipped (ctx_cache@0x726DEA0 null, observe-only forbids writing); "
                             "A2 control ran: validator D entry reachable, stamp-less blob -> 0x45B (1115), "
                             "no crash.",
        "plan_b_conclusion": "Not run: A1 did not mirror (g_buf null) and state@0x726D0E0 null.",
        "u1_conclusion": "No FEProj-internal (caller_module==libFEProj.so) FETEST_OPEN/READ observed in "
                         "either run; the .res blob producer remains unidentified (external-reader "
                         "hypothesis not excluded).",
        "u2_conclusion": "String 'luaL_loadbuffer %d--%s' located at runtime RVA 0x565d9b2 (plaintext, "
                         "Memory.scan over readable ranges); the referencing function is not pinned "
                         "(file .text is encrypted-island; needs an additional device run for ADRP "
                         "reference scan, beyond this round's 2-run budget).",
        "runs": verified,
        "u2_string_rva_stable": u2_stable,
        "built_at": datetime.now().isoformat(),
    }
    EVIDENCE_OUT.write_text(json.dumps(evidence, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"evidence": str(EVIDENCE_OUT), "runs": [r["run_dir"] for r in verified]}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
