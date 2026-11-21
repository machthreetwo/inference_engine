#!/usr/bin/env bash
# Run a command (or an interactive shell) inside the foxbat-dev container.
#
#   scripts/dev.sh                 -> interactive shell
#   scripts/dev.sh cmake --build build
#
# - Runs as your user, so files it creates are owned by you, not root.
# - Mounts the project at the SAME path as on the host, so paths in
#   build/compile_commands.json are valid for VS Code on the host too.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TTY_FLAGS=()
[ -t 0 ] && TTY_FLAGS=(-it)

exec docker run --rm "${TTY_FLAGS[@]}" \
  --user "$(id -u):$(id -g)" \
  -e HOME=/tmp \
  -v "$ROOT":"$ROOT" \
  -w "$ROOT" \
  foxbat-dev "${@:-bash}"
