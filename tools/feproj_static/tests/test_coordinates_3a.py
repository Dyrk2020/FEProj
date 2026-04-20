import unittest

from tools.feproj_static.feproj import address_coordinates, fixed_158853c


class Coordinate3ATests(unittest.TestCase):
    def test_explicit_frames_and_views(self):
        row = address_coordinates(file_offset=0x100, static_va=0x200,
                                  runtime_va=0x300, rva=0x400,
                                  image_base=0x100000, view="runtime_remapped",
                                  frame="execution")
        self.assertEqual(row["runtime_va"], 0x300)
        self.assertEqual(row["frame"], "execution")
        self.assertEqual(row["view"], "runtime_remapped")

    def test_fixed_anchor(self):
        self.assertEqual(fixed_158853c(), {
            "storage_va": 0x158853C, "source_va": 0x157853C,
            "execution_va": 0x15A853C, "caller_va": 0x3EC41E8,
            "runtime_slot_va": 0x158853C,
        })

    def test_requires_coordinate(self):
        with self.assertRaises(ValueError):
            address_coordinates(view="raw_elf")


if __name__ == "__main__":
    unittest.main()
