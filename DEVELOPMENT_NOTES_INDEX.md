# Smart Driver Forms Website — Development Notes Index

Updated: 2026-10-05

## Purpose

This file is the authoritative Development Note continuity record for the Smart Driver Forms Website repository.

Do not use another repository's index or the historical website-related notes under the shared `Misc` folder to determine this repository's sequence.

## Development Notes Folder

`/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website`

## Current Sequence

Completed repository-specific Development Notes: 0

First Development Note:

`v0.001`

Expected first filename:

`YYYY-MM-DD - Smart Driver Forms Website - Development Notes - v0.001.docx`

Website baseline before recovery-system setup:

`375117f Add future website and portal placeholders`

## Historical Note Boundary

Existing website-related documents under:

`/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Misc`

remain historical records. They are preserved in place and are not part of this repository-specific sequence.

## Mandatory Pre-Draft Version Gate

Before drafting a Development Note, run:

```bash
cd "/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website" && latest="$(find . -maxdepth 1 -type f -name '*Development Notes - v*.docx' -printf '%f\n' | sort -V | tail -1)" && if [ -z "$latest" ]; then echo "Previous Development Note: NONE"; echo "NEW VERSION: v0.001"; else echo "Previous Development Note:"; echo "$latest"; python3 -c 'import re,sys; s=sys.argv[1]; m=re.search(r"v(\d+)\.(\d+)\.docx$",s); assert m,"Version not found"; major=int(m.group(1)); minor=m.group(2); print(f"OLD VERSION: v{major}.{int(minor):0{len(minor)}d}"); print(f"NEW VERSION: v{major}.{int(minor)+1:0{len(minor)}d}")' "$latest"; fi
```

For the first note, the required result is:

- `Previous Development Note: NONE`
- `NEW VERSION: v0.001`

If a prior repository-specific note exists, inspect that exact note and verify continuity against this index before drafting.

## Update Rule

After every completed Development Note:

1. record its date;
2. record its exact version;
3. record its exact filename;
4. record the final verified Git checkpoint covered;
5. record the next mechanically incremented version.

Never guess continuity from chat history.
