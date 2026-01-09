#!/usr/bin/env python3
"""Sanitize all swagger/openapi JSON files under docs/api into docs/api/sanitized.

This keeps the generation flow reproducible:
- strips HTML spans in descriptions/examples
- fixes invalid `properties` entries
- flattens basePath into paths
- removes `required` from *$Response* schemas to make generated response models nullable

Usage:
  python3 scripts/sanitize_all_swagger.py
"""

from __future__ import annotations

from pathlib import Path

from sanitize_swagger import main as _sanitize_one

def main() -> int:
    repo_root = Path(__file__).resolve().parents[1]
    input_dir = repo_root / "docs" / "api"
    output_dir = input_dir / "sanitized"

    output_dir.mkdir(parents=True, exist_ok=True)

    json_files = sorted(
        p for p in input_dir.glob("*.json") if p.is_file() and p.name != "sanitized"
    )
    if not json_files:
        print(f"No swagger json files found in: {input_dir}")
        return 1

    failures: list[Path] = []
    for input_path in json_files:
        output_path = output_dir / input_path.name
        # Call sanitize_swagger.py as a library by reusing its CLI.
        # We avoid importing internal functions so changes remain centralized.
        import sys

        old_argv = sys.argv
        try:
            sys.argv = ["sanitize_swagger.py", str(input_path), str(output_path)]
            rc = _sanitize_one()
        finally:
            sys.argv = old_argv

        if rc != 0:
            failures.append(input_path)

    if failures:
        print("Failed to sanitize:")
        for p in failures:
            print(f"- {p}")
        return 1

    print(f"Sanitized {len(json_files)} file(s) into {output_dir}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
