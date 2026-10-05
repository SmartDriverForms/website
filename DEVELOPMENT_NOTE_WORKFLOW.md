# Smart Driver Forms Website — Development Note Workflow

Updated: 2026-10-05

## Purpose

This file defines the permanent Development Note workflow for the Smart Driver Forms Website repository.

Development Notes are repository-specific. Do not inherit or continue numbering from another repository or from historical website-related notes stored under the shared `Misc` folder.

## Development Notes Folder

`/home/randall/Smart Driver Forms/06 - Documents/Development Notes/Smart Driver Forms Website`

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
