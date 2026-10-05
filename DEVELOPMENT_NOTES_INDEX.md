# Smart Driver Forms Website — Development Notes Index

Updated: 2026-10-05

## Purpose

This file is the authoritative Development Note continuity record for the Smart Driver Forms Website repository.

Do not use another repository's index or the historical website-related notes under `/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website/Historical Development Notes` to determine this repository's sequence.

## Development Notes Folder

`/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website`

## Current Sequence

Completed repository-specific Development Notes: 1

Latest Development Note:

`2026-10-05 - Smart Driver Forms Website - Development Notes - v0.001.docx`

Latest version:

`v0.001`

Final verified Git checkpoint covered:

`2f16f15 Organize website Development Note history`

Next Development Note:

`v0.002`

Latest note SHA-256:

`b47f5541b2309abea8251d4c5d143e87b1543f12495559370f8d3835ed79c0ce`

Website product baseline before recovery-system setup:

`375117f Add future website and portal placeholders`

## Historical Note Boundary

Historical website-related documents are preserved under:

`/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website/Historical Development Notes`

Historical source files:

- `Smart Driver Forms Website and Privacy v0.001.docx`
- `Smart Driver Forms Website and Platform v0.001.docx`
- `Smart Driver Forms Website and Documentation v0.001.docx`

These files predate the repository-specific Website Development Note sequence. They are retained as source evidence only and are excluded from sequence calculation.

The canonical version gate below searches only the top level of the Website Development Notes folder with `find . -maxdepth 1`, so this historical subdirectory is mechanically excluded.

## Mandatory Pre-Draft Version Gate

Before drafting a Development Note, run:

```bash
cd "/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website" && latest="$(find . -maxdepth 1 -type f -name '*Development Notes - v*.docx' -printf '%f\n' | sort -V | tail -1)" && if [ -z "$latest" ]; then echo "Previous Development Note: NONE"; echo "NEW VERSION: v0.001"; else echo "Previous Development Note:"; echo "$latest"; python3 -c 'import re,sys; s=sys.argv[1]; m=re.search(r"v(\d+)\.(\d+)\.docx$",s); assert m,"Version not found"; major=int(m.group(1)); minor=m.group(2); print(f"OLD VERSION: v{major}.{int(minor):0{len(minor)}d}"); print(f"NEW VERSION: v{major}.{int(minor)+1:0{len(minor)}d}")' "$latest"; fi
```

Current required result before drafting the next note:

- `Previous Development Note: 2026-10-05 - Smart Driver Forms Website - Development Notes - v0.001.docx`
- `OLD VERSION: v0.001`
- `NEW VERSION: v0.002`

Inspect the exact previous repository-specific note and verify continuity against this index before drafting.

## Update Rule

After every completed Development Note:

1. record its date;
2. record its exact version;
3. record its exact filename;
4. record the final verified Git checkpoint covered;
5. record the next mechanically incremented version.

Never guess continuity from chat history.
