#!/bin/bash
# run_batches.sh — 881 template fn decompilation, sequential batches (project lock)
# Usage: bash run_batches.sh
set -u
ROOT=<research-workspace>
SLICE=$ROOT/work/lua-api-reference-20260814
GHIDRA_PROJ=$ROOT/work/feproj-readable-20260814/ghidra-projects
BATCHES=$SLICE/batches
LOGS=$SLICE/logs
OUT=$SLICE/decompiled

mkdir -p "$OUT"
: > "$LOGS/batches.summary"

for bf in "$BATCHES"/batch*.txt; do
  bn=$(basename "$bf" .txt)
  seeds=$(cat "$bf")
  log="$LOGS/${bn}.log"
  echo "=== $(date +%T) START $bn ($(wc -c < "$bf") bytes, $(tr ';' '\n' < "$bf" | wc -l) seeds) ===" >> "$LOGS/batches.summary"
  t0=$(date +%s)
  timeout 3000 /usr/share/ghidra/support/analyzeHeadless \
    "$GHIDRA_PROJ" rtproj \
    -process libFEProj-rttext.so -noanalysis \
    -scriptPath "$SLICE/scripts" \
    -postScript DecompileAt2.java \
    "$seeds" "$OUT" \
    > "$log" 2>&1
  rc=$?
  t1=$(date +%s)
  ok=$(grep -c "DecompileAt2.java>" "$log" || true)
  echo "rc=$rc elapsed=$((t1-t0))s loglines=$ok" >> "$LOGS/batches.summary"
  echo "$bn rc=$rc elapsed=$((t1-t0))s" >> "$LOGS/progress.log"
done
echo "ALL DONE $(date)" >> "$LOGS/progress.log"
