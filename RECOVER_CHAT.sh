#!/usr/bin/env bash

set -euo pipefail

PROJECT_ROOT='/home/sdfdev/Smart Driver Forms/Development Workspace/Smart Driver Forms Website'
GLOBAL_RULE='/home/sdfdev/Smart Driver Forms/Development Workspace/GLOBAL_TERMINAL_OUTPUT_RULE.md'
SMART_TEXT_DIR='/home/sdfdev/Smart Driver Forms/Project Reports/Smart Text Files/Smart Driver Forms Website'

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
# Show latest recorded checkpoints from BOTH existing files, not the last
# lines of DEVELOPMENT_NOTES_INDEX.md. The complete snapshot above is retained.
# A shortened preview is only a pointer; read the full dated section, applicable
# module rules and owner decision register before taking any action.
for recovery_file in CHAT_RECOVERY.md PROJECT_STATUS.md; do
  if [ ! -f "$recovery_file" ] || [ -L "$recovery_file" ]; then
    echo "ERROR: Missing or untrusted module checkpoint: $recovery_file"
    exit 1
  fi
  echo "===== LATEST RECORDED SECTION: $recovery_file (verify against decisions and live Git) ====="
  awk '
    /^## / { heading = $0; count = 0; next }
    heading != "" && NF { recent[count % 12] = $0; count++ }
    END {
      if (heading == "") {
        print "ERROR: No dated recovery section found"
        exit 1
      }
      print heading
      if (count > 12) print "... earlier checkpoint lines preserved in full snapshot ..."
      start = count > 12 ? count - 12 : 0
      for (i = start; i < count; i++) print recent[i % 12]
    }
  ' "$recovery_file" || exit 1
done
echo "===== LIVE GIT STATE (reconcile before acting) ====="
git branch --show-current || exit 1
git rev-parse HEAD || exit 1
git status --short || exit 1
echo "Full records, module contracts and historical evidence are preserved in: $OUT"
