#!/usr/bin/env python3
"""Batch-decompile all FETest .res files with the file-format decoder and
produce LOWCONF-STATS.md (old corpus decompiler vs new)."""
import sys, re
from pathlib import Path

ROOT = Path("<research-workspace>")
RES_DIR = ROOT / "corpus/basic-data/external-device-20260814/files/Res/FETest"
WORK = ROOT / "work/opcode-semantics-20260814"
RERUN = WORK / "rerun"
OLD = ROOT / "work/lua-decompile-20260814/decompile_lua_res.py"
NEW = WORK / "decompile_lua_res_filefmt.py"

sys.path.insert(0, str(ROOT / "work/ai-cfg-recovery-2026-08-04"))
from lua_res_parse import parse_res, walk

def ror29(w): return ((w & 7) << 3) | (w >> 29)

def count_lowconf(text):
    """count instructions and [LOW-CONF] lines from a decompiled .lua text."""
    n_ins = 0; n_low = 0; n_proto = 0
    for ln in text.splitlines():
        m = re.match(r"^\s*\d+\|", ln)
        if m:
            n_ins += 1
            if "[LOW-CONF" in ln:
                n_low += 1
        if ln.strip().startswith("function "):
            n_proto += 1
    return n_ins, n_low, n_proto

def run_decompiler(py, res, out):
    import subprocess
    r = subprocess.run([sys.executable, str(py), str(res)], capture_output=True, text=True)
    if r.returncode != 0:
        return f"-- ERROR {r.stderr[:200]}"
    return r.stdout

def main():
    RERUN.mkdir(exist_ok=True)
    res_files = sorted(RES_DIR.rglob("*.res"))
    rows = []
    tot_old = tot_new = tot_ins = 0
    for rf in res_files:
        rel = rf.relative_to(RES_DIR)
        out_lua = RERUN / (str(rel).replace("/", "_").replace(".res", ".lua"))
        new_text = run_decompiler(NEW, rf, out_lua)
        old_text = run_decompiler(OLD, rf, out_lua)
        out_lua.write_text(new_text)
        ni, nl_new, np_ = count_lowconf(new_text)
        ni_o, nl_old, _ = count_lowconf(old_text)
        tot_ins += ni; tot_old += nl_old; tot_new += nl_new
        rows.append((rel, ni, nl_old, nl_new))
    # stats file
    lines = []
    lines.append("# LOWCONF-STATS — old corpus decompiler vs new (file-format + RK + VM names)")
    lines.append("")
    lines.append(f"- files: {len(rows)} · total instructions: {tot_ins}")
    lines.append(f"- old LOW-CONF: {tot_old} ({tot_old/tot_ins*100:.1f}%)")
    lines.append(f"- new LOW-CONF: {tot_new} ({tot_new/tot_ins*100:.1f}%)")
    lines.append("")
    lines.append("| file | insns | old LOW | new LOW |")
    lines.append("|------|-------|---------|---------|")
    for rel, ni, lo, ln in rows:
        lines.append(f"| {rel} | {ni} | {lo} | {ln} |")
    lines.append("")
    lines.append("Method: each .res parsed by lua_res_parse.py; decompiled with")
    lines.append("decompile_lua_res_filefmt.py (this work dir). LOW-CONF = line with")
    lines.append("[LOW-CONF] marker (confidence < 0.5). Opcode semantics per")
    lines.append("opcode-semantics.md.")
    (WORK / "LOWCONF-STATS.md").write_text("\n".join(lines) + "\n")
    print("\n".join(lines[:12]))

if __name__ == "__main__":
    main()
