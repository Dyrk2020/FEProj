#!/usr/bin/env bash
# Package the Zygisk module zip for `ksud module install`.
set -euo pipefail
cd "$(dirname "$0")"
OUT="${1:-build/t3zy.zip}"
[ -f module/zygisk/arm64-v8a.so ] || { echo "run ./build.sh first" >&2; exit 1; }
chmod 644 module/module.prop module/META-INF/com/google/android/update-binary
chmod 755 module/META-INF/com/google/android module/META-INF/com/google module/META-INF/com module/META-INF module/zygisk
chmod 644 module/zygisk/arm64-v8a.so
mkdir -p "$(dirname "$OUT")"
rm -f "$OUT"
(cd module && zip -qX -r "$OLDPWD/$OUT" .)
echo "[ok] $OUT:"
unzip -l "$OUT"
