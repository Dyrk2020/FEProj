#!/usr/bin/env python3
"""Local smoke validator for the Batch 0 public contract."""
from __future__ import annotations

import copy
import json
from pathlib import Path

from jsonschema import Draft202012Validator

ROOT = Path(__file__).resolve().parent
SCHEMA = json.loads((ROOT / "research.schema.json").read_text())
EXAMPLES = json.loads((ROOT / "examples.json").read_text())


def expect_valid(value: dict) -> None:
    errors = sorted(Draft202012Validator(SCHEMA).iter_errors(value), key=lambda e: list(e.path))
    if errors:
        raise AssertionError(f"expected valid record, got: {errors[0].message}")


def expect_invalid(value: dict, label: str) -> None:
    if not list(Draft202012Validator(SCHEMA).iter_errors(value)):
        raise AssertionError(f"expected invalid record: {label}")


def main() -> None:
    for example in EXAMPLES:
        expect_valid(example)

    missing = copy.deepcopy(EXAMPLES[0])
    del missing["exact_command"]
    expect_invalid(missing, "missing exact_command")

    bad_level = copy.deepcopy(EXAMPLES[3])
    bad_level["environment"]["level"] = "X"
    expect_invalid(bad_level, "invalid environment level")

    bad_path = copy.deepcopy(EXAMPLES[0])
    bad_path["relative_path"] = "/outside/repository.bin"
    expect_invalid(bad_path, "absolute path")
    print(f"PASS: {len(EXAMPLES)} valid records; 3 invalid cases rejected")


if __name__ == "__main__":
    main()
