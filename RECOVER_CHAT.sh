#!/usr/bin/env bash

set -euo pipefail

PROJECT_ROOT='/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/Smart Driver Forms Website'
GLOBAL_RULE='/home/randall/Smart Driver Forms/02 - Current Projects/Smart Driver Forms App/Development/GLOBAL_TERMINAL_OUTPUT_RULE.md'
SMART_TEXT_DIR='/home/randall/Downloads/Smart Text Files/Smart Driver Forms Website'

if ! cd "$PROJECT_ROOT"; then
  echo "ERROR: Cannot enter project root: $PROJECT_ROOT"
  exit 1
fi

if [ ! -f "$GLOBAL_RULE" ]; then
  echo "ERROR: Missing global terminal-output rule:"
  echo "$GLOBAL_RULE"
  exit 1
fi

mkdir -p "$SMART_TEXT_DIR"

STAMP="$(date '+%Y%m%d_%H%M%S')"
OUT="$SMART_TEXT_DIR/smart_driver_forms_website_recover_chat_${STAMP}.txt"

{
  echo "===== GLOBAL TERMINAL OUTPUT RULE ====="
  cat "$GLOBAL_RULE"

  echo
  echo "===== SMART DRIVER FORMS WEBSITE CHAT RECOVERY ====="

  echo
  echo "===== REPOSITORY ====="
  pwd
  git rev-parse --show-toplevel 2>/dev/null || true

  echo
  echo "===== BRANCH / HEAD ====="
  git branch --show-current
  git log -5 --oneline --decorate

  echo
  echo "===== WORKING TREE ====="
  git status --short

  echo
  echo "===== REMOTES ====="
  git remote -v

  echo
  echo "===== REQUIRED RECOVERY FILES ====="
  for f in CHAT_RECOVERY.md PROJECT_STATUS.md DEVELOPMENT_NOTE_WORKFLOW.md DEVELOPMENT_NOTES_INDEX.md RECOVER_CHAT.sh; do
    if [ -f "$f" ]; then echo "PRESENT: $f"; else echo "MISSING: $f"; fi
  done

  echo
  echo "===== SHARED GLOBAL RULE ====="
  echo "PRESENT: $GLOBAL_RULE"
  echo "SMART_TEXT_DIR: $SMART_TEXT_DIR"

  echo
  echo "===== CHAT_RECOVERY.md ====="
  cat CHAT_RECOVERY.md

  echo
  echo "===== PROJECT_STATUS.md ====="
  cat PROJECT_STATUS.md

  echo
  echo "===== DEVELOPMENT_NOTES_INDEX.md ====="
  cat DEVELOPMENT_NOTES_INDEX.md

  echo
  echo "===== RECOVERY SNAPSHOT COMPLETE ====="
} > "$OUT" 2>&1

echo "Saved full recovery output to:"
echo "$OUT"
echo
wc -l "$OUT"
echo
echo "Last 40 lines:"
tail -n 40 "$OUT"
