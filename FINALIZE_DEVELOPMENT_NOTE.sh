#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
MOD="$(basename "$ROOT")"
NOTES="${SDF_NOTES_ROOT:-$HOME/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Documents/Development Notes}/$MOD"
OUTPUT="${SDF_SMART_TEXT_ROOT:-$HOME/Downloads/Smart Text Files}/$MOD"
TOOL="${SDF_NOTE_AUTOMATION_SCRIPT:-$HOME/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Driver Forms/AUTO_DEVELOPMENT_NOTES.py}"
PY="${SDF_NOTE_VENV_PYTHON:-$HOME/.local/share/smart-driver-forms/dev-notes-venv/bin/python}"
if [[ "$#" -ne 2 ]]; then
  echo "Usage: ./FINALIZE_DEVELOPMENT_NOTE.sh --prepare REVIEWED_DRAFT.md"
  echo "    or ./FINALIZE_DEVELOPMENT_NOTE.sh --publish STAGE_FOLDER"
  echo "    or ./FINALIZE_DEVELOPMENT_NOTE.sh --recover INTERRUPTED_STAGE_FOLDER"
  exit 64
fi
if [[ ! -f "$TOOL" || ! -x "$PY" || ! -d "$NOTES/Individual" || ! -d "$NOTES/Combined" || ! -d "$NOTES/Originals" ]]; then
  echo "ERROR: Shared Style C tool, Python environment, or canonical note folders are missing."
  exit 69
fi
case "$1" in
  --prepare)
    [[ -f "$2" ]] || { echo "ERROR: Reviewed draft missing"; exit 66; }
    mkdir -p "$OUTPUT"
    "$PY" "$TOOL" prepare --repo "$ROOT" --notes "$NOTES" --draft "$2" --stage-parent "$OUTPUT"
    ;;
  --publish)
    [[ -d "$2" ]] || { echo "ERROR: Stage missing"; exit 66; }
    "$PY" "$TOOL" publish --repo "$ROOT" --notes "$NOTES" --stage "$2"
    ;;
  --recover)
    [[ -d "$2" ]] || { echo "ERROR: Interrupted stage missing"; exit 66; }
    "$PY" "$TOOL" recover --repo "$ROOT" --notes "$NOTES" --stage "$2"
    ;;
  *) echo "ERROR: Use --prepare, --publish or --recover"; exit 64 ;;
esac
