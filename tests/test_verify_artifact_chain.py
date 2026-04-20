import hashlib
import json
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from tools.verify_artifact_chain import verify


def test_synthetic_counts_and_printable_runs(tmp_path: Path):
    static = tmp_path / "work/static-analysis-2026-08-04"
    static.mkdir(parents=True)
    (tmp_path / "artifacts").mkdir()
    (tmp_path / "artifacts/2026-08-artifact-manifest.jsonl").write_text(
        '# historical header\n' + json.dumps({"artifact_id": "x", "input_path": "/tmp/tmp-work/input.bin",
        "input_sha256": None, "output_path": "C:\\\\old\\out.bin",
        "output_sha256": None, "status": "observed"}) + "\n", encoding="utf-8")
    (static / "MANIFEST.json").write_text(json.dumps({"island_count": 2}), encoding="utf-8")
    (static / "island-catalog.jsonl").write_text('{"id":1}\n{"id":2}\n', encoding="utf-8")
    (static / "edges.json").write_text(json.dumps({"count": 3, "edges": []}), encoding="utf-8")
    (static / "strings.jsonl").write_bytes(b'{"s":"alpha"}\n\x00ABCD\x00\n')
    report = verify(tmp_path)
    assert report["metrics"]["catalog_rows"] == 2
    assert report["metrics"]["edge_rows"] == 3
    assert report["metrics"]["string_rows"] == 2
    assert report["metrics"]["printable_ascii_runs"] >= 1
    assert report["external_paths"][0]["status"] == "historical_unavailable"


def test_available_hash_is_reported(tmp_path: Path):
    static = tmp_path / "work/static-analysis-2026-08-04"
    static.mkdir(parents=True)
    (tmp_path / "artifacts").mkdir()
    data = b"fixture"
    source = tmp_path / "fixture.bin"
    source.write_bytes(data)
    expected = hashlib.sha256(data).hexdigest()
    (tmp_path / "artifacts/2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "fixture", "input_path": str(source),
                    "input_sha256": expected, "output_path": "-", "output_sha256": None}) + "\n",
        encoding="utf-8")
    (static / "MANIFEST.json").write_text("{}", encoding="utf-8")
    report = verify(tmp_path)
    assert report["anchors"]["fixture"]["input_sha256"] == expected
    assert report["hash_checks"][0]["status"] == "match"


def test_available_hash_mismatch_is_reported(tmp_path: Path):
    artifacts = tmp_path / "artifacts"
    artifacts.mkdir(parents=True)
    source = tmp_path / "input.bin"
    source.write_bytes(b"actual")
    (artifacts / "2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "bad", "input_path": str(source),
                    "input_sha256": "0" * 64, "output_path": "-"}) + "\n",
        encoding="utf-8")
    report = verify(tmp_path)
    assert report["hash_mismatches"][0]["artifact_id"] == "bad"
    assert report["hash_mismatches"][0]["status"] == "mismatch"


def test_external_paths_in_nested_required_static_json(tmp_path: Path):
    static = tmp_path / "work/static-analysis-2026-08-04"
    static.mkdir(parents=True)
    (tmp_path / "artifacts").mkdir()
    (static / "registry-dump.json").write_text(
        json.dumps({"nested": [{"path": "<scratch-workspace>/hidden.bin"},
                                 {"windows": "F:\\\\old\\\\artifact.bin"}]}), encoding="utf-8")
    report = verify(tmp_path)
    paths = {entry["path"] for entry in report["external_paths"]}
    assert "<scratch-workspace>/hidden.bin" in paths
    assert any(path.startswith("F:") for path in paths)
    assert all(entry["status"] == "historical_unavailable" for entry in report["external_paths"])


def test_available_file_without_recorded_hash_is_unrecorded_not_mismatch(tmp_path: Path):
    artifacts = tmp_path / "artifacts"
    artifacts.mkdir(parents=True)
    source = tmp_path / "input.bin"
    source.write_bytes(b"actual")
    (artifacts / "2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "unrecorded", "input_path": str(source),
                    "input_sha256": None, "output_path": "-"}) + "\n",
        encoding="utf-8")
    report = verify(tmp_path)
    assert report["hash_mismatches"] == []
    assert report["hash_unrecorded"][0]["artifact_id"] == "unrecorded"
    assert report["hash_checks"][0]["status"] == "unrecorded"


def test_check_mode_allows_available_file_without_recorded_hash(tmp_path: Path):
    artifacts = tmp_path / "artifacts"
    artifacts.mkdir(parents=True)
    source = tmp_path / "input.bin"
    source.write_bytes(b"actual")
    (artifacts / "2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "unrecorded", "input_path": str(source),
                    "input_sha256": None}) + "\n",
        encoding="utf-8")
    script = Path(__file__).resolve().parents[1] / "tools/verify_artifact_chain.py"
    result = subprocess.run(
        [sys.executable, str(script), "--root", str(tmp_path), "--check"],
        capture_output=True,
        text=True,
        check=False,
    )
    assert result.returncode == 0
    assert '"status": "unrecorded"' in result.stdout


def test_missing_referenced_file_is_historical_unavailable(tmp_path: Path):
    artifacts = tmp_path / "artifacts"
    artifacts.mkdir(parents=True)
    (artifacts / "2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "gone", "input_path": "/tmp/does-not-exist.bin",
                    "input_sha256": "1" * 64}) + "\n",
        encoding="utf-8")
    report = verify(tmp_path)
    assert report["hash_checks"][0]["status"] == "historical_unavailable"


def test_check_mode_fails_on_available_hash_mismatch(tmp_path: Path):
    artifacts = tmp_path / "artifacts"
    artifacts.mkdir(parents=True)
    source = tmp_path / "input.bin"
    source.write_bytes(b"actual")
    (artifacts / "2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "bad", "input_path": str(source),
                    "input_sha256": "0" * 64}) + "\n",
        encoding="utf-8")
    script = Path(__file__).resolve().parents[1] / "tools/verify_artifact_chain.py"
    result = subprocess.run(
        [sys.executable, str(script), "--root", str(tmp_path), "--check"],
        capture_output=True,
        text=True,
        check=False,
    )
    assert result.returncode == 1
    assert '"status": "mismatch"' in result.stdout


def test_check_mode_allows_historical_unavailable(tmp_path: Path):
    artifacts = tmp_path / "artifacts"
    artifacts.mkdir(parents=True)
    (artifacts / "2026-08-artifact-manifest.jsonl").write_text(
        json.dumps({"artifact_id": "gone", "input_path": "/tmp/does-not-exist.bin",
                    "input_sha256": "1" * 64}) + "\n",
        encoding="utf-8")
    script = Path(__file__).resolve().parents[1] / "tools/verify_artifact_chain.py"
    result = subprocess.run(
        [sys.executable, str(script), "--root", str(tmp_path), "--check"],
        capture_output=True,
        text=True,
        check=False,
    )
    assert result.returncode == 0
    assert '"historical_unavailable"' in result.stdout
