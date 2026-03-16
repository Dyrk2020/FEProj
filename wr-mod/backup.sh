#!/system/bin/sh
# backup.sh —  libFEProj.soapp_libs + files/app_libs /data/local/tmp/wr_mod_backup/
# : sh backup.sh
set -e
BK=/data/local/tmp/wr_mod_backup
mkdir -p $BK
for p in /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so \
         /data/data/com.riotgames.league.wildrift/files/app_libs/libFEProj.so; do
  [ -f "$p" ] || { echo "SKIP $p (missing)"; continue; }
  tag=$(echo "$p" | md5sum | cut -c1-8)
  cp -f "$p" "$BK/libFEProj.so.$tag.bak"
  echo "backed up $p -> $BK/libFEProj.so.$tag.bak"
  sha256sum "$p" "$BK/libFEProj.so.$tag.bak"
done
sha256sum /data/data/com.riotgames.league.wildrift/app_libs/libFEProj.so > $BK/orig.sha256
echo BACKUP_DONE
