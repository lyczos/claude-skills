#!/bin/bash
# Hook runner - executes hook scripts from the hooks directory
HOOK_NAME="$1"
HOOK_DIR="$(cd "$(dirname "$0")" && pwd)"
HOOK_PATH="${HOOK_DIR}/${HOOK_NAME}"

if [ -x "$HOOK_PATH" ]; then
  exec "$HOOK_PATH"
else
  echo "Hook not found or not executable: $HOOK_PATH" >&2
  exit 1
fi
