#!/system/bin/sh
# vdev_patch.sh - fix PAC-disabled-kernel SIGILL in virtualdevice lib
# Root cause: kernel has PAC (SCTLR_EL1.EnIA) disabled -> autiasp = SIGILL.
# Game startup path calls android.companion.virtual.virtualdevice_aidl-cpp.so
# (pac-ret compiled, 18 autiasp) -> crash loop. NOP all aut* + bind mount.
# Usage: sh vdev_patch.sh mount|umount|status
SRC=/data/local/tmp/vdev_patched.so
DST=/system/lib64/android.companion.virtual.virtualdevice_aidl-cpp.so
case "$1" in
  mount)
    [ -f "$SRC" ] || { echo "missing $SRC (push vdev_patched.so first)"; exit 1; }
    chcon u:object_r:system_lib_file:s0 "$SRC" 2>/dev/null
    mount -o bind "$SRC" "$DST" && echo "OK mounted" || echo "mount failed"
    ;;
  umount)
    umount "$DST" && echo "OK unmounted" || echo "umount failed"
    ;;
  status)
    dd if="$DST" bs=1 skip=$((0x41c0)) count=4 2>/dev/null | xxd
    ;;
esac
