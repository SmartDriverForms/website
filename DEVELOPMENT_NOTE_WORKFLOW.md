# Smart Driver Forms Website — Development Note Workflow

Updated: 2026-10-05

## Purpose

This file defines the permanent Development Note workflow for the Smart Driver Forms Website repository.

Development Notes are repository-specific. Do not inherit or continue numbering from another repository or from the historical website-related notes stored under:

`/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes/Smart Driver Forms Website/Historical Development Notes`

## Development Notes Folder

`/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes/Smart Driver Forms Website`

## Historical Source Notes

The `Historical Development Notes` subdirectory contains pre-sequence website records retained for historical evidence. Those files may be consulted when reconstructing earlier website decisions and work, but they are excluded from repository-specific version continuity.

The canonical version check uses `find . -maxdepth 1`, so files inside the historical subdirectory cannot advance the active sequence.

## Sequence

Verified initial repository-specific state:

- completed notes: 0;
- first note: `v0.001`;
- expected first filename: `YYYY-MM-DD - Smart Driver Forms Website - Development Notes - v0.001.docx`.

After `v0.001`, increment mechanically: `v0.002`, `v0.003`, and so on.

## Mandatory Pre-Draft Gate

Before drafting, numbering, naming, or generating a Development Note:

1. Verify current Git HEAD and `git status --short`.
2. Read `PROJECT_STATUS.md`.
3. Read `DEVELOPMENT_NOTES_INDEX.md`.
4. Run the canonical version-check command in `DEVELOPMENT_NOTES_INDEX.md`.
5. For the first note, require `Previous Development Note: NONE` and `NEW VERSION: v0.001`.
6. If a prior repository-specific note exists, inspect that exact note and verify continuity against the index and terminal result.
7. Resolve every discrepancy before drafting.

Never infer a Development Note version from chat history, memory, another repository, unrelated historical notes, or date sequence.

## Existing Website Baseline

Verified website checkpoint before this recovery system was added:

`375117f Add future website and portal placeholders`

Do not invent work before this checkpoint. Earlier website history remains available in Git and is authoritative for work already committed.

## Content Standard

A Development Note should record verified work only, including as applicable:

- completed features and fixes;
- important decisions;
- files materially changed;
- commands and validation performed;
- test results;
- unresolved problems or deferred work;
- verified Git checkpoint;
- exact next action.

## Final DOCX Verification

After generating a Development Note:

1. verify filename and mechanically established version;
2. render/open the DOCX and visually inspect every page;
3. correct layout defects before completion;
4. update `DEVELOPMENT_NOTES_INDEX.md`;
5. update `PROJECT_STATUS.md` and `CHAT_RECOVERY.md` when checkpoint or next action changes.

Do not mark a Development Note complete until content and visual output are verified.

## Verified Style C Migration / Future Automation (2026-10-07)

The historical Smart Driver Forms Website sequence has been migrated with originals unchanged under `Originals/`, permanent editable Style C masters and matching PDFs under `Individual/`, and a complete derived DOCX/PDF under `Combined/`. Source originals remain byte-identical (manifest verified). Latest real Development Note: `v0.002`. Next new real note: `v0.003`. Earlier workflow text describing the old root-file layout is historical and superseded only for file location and automatic finalization; product scope and all original document content remain unchanged.

Before a next note, read `PROJECT_STATUS.md`, this workflow, the index, latest `Individual/` DOCX, current Git HEAD/status and relevant commit history. Verify factual covered Git cutoff and create a reviewed Markdown draft. The module-root `FINALIZE_DEVELOPMENT_NOTE.sh` uses shared guarded `--prepare`, `--publish` and `--recover` modes. Prepare creates one new individual Style C DOCX/PDF plus rebuilt complete DOCX/PDF in external staging, without canonical changes. After content and page-level review, publish integrity-checks the outputs, replaces BOTH combined files, and advances the index. Do not skip the explicit review/publication gate or create a synthetic real note.
