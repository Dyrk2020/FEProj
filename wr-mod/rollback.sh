#!/system/bin/sh
# rollback.sh —  libFEProj.so
# : sh rollback.sh
set -e
BK=/data/local/tmp/wr_mod_backup
[ -f "$BK/orig.sha256" ] || { echo "NO BACKUP — nothing to roll back"; exit 1; }

pids=$(pidof com.riotgames.league.wildrift 2>/dev/null)
[ -n "$pids" ] && { echo "killing game pid(s): $pids"; kill $pids 2>/dev/null || true; sleep 2; }

restored=0
for p in /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so \
         /data/data/com.riotgames.league.wildrift/files/app_libs/libFEProj.so; do
  [ -f "$p" ] || { echo "SKIP $p (missing)"; continue; }
  tag=$(echo "$p" | md5sum | cut -c1-8)
  bak="$BK/libFEProj.so.$tag.bak"
  [ -f "$bak" ] || { echo "MISSING BACKUP for $p — need $bak"; continue; }
  cp -f "$bak" "$p"
  chmod 600 "$p"; chown u0_a352:u0_a352 "$p" 2>/dev/null || true
  echo "restored $p"
  restored=$((restored+1))
done

# 
exp=$(cut -d' ' -f1 $BK/orig.sha256)
got=$(sha256sum /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so | cut -d' ' -f1)
if [ "$exp" = "$got" ]; then
  echo "ROLLBACK_OK hash=$got"
else
  echo "ROLLBACK_WARN hash mismatch: exp $exp got $got"
fi
