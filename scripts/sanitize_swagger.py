#!/usr/bin/env python3
import json
import sys
import re
from pathlib import Path

KEYS = {"description", "summary", "example", "examples", "x-example", "x-examples"}


def _strip_required_for_response_schemas(data: dict) -> None:
    """Make generated models more tolerant by removing schema-level `required`.

    We remove only `required` values that are a list of strings (OpenAPI schema
    required-properties lists). We intentionally do NOT remove boolean
    `required: true/false` flags that appear on parameters.

    This is done *before* general sanitization so json_serializable emits
    null-safe casts for missing fields / nulls.
    """

    def _strip_required_in_schema(schema: object) -> None:
        if not isinstance(schema, dict):
            return

        # Only remove well-formed `required` lists.
        required = schema.get("required")
        if isinstance(required, list) and all(isinstance(x, str) for x in required):
            schema.pop("required", None)

        for v in schema.values():
            if isinstance(v, dict):
                _strip_required_in_schema(v)
            elif isinstance(v, list):
                for item in v:
                    _strip_required_in_schema(item)

    # Apply globally (covers inline schemas under `paths`, not just `components`).
    _strip_required_in_schema(data)


def _convert_price_types_to_string(data: object) -> None:
    """Recursively change type of fields ending in 'Price' from number to string.

    This prevents crashes when the API returns a string but the generated code expects a number.
    """
    if isinstance(data, dict):
        for k, v in data.items():
            # If the key ends with 'Price' (e.g., 'sellPrice') and it's a schema definition
            # with type='number', force it to 'string'.
            if (
                k.endswith("Price")
                and isinstance(v, dict)
                and v.get("type") == "number"
            ):
                v["type"] = "string"

            # Recurse
            _convert_price_types_to_string(v)
    elif isinstance(data, list):
        for item in data:
            _convert_price_types_to_string(item)


def _convert_number_to_integer(data: object) -> None:
    """Recursively change type from number to integer unless description contains 'double'."""
    if isinstance(data, dict):
        if data.get("type") == "number":
            description = str(data.get("description", "")).lower()
            if "double" not in description:
                data["type"] = "integer"
                if "format" in data:
                    data.pop("format")

        for v in data.values():
            _convert_number_to_integer(v)
    elif isinstance(data, list):
        for item in data:
            _convert_number_to_integer(item)


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
            if k == "properties":
                v = _sanitize_properties(v)
            if k in KEYS and isinstance(v, str) and "<span" in v:
                new[k] = ""
                continue
            new[k] = sanitize(v)
        return new
    if isinstance(value, list):
        return [sanitize(item) for item in value]
    if isinstance(value, str) and "<span" in value:
        return ""
    return value


def _to_pascal_case(text: str) -> str:
    parts = re.split(r"[^a-zA-Z0-9]", text)
    return "".join(p.capitalize() for p in parts if p)


def _generate_request_name(path: str, method: str, operation_id: str = None) -> str:
    if operation_id:
        return _to_pascal_case(operation_id) + "Request"

    # Fallback to path + method
    # Remove parameter braces but keep content to distinguish /foo/{id}
    clean_path = path.replace("{", "").replace("}", "")
    return _to_pascal_case(clean_path) + _to_pascal_case(method) + "Request"


def _extract_inline_body_schemas(data: dict) -> None:
    """Extract all inline body object schemas to definitions."""
    if "paths" not in data:
        return

    if "definitions" not in data:
        data["definitions"] = {}

    for path, path_item in data["paths"].items():
        for method, op in path_item.items():
            if not isinstance(op, dict) or "parameters" not in op:
                continue

            for param in op["parameters"]:
                if param.get("in") != "body" or "schema" not in param:
                    continue

                schema = param["schema"]
                # Check if it's an inline object that needs extraction
                # We look for explicit type='object' or presence of 'properties'
                is_inline_object = "$ref" not in schema and (
                    schema.get("type") == "object" or "properties" in schema
                )

                if is_inline_object:
                    op_id = op.get("operationId", "")
                    def_name = _generate_request_name(path, method, op_id)

                    data["definitions"][def_name] = schema
                    param["schema"] = {"$ref": f"#/definitions/{def_name}"}
                    print(
                        f"Extracted inline body schema for {path} {method.upper()} to {def_name}"
                    )


def main() -> int:
    if len(sys.argv) != 3:
        print("Usage: sanitize_swagger.py <input_json> <output_json>")
        return 1

    input_path = Path(sys.argv[1])
    output_path = Path(sys.argv[2])

    data = json.loads(input_path.read_text(encoding="utf-8"))

    _strip_required_for_response_schemas(data)
    _convert_price_types_to_string(data)
    _convert_number_to_integer(data)

    # Flatten basePath into paths if present
    base_path = data.get("basePath", "")
    if base_path and "paths" in data:
        new_paths = {}
        for path, path_item in data["paths"].items():
            # Ensure we don't create double slashes if basePath ends with / and path starts with /
            if base_path.endswith("/") and path.startswith("/"):
                new_key = base_path + path[1:]
            elif not base_path.endswith("/") and not path.startswith("/"):
                new_key = base_path + "/" + path
            else:
                new_key = base_path + path
            new_paths[new_key] = path_item
        data["paths"] = new_paths
        # Remove basePath to avoid potential double application if tools change behavior
        del data["basePath"]

    _extract_inline_body_schemas(data)

    sanitized = sanitize(data)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(
        json.dumps(sanitized, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
