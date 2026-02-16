#!/bin/bash
# run_g2_consumer.sh — G2 consumer observation, 2 fresh captures (plan
# docs/plans/2026-08-17-g2-consumer-observe.md §3), with the fixed hook
# (post-registration attach + lua_tolstring key read + real-member drive).
set -u
cd <research-workspace>
ADB="adb -s 9ab83b62"
PY=$FRIDA_VENV/bin/python
RUNNER=work/aggressive-logic-bridge-2026-07-13/track-b/b2_host_runner.py
PACKAGE=dev.wildriftresearch.logicharness
COMPONENT=dev.wildriftresearch.logicharness/.MainActivity

for run in 1 2; do
  echo "===== capture $run ====="
  $ADB shell am force-stop $PACKAGE
  sleep 1
  POST=$($ADB shell pidof $PACKAGE)
  if [ -n "$POST" ]; then echo "ERROR: post-stop PID not empty: $POST"; exit 1; fi
  echo "[stage] streaming locked inputs"
  $PY $RUNNER --stream-dsos --stage-battle-logic || { echo "ERROR: staging failed"; exit 1; }
  echo "[spawn] gadget"
  $ADB shell am start -n $COMPONENT --ez gadget true --es action canary
  sleep 5
  $ADB forward tcp:27042 tcp:27042
  PID=$($ADB shell pidof $PACKAGE)
  if [ -z "$PID" ]; then echo "ERROR: no helper pid"; exit 1; fi
  echo "[observe] pid=$PID"
  $PY $RUNNER --g2-consumer-observe --remote-gadget 127.0.0.1:27042 --attach-pid "$PID"
  RC=$?
  echo "[cleanup] run $run rc=$RC"
  $ADB shell am force-stop $PACKAGE
  $ADB forward --remove-all
  sleep 3
done
echo "===== done ====="
