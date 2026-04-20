from __future__ import annotations

import hashlib
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
# baseline: corpus/basic-data/external-device-20260814 (resource 7.2.55.126, 2026-08-14)
# global-metadata.dat  FETest 22 .res hash 
ANCHORS = {
    "libtdr.so": ROOT / "work/native-container-audit/decompressed-arm64/libtdr.so",
    "libLNet.so": ROOT / "work/native-container-audit/decompressed-arm64/libLNet.so",
    "libFEProj.so": ROOT / "work/native-container-audit/decompressed-arm64/libFEProj.so",
    "libil2cpp.so": ROOT / "work/native-container-audit/decompressed-arm64/libil2cpp.so",
    "libunity.so": ROOT / "work/native-container-audit/decompressed-arm64/libunity.so",
    "global-metadata.dat": ROOT
    / "corpus/basic-data/external-device-20260814/files/il2cpp/Metadata/global-metadata.dat",
    "BattleLogic.res": ROOT
    / "corpus/basic-data/external-device-20260814/files/Res/FETest/Logic/BattleLogic.res",
}
EXPECTED = {
    "libtdr.so": "94c3b45384d810c9136084eefabe6ab6ef5e1808017af67ffc9c53fc3876495d",
    "libLNet.so": "55c2879f7acdd0c64fb308ce3a0a1007d308417e475b431dabd9c5e0f8ab5a86",
    "libFEProj.so": "5e608f2da59371a583929aed90e4ec4985bc8ee12fc0d44124000b94d1b8a02a",
    "libil2cpp.so": "6e8e7002169bc658fbe64be4c6e216e22c4bf719a620940e77890b9e57211dc6",
    "libunity.so": "6dfbec920ddd0539de4ab2f1d5aef783f203399ab46939daa46b51f1b8c215ac",
    "global-metadata.dat": "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d",
    "BattleLogic.res": "347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5",
}


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def main() -> int:
    rows = []
    bad = 0
    for name, path in ANCHORS.items():
        if not path.is_file():
            rows.append({"name": name, "path": str(path), "ok": False, "error": "missing"})
            bad += 1
            continue
        digest = sha256(path)
        ok = digest == EXPECTED[name]
        if not ok:
            bad += 1
        rows.append(
            {
                "name": name,
                "path": str(path),
                "size": path.stat().st_size,
                "sha256": digest,
                "expected": EXPECTED[name],
                "ok": ok,
            }
        )
    out = {
        "package_target": "dev.wildriftresearch.logicharness",
        "game_package": "com.riotgames.league.wildrift",
        "game_version": "7.2.0.2460",
        "build": "7246064",
        "abi": "arm64-v8a",
        # Historical host field: this run predates the accepted Frida 17.15.5
        # toolchain and must not be presented as the accepted version.
        "frida_host_historical": "17.8.0",
        "frida_host_accepted": "17.15.5",
        "anchors": rows,
        "all_ok": bad == 0,
    }
    dest = ROOT / "work/aggressive-logic-bridge-2026-07-13/input-manifest.json"
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(json.dumps(out, indent=2), encoding="utf-8")
    print(json.dumps({"all_ok": out["all_ok"], "bad": bad, "wrote": str(dest)}, indent=2))
    return 0 if bad == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
