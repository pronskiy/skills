#!/usr/bin/env python3
"""Scan text for invisible characters and normalize it.

Hidden zero-width characters, direction marks, and homoglyphs are a mechanical
tell: they survive copy-paste out of chatbots, word processors, and "humanizer"
tools, and they're invisible to the eye, so a stylistic read will never catch
them. This script is the skill's always-run final step: it reports any hidden
characters found (so they can be named in the findings) and prints a cleaned
copy of the text.

Usage:
    python3 clean_text.py path/to/file.txt      # scan a file
    pbpaste | python3 clean_text.py             # scan piped/stdin text
    python3 clean_text.py file.txt --write      # overwrite the file in place

The scan report goes to stderr; the cleaned text goes to stdout, so you can pipe
it. Every target character is defined by its Unicode code point (chr(0x...)) on
purpose: a script that hunts invisible characters must never smuggle a literal
one into its own source, where it would be undetectable.
"""

import sys
import unicodedata

# (code point, label). The first six are stripped outright; the rest are also
# reported. Defined numerically so no invisible byte ever lands in this file.
_HIDDEN_TABLE = [
    (0x200B, "zero-width space"),
    (0x200C, "zero-width non-joiner"),
    (0x200D, "zero-width joiner"),
    (0xFEFF, "zero-width no-break space (BOM)"),
    (0x200E, "left-to-right mark"),
    (0x200F, "right-to-left mark"),
    (0x00A0, "non-breaking space"),
    (0x202F, "narrow no-break space"),
    (0x2009, "thin space"),
    (0x2060, "word joiner"),
    (0x00AD, "soft hyphen"),
]

# Stripped outright: the zero-width / direction marks plus the word joiner and
# soft hyphen. NFKC does not touch these, so removing them here keeps the scan
# report and the cleaned output in parity (nothing is flagged but left behind).
# The space variants (NBSP, narrow NBSP, thin space) are left to NFKC, which
# folds them into a normal space.
_STRIP = [chr(cp) for cp in
          (0x200B, 0x200C, 0x200D, 0xFEFF, 0x200E, 0x200F, 0x2060, 0x00AD)]


def clean_text(input_text):
    """Remove hidden zero-width characters, then NFKC-normalize."""
    for char in _STRIP:
        input_text = input_text.replace(char, "")
    # NFKC converts homoglyphs to their standard Latin equivalent where possible
    # and cleans up formatting discrepancies (e.g. non-breaking spaces).
    return unicodedata.normalize("NFKC", input_text)


def scan(text):
    """Return [(label, count, 'U+XXXX')] for hidden characters present."""
    found = []
    for cp, label in _HIDDEN_TABLE:
        n = text.count(chr(cp))
        if n:
            found.append((label, n, f"U+{cp:04X}"))
    return found


def main(argv):
    args = [a for a in argv[1:] if a != "--write"]
    write = "--write" in argv
    path = args[0] if args else None

    if path:
        with open(path, encoding="utf-8") as f:
            text = f.read()
    else:
        text = sys.stdin.read()

    found = scan(text)
    cleaned = clean_text(text)

    # Report to stderr so stdout stays a clean, pipeable copy of the text.
    if found:
        print("Hidden-character scan - found (a mechanical AI/copy-paste tell):",
              file=sys.stderr)
        for label, n, cp in found:
            print(f"  - {n}x {label} ({cp})", file=sys.stderr)
    elif cleaned != text:
        print("Hidden-character scan - no zero-width chars, but Unicode "
              "normalization (NFKC) changed some characters.", file=sys.stderr)
    else:
        print("Hidden-character scan - clean. No invisible characters found.",
              file=sys.stderr)

    if write and path:
        with open(path, "w", encoding="utf-8") as f:
            f.write(cleaned)
        print(f"Wrote cleaned text back to {path}", file=sys.stderr)
    else:
        sys.stdout.write(cleaned)


if __name__ == "__main__":
    main(sys.argv)
