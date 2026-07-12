#!/usr/bin/env python

"""Utility functions for updating marked sections of text files."""

from argparse import ArgumentParser
from pathlib import Path


def replace_between_markers(
    file: Path | str,
    marker: str,
    replacement: str,
) -> None:
    """Replace everything between two markers in a text file.

    Parameters
    ----------
    file
        File to modify.
    marker
        Marker name indicating the start and end of replacement section.
    replacement
        Text to insert between the markers.
    """
    file = Path(file)

    text = file.read_text(encoding="utf-8")

    start = text.find(f"<!-- {marker}_START -->")
    end = text.find(f"<!-- {marker}_END -->")

    if start == -1:
        raise ValueError(f"Start marker not found: <!-- {marker}_START -->")

    if end == -1:
        raise ValueError(f"End marker not found: <!-- {marker}_END -->")

    if end < start:
        raise ValueError("End marker occurs before start marker.")

    end += len(f"<!-- {marker}_END -->")

    new_section = (
        f"<!-- {marker}_START -->\n{replacement.rstrip()}\n<!-- {marker}_END -->"
    )

    updated = text[:start] + new_section + text[end:]

    file.write_text(updated, encoding="utf-8")


def main() -> None:
    parser = ArgumentParser(description="Replace a marked section of a text file.")

    parser.add_argument("file")
    parser.add_argument("marker")
    parser.add_argument("replacement")
    parser.add_argument(
        "--fence",
        help="Wrap the replacement text in a Markdown code fence.",
    )

    args = parser.parse_args()

    replacement = Path(args.replacement).read_text(encoding="utf-8")

    if args.fence:
        replacement = f"```{args.fence}\n{replacement}\n```"

    replace_between_markers(args.file, args.marker, replacement)


if __name__ == "__main__":
    main()
