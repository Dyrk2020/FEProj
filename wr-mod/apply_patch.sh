#!/system/bin/sh
# apply_patch.sh —  patch.txt `FILEOFFSET HEXBYTES` libFEProj.so
# : sh backup.sh  /data/local/tmp/wr_mod/patch.txt
# : sh apply_patch.sh [patch.txt ]
set -e
PATCH=${1:-/data/local/tmp/wr_mod/patch.txt}
[ -f "$PATCH" ] || { echo "NO PATCH FILE: $PATCH"; exit 1; }
BK=/data/local/tmp/wr_mod_backup
[ -f "$BK/orig.sha256" ] || { echo "NO BACKUP FOUND — run backup.sh first"; exit 1; }

cur=$(sha256sum /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so | cut -d' ' -f1)
orig=$(cut -d' ' -f1 $BK/orig.sha256)
if [ "$cur" != "$orig" ]; then
  echo "ABORT: current libFEProj.so hash != backup (was it already patched?)"; exit 1
fi

apply_one() {
  so=$1; off=$2; hex=$3
  i=0; bad=0
  while [ $i -lt ${#hex} ]; do
    exp=$(dd if=$BK/ref.bin bs=1 skip=$(($off+$i/2)) count=1 2>/dev/null | od -An -tx1 | tr -d ' \n')
    got=$(dd if=$so bs=1 skip=$(($off+$i/2)) count=1 2>/dev/null | od -An -tx1 | tr -d ' \n')
    if [ "$exp" != "$got" ]; then echo "DRIFT at $so +$((off+$i/2)): exp $exp got $got"; bad=1; fi
    i=$((i+2))
  done
  [ $bad -eq 1 ] && { echo "ABORT: byte drift"; exit 1; }
  # 
  tmp=/data/local/tmp/wr_mod/seg.$$
  : > $tmp
  i=0
  while [ $i -lt ${#hex} ]; do
    printf "\\x${hex:$i:2}" >> $tmp
    i=$((i+2))
  done
  dd if=$tmp of=$so bs=1 seek=$off conv=notrunc 2>/dev/null
  rm -f $tmp
  echo "patched $so +$off <- $hex"
}

mkdir -p /data/local/tmp/wr_mod
cp -f /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so $BK/ref.bin

for p in /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so \
         /data/data/com.riotgames.league.wildrift/files/app_libs/libFEProj.so; do
  [ -f "$p" ] || { echo "SKIP $p (missing)"; continue; }
  while read -r off hex; do
    [ -n "$off" ] || continue
    apply_one "$p" $((16#$off)) "$hex"
  done < $PATCH
done
echo APPLY_DONE
sha256sum /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so
