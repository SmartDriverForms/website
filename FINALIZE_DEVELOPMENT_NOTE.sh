#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
MOD="$(basename "$ROOT")"
NOTES="${SDF_NOTES_ROOT:-/home/sdfdev/Smart Driver Forms/Development Workspace/Smart Documents/Development Notes}/$MOD"
OUTPUT="${SDF_SMART_TEXT_ROOT:-/home/sdfdev/Smart Driver Forms/Project Reports/Smart Text Files}/$MOD"
TOOL="${SDF_NOTE_AUTOMATION_SCRIPT:-/home/sdfdev/Smart Driver Forms/Development Workspace/Smart Driver Forms/AUTO_DEVELOPMENT_NOTES.py}"
PY="${SDF_NOTE_VENV_PYTHON:-/usr/bin/python3}"
# Fedora's owner-approved private vendor directory is used only for the
# normal server Notes tool and interpreter; explicit overrides stay intact.
if [[ "$TOOL" == '/home/sdfdev/Smart Driver Forms/Development Workspace/Smart Driver Forms/AUTO_DEVELOPMENT_NOTES.py' && "$PY" == '/usr/bin/python3' ]]; then
  [[ -d '/home/sdfdev/Smart Driver Forms/Project Tools/vendor' && ! -L '/home/sdfdev/Smart Driver Forms/Project Tools/vendor' ]] || {
    echo "ERROR: Approved Fedora Notes Python vendor directory missing."
    exit 69
  }
  export PYTHONPATH='/home/sdfdev/Smart Driver Forms/Project Tools/vendor'
fi

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
