import unittest

from tools.feproj_static.build_catalog import (
    catalog_summary,
    classify_catalog_row,
    classify_edge_row,
)


class Catalog3ATests(unittest.TestCase):
    def test_catalog_size_and_instruction_semantics_are_explicit(self):
        row = classify_catalog_row({"id": 1, "page": 0x1000, "size": 0x3000,
                                    "insns": 7, "note": "scan"})
        self.assertEqual(row["layer"], "island")
        self.assertEqual(row["byte_size"], 0x3000)
        self.assertEqual(row["insn_count"], 7)
        self.assertFalse(row["insns_is_total"])
        self.assertEqual(catalog_summary([row])["enhanced_islands"], 1324)

    def test_synthetic_edges_cover_all_layer_pairs_and_both_branch_kinds(self):
        cases = (
            ("bl", False, False),  # normal -> normal
            ("b", False, True),    # normal -> island
            ("bl", True, False),   # island -> normal
            ("b", True, True),     # island -> island
        )
        rows = [classify_edge_row({"from": 0x1000 + i * 4,
                                   "to": 0x2000 + i * 4,
                                   "kind": kind, "si": si, "di": di})
                for i, (kind, si, di) in enumerate(cases)]
        self.assertEqual([(r["source_layer"], r["target_layer"]) for r in rows], [
            ("normal", "normal"), ("normal", "island"),
            ("island", "normal"), ("island", "island")])
        self.assertEqual([r["kind"] for r in rows], ["BL", "B", "BL", "B"])
        for r, (_, si, di) in zip(rows, cases):
            self.assertEqual(r["edge_kind"], r["kind"])
            self.assertEqual((r["si"], r["di"]), (si, di))
            self.assertEqual(r["source_view"], "xor_0x30")
            self.assertEqual(r["target_view"], "xor_0x30")
            self.assertIn(r["source_frame"], ("storage", "execution"))
            self.assertIn(r["target_frame"], ("storage", "execution"))
            self.assertTrue(r["retained"])


if __name__ == "__main__":
    unittest.main()
