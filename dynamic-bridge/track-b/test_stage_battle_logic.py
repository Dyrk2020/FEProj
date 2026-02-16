from __future__ import annotations

import os
import subprocess
import time


ADB = os.environ.get("ADB", "adb")
PACKAGE = "dev.wildriftresearch.logicharness"
COMPONENT = f"{PACKAGE}/.MainActivity"
BATTLE_LOGIC_SHA256 = "347a4ff3217510443d1b3384b1fdbd3d17d62e6c05f8be0b8ae39e61a64417d5"
BATTLE_LOGIC_READ_PATH = "/data/user/0/dev.wildriftresearch.logicharness/files/fetest/Res/FETest/Logic/BattleLogic.res"
BATTLE_LOGIC_HEAD16 = "1b4c7561530119930d0a1a0a04040408"


def adb(*args: str) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        [ADB, *args],
        check=True,
        text=True,
        capture_output=True,
        timeout=180,
    )

def wait_for_stage_logs(required_log: str) -> str:
    deadline = time.monotonic() + 360
    while time.monotonic() < deadline:
        logs = adb("logcat", "-d", "-s", "WRLogicHarness:I", "*:S").stdout
        if required_log in logs:
            return logs
        time.sleep(1)
    raise AssertionError(f"timed out waiting for helper stage log: {required_log}")


def test_stage_action_stages_battle_logic_after_metadata_processing() -> None:
    adb("logcat", "-c")
    adb("shell", "am", "clear-debug-app")
    adb("shell", "am", "force-stop", PACKAGE)
    metadata_staged = (
        "STAGED meta/Metadata/global-metadata.dat "
        "sha256=5bd0f8b0efb4ebbbbe148300dc17166f9335a9e2d5ff20de42edb22267fde45d"
    )
    metadata_skipped = "SKIP missing incoming/global-metadata.dat"
    battle_logic_staged = f"STAGED BattleLogic.res sha256={BATTLE_LOGIC_SHA256}"
    battle_logic_read_path = f"FETEST_READ_PATH={BATTLE_LOGIC_READ_PATH}"
    battle_logic_read_n = "FETEST_READ_N=16"
    battle_logic_read_hex = f"FETEST_READ_HEX={BATTLE_LOGIC_HEAD16}"
    adb("shell", "am", "start", "-n", COMPONENT, "--es", "action", "stage")
    logs = wait_for_stage_logs(battle_logic_read_hex)

    assert battle_logic_staged in logs
    assert battle_logic_read_path in logs
    assert battle_logic_read_n in logs
    assert battle_logic_read_hex in logs
    metadata_index = min(
        index
        for index in (logs.find(metadata_staged), logs.find(metadata_skipped))
        if index >= 0
    )
    assert metadata_index < logs.index(battle_logic_staged)
