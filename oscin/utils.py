"""
utils.py
========
Shared utility functions for the OSCIN pipeline.

These functions are used by both framework-specific parsers and the
shared ontology populator, so they live here to avoid cross-imports
between layers.

Author:  Dani Lippmann
Context: Master Thesis — Towards Interoperability between Agentic AI
         Frameworks through Semantic Representation
Date:    April 2026
"""

from __future__ import annotations

import json
import logging
from pathlib import Path
from typing import Any

log = logging.getLogger("oscin")

def pydantic_fields_to_json_schema(
    fields: dict[str, dict[str, str] | str],
) -> str:
    """
    Convert extracted Pydantic field definitions to a JSON Schema string.

    Accepts both legacy format ``{name: type_str}`` and enriched format
    ``{name: {"type": type_str, "description": desc}}``.

    Parameters
    ----------
    fields : dict
        Mapping of field names to type information.

    Returns
    -------
    str
        Compact JSON Schema string.
    """
    type_map = {
        "str": "string",
        "int": "integer",
        "float": "number",
        "bool": "boolean",
        "Optional[str]": "string",
        "Optional[int]": "integer",
        "Optional[float]": "number",
        "Optional[bool]": "boolean",
    }

    properties: dict[str, dict[str, Any]] = {}
    required: list[str] = []
    for name, field_info in fields.items():
        # Handle both dict and plain string formats
        if isinstance(field_info, dict):
            type_str = field_info.get("type", "str")
            desc = field_info.get("description", "")
        else:
            type_str = field_info
            desc = ""

        json_type = type_map.get(type_str, "string")
        prop: dict[str, Any] = {"type": json_type}
        if desc:
            prop["description"] = desc
        if type_str.startswith("Optional"):
            prop["nullable"] = True
        else:
            required.append(name)
        properties[name] = prop

    schema = {
        "type": "object",
        "properties": properties,
        "required": required,
    }
    # sort_keys canonicalises the literal so semantically-identical schemas
    # produce byte-identical TTL output regardless of source dict order.
    return json.dumps(schema, separators=(",", ":"), sort_keys=True)


def safe_id(name: str) -> str:
    """
    Convert a name to a URI-safe identifier.

    Replaces spaces, hyphens, and dots with underscores.
    """
    return name.replace(" ", "_").replace("-", "_").replace(".", "_")

def collect_code_files(generated_dir: Path) -> str:
    """Collect all .py files from the skeleton directory into a single
    string with --- filepath --- headers, matching the LLM output format."""
    parts: list[str] = []
    for filepath in sorted(generated_dir.rglob("*.py")):
        if "__pycache__" in filepath.parts:
            continue
        rel_path = filepath.relative_to(generated_dir)
        try:
            log.info("reading file %s", filepath)
            content = filepath.read_text(encoding="utf-8")
        except (UnicodeDecodeError, OSError):
            log.info("skipping file %s due to error", filepath)
            continue
        parts.append(f"--- {rel_path} ---\n```python\n{content}\n```")
    return "\n\n".join(parts)