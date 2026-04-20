import importlib.util
import unittest
from pathlib import Path

_SPEC = importlib.util.spec_from_file_location(
    "island_edges", Path(__file__).parents[3] / "work/ai-cfg-recovery-2026-08-04/island_edges.py")
island_edges = importlib.util.module_from_spec(_SPEC)
assert _SPEC.loader is not None
_SPEC.loader.exec_module(island_edges)


class Edge3ATests(unittest.TestCase):
    def test_direct_indirect_jump_table_and_island_to_island(self):
        self.assertEqual(island_edges.classify_edge(kind="bl", src_island=True,
                                                     dst_island=True)["edge_kind"], "direct")
        self.assertEqual(island_edges.classify_edge(kind="blr", src_island=True,
                                                     dst_island=False)["edge_kind"], "indirect")
        self.assertEqual(island_edges.classify_edge(kind="br", src_island=True,
                                                     dst_island=True, table_target=True)["edge_kind"], "jump-table")
        self.assertTrue(island_edges.classify_edge(kind="b", src_island=True,
                                                   dst_island=True)["retained"])


if __name__ == "__main__":
    unittest.main()
