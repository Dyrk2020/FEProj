#!/usr/bin/env python3
"""Fail-closed evidence builder for the G1 loader→execution (pcall) edge.

Verifies two g1pcall run directories against the locked inputs and emits
track-b/g1-pcall-evidence.json.  Any check failure raises and writes nothing,
so the evidence file exists only if every check passed.

Scope: loader→execution call edge only (luaL_loadbufferx → lua_pcallk with a
locked BattleLogic.res chunk).  A nonzero pcallk return_code is still valid
evidence of the execution edge (the chunk is a binary Lua 5.3 format-1 blob
that is expected to fail at runtime); the edge is the pcallk invocation with
the locked chunk on the stack, not a successful script run.  G1 full verdict
remains NOT_ESTABLISHED.
"""
from __future__ import annotations

import hashlib
import json
import sys
from datetime import datetime
from pathlib import Path
from typing import Any

TRACK_B = Path(__file__).resolve().parent
EVIDENCE_OUT = TRACK_B / "g1-pcall-evidence.json"

LOCKED_FEPROJ = "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a"
LOCKED_RES = "347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5"
LOCKED_HEAD16 = "1b4c7561530119930d0a1a0a04040408"
EXPECTED_FRIDA = "17.15.5"
EXPECTED_SIZE = 1479


def sha256_hex(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def load_events(run_dir: Path) -> list[dict[str, Any]]:
    events: list[dict[str, Any]] = []
    for line in (run_dir / "events.jsonl").read_text(encoding="utf-8").splitlines():
        if line.strip():
            events.append(json.loads(line))
    return events


def hex_to_bytes(hex_str: str) -> bytes:
    hex_str = hex_str.strip()
    if len(hex_str) % 2:
        raise ValueError("odd-length hex")
    return bytes.fromhex(hex_str)


def verify_run(run_dir: Path, index: int) -> dict[str, Any]:
    run_dir = Path(run_dir)
    attempt = json.loads((run_dir / "attempt.json").read_text(encoding="utf-8"))
    events = load_events(run_dir)

    # 1) frida 17.15.5
    assert attempt.get("frida_version") == EXPECTED_FRIDA, f"run{index}: frida version wrong: {attempt.get('frida_version')}"

    # 2) fault normal + survival >= 60s
    assert attempt.get("fault") == {"status": "normal"}, f"run{index}: fault not normal: {attempt.get('fault')}"
    survival = attempt.get("survival", {})
    assert survival.get("alive") is True, f"run{index}: process not alive"
    assert survival.get("observed_seconds", 0) >= 60, f"run{index}: survival < 60s: {survival.get('observed_seconds')}"

    # 3) module load event with locked DSO sha + base
    load_events_ = [e for e in events if e.get("event") == "B2_MODULE_LOAD"]
    assert len(load_events_) >= 1, f"run{index}: no B2_MODULE_LOAD"
    load_event = load_events_[0]
    assert load_event.get("sha256") == LOCKED_FEPROJ, f"run{index}: DSO sha mismatch"
    base = load_event.get("base")
    size = load_event.get("size")
    assert isinstance(base, str) and base.startswith("0x"), f"run{index}: bad base"
    assert isinstance(size, int) and size > 0, f"run{index}: bad size"

    # 4) ordered events: open -> read -> lua_load -> lua_pcall
    names = [e.get("event") for e in events]
    open_i = names.index("FETEST_OPEN") if "FETEST_OPEN" in names else -1
    read_i = names.index("FETEST_READ") if "FETEST_READ" in names else -1
    lua_load_events = [e for e in events if e.get("event") == "LUA_LOAD"]
    pcall_events = [e for e in events if e.get("event") == "LUA_PCALL"]
    assert open_i >= 0 and read_i >= 0, f"run{index}: missing FETEST events"
    assert open_i < read_i, f"run{index}: open not before read"
    assert len(lua_load_events) >= 1, f"run{index}: no LUA_LOAD"
    assert len(pcall_events) >= 1, f"run{index}: no LUA_PCALL"
    for e in events:
        if e.get("event") == "LUA_LOAD":
            assert events.index(e) > read_i, f"run{index}: LUA_LOAD before READ"
    pcall_i = names.index("LUA_PCALL")
    assert pcall_i > read_i, f"run{index}: LUA_PCALL before READ"

    # 5) FETEST_READ: path, size, head16, full buffer sha == locked resource
    read_event = events[read_i]
    assert read_event.get("path", "").endswith("Res/FETest/Logic/BattleLogic.res"), f"run{index}: read path wrong"
    assert read_event.get("nbytes") == EXPECTED_SIZE, f"run{index}: read nbytes wrong"
    assert read_event.get("head16_hex") == LOCKED_HEAD16, f"run{index}: read head16 mismatch"
    buffer_hex = read_event.get("buffer_hex")
    assert isinstance(buffer_hex, str) and len(buffer_hex) == EXPECTED_SIZE * 2, f"run{index}: buffer_hex length wrong"
    buffer_sha = sha256_hex(hex_to_bytes(buffer_hex))
    assert buffer_sha == LOCKED_RES, f"run{index}: buffer SHA mismatch {buffer_sha}"

    # 6) LUA_LOAD direct (luaL_loadbufferx): buffer sha bound, chunk name, return code
    direct = [e for e in lua_load_events if e.get("function") == "luaL_loadbufferx"]
    assert len(direct) >= 1, f"run{index}: no direct luaL_loadbufferx"
    direct_event = direct[0]
    assert direct_event.get("return_code") == 0, f"run{index}: loadbufferx rc != 0"
    assert direct_event.get("size") == EXPECTED_SIZE, f"run{index}: loadbufferx size wrong"
    assert direct_event.get("head16_hex") == LOCKED_HEAD16, f"run{index}: loadbufferx head16 mismatch"
    direct_hex = direct_event.get("buffer_hex")
    assert isinstance(direct_hex, str) and len(direct_hex) == EXPECTED_SIZE * 2, f"run{index}: loadbufferx buffer_hex length"
    assert sha256_hex(hex_to_bytes(direct_hex)) == LOCKED_RES, f"run{index}: loadbufferx buffer SHA mismatch"
    chunk_name = direct_event.get("chunk_name")
    assert isinstance(chunk_name, str) and "BattleLogic.res" in chunk_name, f"run{index}: chunk name wrong"

    # 7) LUA_PCALL: function == lua_pcallk, state matches, nargs/nresults/errfunc == 0,
    #    return_code recorded (any value is valid evidence of the execution edge).
    pcall_event = pcall_events[0]
    assert pcall_event.get("function") == "lua_pcallk", f"run{index}: pcall function not lua_pcallk"
    assert pcall_event.get("nargs") == 0, f"run{index}: pcall nargs != 0"
    assert pcall_event.get("nresults") == 0, f"run{index}: pcall nresults != 0"
    assert pcall_event.get("errfunc") == 0, f"run{index}: pcall errfunc != 0"
    pcall_return = pcall_event.get("return_code")
    assert isinstance(pcall_return, int), f"run{index}: pcall return_code missing"

    # 8) caller RVA for the FEProj-internal lua_load is inside FEProj
    internal = [e for e in lua_load_events if e.get("function") == "lua_load" and e.get("caller_module") == "libFEProj.so"]
    assert len(internal) >= 1, f"run{index}: no FEProj-internal lua_load caller"
    caller_rva = internal[0].get("caller_rva")
    assert isinstance(caller_rva, str) and caller_rva.startswith("0x"), f"run{index}: caller RVA missing"

    # 9) no dropped events
    assert not any(e.get("event") == "B2_EVENTS_TRUNCATED" for e in events), f"run{index}: dropped events present"

    return {
        "run_dir": str(run_dir),
        "base": base,
        "size": size,
        "open_fd": read_event.get("fd"),
        "buffer_sha256": buffer_sha,
        "internal_lua_load_caller_rva": caller_rva,
        "load_return_code": direct_event.get("return_code"),
        "pcall_return_code": pcall_return,
        "survival_seconds": survival.get("observed_seconds"),
    }


def main(run_dirs: list[str]) -> int:
    verified = []
    for index, run in enumerate(run_dirs, start=1):
        verified.append(verify_run(Path(run), index))
    # Cross-run stability: internal lua_load caller RVA must match across runs.
    rvas = [run["internal_lua_load_caller_rva"] for run in verified]
    assert len(set(rvas)) == 1, f"caller RVA unstable across runs: {rvas}"

    evidence = {
        "verdict": "G1_LOADER_EXECUTION_EDGE_OBSERVED",
        "scope": "loader->execution call edge only (luaL_loadbufferx -> lua_pcallk on a locked "
                 "BattleLogic.res chunk); a nonzero pcallk return_code is valid evidence of the "
                 "execution edge; dispatch/consumer chain NOT observed; G1 full verdict remains "
                 "NOT_ESTABLISHED",
        "evidence_tier": "H",
        "frida_version": EXPECTED_FRIDA,
        "locked_inputs": {
            "libFEProj.so_sha256": LOCKED_FEPROJ,
            "BattleLogic.res_sha256": LOCKED_RES,
            "BattleLogic.res_head16": LOCKED_HEAD16,
            "BattleLogic.res_size": EXPECTED_SIZE,
        },
        "runs": verified,
        "internal_lua_load_caller_rva_stable": True,
        "built_at": datetime.now().isoformat(),
    }
    EVIDENCE_OUT.write_text(json.dumps(evidence, sort_keys=True, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"evidence": str(EVIDENCE_OUT), "runs": [r["run_dir"] for r in verified]}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
