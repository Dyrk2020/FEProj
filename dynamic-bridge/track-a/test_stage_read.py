from __future__ import annotations

import os
import subprocess


ADB = os.environ.get("ADB", "adb")
PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = f"{PACKAGE}/.MainActivity"


def adb(*args: str) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [ADB, *args],
        check=True,
        text=True,
        capture_output=True,
        timeout=180,
    )


def test_stage_action_reads_staged_fmn_metadata_header() -> None:
    adb("logcat", "-c")
    adb("shell", "am", "force-stop", PACKAGE)
    adb("shell", "am", "start", "-W", "-n", COMPONENT, "--es", "action", "stage")
    logs = adb("logcat", "-d", "-s", "WRLogicHarness:I", "*:S").stdout

    metadata_path = "/data/user/0/dev.wildriftresearch.logicharness/files/meta/Metadata/global-metadata.dat"
    digest = "5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"
    staged = f"STAGED meta/Metadata/global-metadata.dat sha256={digest}"
    read_path = f"FMN_READ_PATH={metadata_path}"
    assert staged in logs
    assert read_path in logs
    assert "FMN_READ_N=16" in logs
    assert "FMN_READ_HEX=464d4e211f00000049db9dcc2b3d9dcf" in logs
    assert logs.index(staged) < logs.index(read_path) < logs.index("FMN_READ_N=16")
    for legacy_path in ("files/meta/global-metadata.dat", "files/meta/il2cpp/Metadata/global-metadata.dat"):
        adb("shell", f"run-as {PACKAGE} sh -c 'test ! -e {legacy_path}'")
