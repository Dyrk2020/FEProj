#!/usr/bin/env bash
# Build t3zy Zygisk module (arm64-v8a) with NDK r27c.
# Usage: ./build.sh [ndk-dir]   (default: ext/android-ndk-r27c unzipped in place)
set -euo pipefail
cd "$(dirname "$0")"

SLICE="$(pwd)"
NDK="${1:-$SLICE/ext/android-ndk-r27c}"
if [ ! -d "$NDK" ]; then
  echo "[build] unzipping NDK..."
  unzip -q "$SLICE/ext/android-ndk-r27c-linux.zip" -d "$SLICE/ext"
fi
CXX="$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android24-clang++"
[ -x "$CXX" ] || { echo "missing $CXX" >&2; exit 1; }

mkdir -p module/zygisk build

FLAGS=(-std=c++17 -O2 -fvisibility=hidden -ffunction-sections -fdata-sections
       -static-libstdc++ -Wl,--gc-sections -shared -pthread -llog -Iext)
echo "[build] release"
"$CXX" "${FLAGS[@]}" src/t3zy.cpp -o build/t3zy.so
if readelf -d build/t3zy.so | grep -q 'libc++_shared'; then
  echo "FATAL: release links libc++_shared — zn-daemon cannot preload it" >&2; exit 1
fi
"$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip" --strip-all build/t3zy.so
cp build/t3zy.so module/zygisk/arm64-v8a.so

echo "[build] beacon (L0 dispatch diagnostic)"
"$CXX" "${FLAGS[@]}" -DT3ZY_BEACON src/t3zy.cpp -o build/t3zy_beacon.so
"$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip" --strip-all build/t3zy_beacon.so

echo "[ok] module/zygisk/arm64-v8a.so $(wc -c < module/zygisk/arm64-v8a.so) bytes"
echo "[ok] build/t3zy_beacon.so    $(wc -c < build/t3zy_beacon.so) bytes"
