#!/usr/bin/env python3
import json
import sys
from pathlib import Path

KEYS = {'description', 'summary', 'example', 'examples', 'x-example', 'x-examples'}


def _sanitize_properties(value):
    if not isinstance(value, dict):
        return value
    cleaned = {}
    for key, prop in value.items():
        # Some swagger exports incorrectly place `required: []` under properties.
        if isinstance(prop, list):
            continue
        cleaned[key] = prop
    return cleaned


def sanitize(value):
    if isinstance(value, dict):
        new = {}
        for k, v in value.items():
            if k == 'properties':
                v = _sanitize_properties(v)
            if k in KEYS and isinstance(v, str) and '<span' in v:
                new[k] = ''
                continue
            new[k] = sanitize(v)
        return new
    if isinstance(value, list):
        return [sanitize(item) for item in value]
    if isinstance(value, str) and '<span' in value:
        return ''
    return value


def main() -> int:
    if len(sys.argv) != 3:
        print('Usage: sanitize_swagger.py <input_json> <output_json>')
        return 1

    input_path = Path(sys.argv[1])
    output_path = Path(sys.argv[2])

    data = json.loads(input_path.read_text(encoding='utf-8'))
    sanitized = sanitize(data)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(sanitized, ensure_ascii=False, indent=2), encoding='utf-8')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
