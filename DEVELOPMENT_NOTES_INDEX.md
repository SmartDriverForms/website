# Smart Driver Forms Website — Development Notes Index

Updated: 2026-10-05

## Purpose

This file is the authoritative Development Note continuity record for the Smart Driver Forms Website repository.

Do not use another repository's index or the historical website-related notes under `/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes/Smart Driver Forms Website/Historical Development Notes` to determine this repository's sequence.

## Development Notes Folder

`/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes/Smart Driver Forms Website`

## Current Sequence

Completed repository-specific Development Notes: 2

Latest Development Note:

`2026-10-05 - Smart Driver Forms Website - Development Notes - v0.002.docx`

Latest version:

`v0.002`

Final verified Git checkpoint covered:

`8ef83a0 Complete final website quality audit`

Next Development Note:

`v0.003`

Latest note SHA-256:

`5d1f0a22b82ff92d988a007b04eae255d2602e3252a0862a1c62bafcbf6401bb`

Website product baseline before recovery-system setup:

`375117f Add future website and portal placeholders`

## Historical Note Boundary

Historical website-related documents are preserved under:

`/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes/Smart Driver Forms Website/Historical Development Notes`

Historical source files:

- `Smart Driver Forms Website and Privacy v0.001.docx`
- `Smart Driver Forms Website and Platform v0.001.docx`
- `Smart Driver Forms Website and Documentation v0.001.docx`

These files predate the repository-specific Website Development Note sequence. They are retained as source evidence only and are excluded from sequence calculation.

The canonical version gate below searches only the top level of the Website Development Notes folder with `find . -maxdepth 1`, so this historical subdirectory is mechanically excluded.

## Mandatory Pre-Draft Version Gate

Before drafting a Development Note, run:

```bash
cd "/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes/Smart Driver Forms Website" && latest="$(find . -maxdepth 1 -type f -name '*Development Notes - v*.docx' -printf '%f\n' | sort -V | tail -1)" && if [ -z "$latest" ]; then echo "Previous Development Note: NONE"; echo "NEW VERSION: v0.001"; else echo "Previous Development Note:"; echo "$latest"; python3 -c 'import re,sys; s=sys.argv[1]; m=re.search(r"v(\d+)\.(\d+)\.docx$",s); assert m,"Version not found"; major=int(m.group(1)); minor=m.group(2); print(f"OLD VERSION: v{major}.{int(minor):0{len(minor)}d}"); print(f"NEW VERSION: v{major}.{int(minor)+1:0{len(minor)}d}")' "$latest"; fi
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

## Verified Sequence — Style C Published Masters (2026-10-07)

- `v0.001` — 2026-10-05
- `v0.002` — 2026-10-05
- `v0.003` — 2026-10-15
- `v0.004` — 2026-10-17

Final verified Git checkpoint covered:

`27b1d2c`

Next Development Note version:

`v0.005`

The independent Smart Driver Forms Website Development Note series currently ends at `v0.002` (2026-10-05); historical migration is NOT a new note and does not advance the sequence. The permanent `Individual/` masters contain one Style C DOCX and a matching PDF for each version. `Combined/` holds the complete regenerated DOCX and PDF from the entire verified sequence, and `Originals/` keeps all unchanged legacy source DOCXs and `ORIGINALS_SHA256.txt`.

## Guarded Future Development Note Publication

The last published `Individual/` DOCX and this index are the version authority. Verify the exact prior note, live repository Git state, and covered Git ancestor before drafting the next note. Use `./FINALIZE_DEVELOPMENT_NOTE.sh --prepare /absolute/reviewed_draft.md` to stage the individual DOCX/PDF and both rebuilt combined outputs outside the repository, visually inspect all staged pages, then `--publish /absolute/stage` to publish and update this index. On a verified interrupted publication, use `--recover /absolute/stage`. Never publish synthetic test notes in the real archive, delete original backups, or use the derived combined archive as a version source.
