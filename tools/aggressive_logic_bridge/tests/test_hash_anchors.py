from pathlib import Path
import importlib.util


def load_mod():
    p = Path(__file__).resolve().parents[1] / "hash_anchors.py"
    spec = importlib.util.spec_from_file_location("hash_anchors", p)
    m = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(m)
    return m


def test_expected_table_complete():
    m = load_mod()
    assert set(m.EXPECTED) == set(m.ANCHORS)
    assert len(m.EXPECTED) == 7
