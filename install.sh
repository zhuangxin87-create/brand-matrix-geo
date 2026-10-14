#!/usr/bin/env bash
# One-command install for brand-matrix-geo into common agent skill dirs.
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/<OWNER>/brand-matrix-geo/main/install.sh | bash
#   bash install.sh [--host claude|cursor|codex|openclaw|agents]
set -euo pipefail
HOST="${1:-}"
if [[ "${HOST}" == "--host" ]]; then HOST="${2:-claude}"; shift 2 || true; fi
HOST="${HOST:-claude}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || pwd)"
SRC="$ROOT/skills/brand-matrix-geo"
if [[ ! -f "$SRC/SKILL.md" ]]; then
  # installed via curl piped from repo root expectation
  echo "Run this script from a cloned brand-matrix-geo repo, or:" >&2
  echo "  gh skill install <owner>/brand-matrix-geo" >&2
  echo "  npx skills add <owner>/brand-matrix-geo   # if available" >&2
  exit 1
fi
case "$HOST" in
  claude) DEST="${HOME}/.claude/skills/brand-matrix-geo" ;;
  cursor) DEST="${HOME}/.cursor/skills/brand-matrix-geo" ;;
  codex) DEST="${HOME}/.codex/skills/brand-matrix-geo" ;;
  openclaw) DEST="${HOME}/.openclaw/skills/brand-matrix-geo" ;;
  agents|agent) DEST="${HOME}/.agents/skills/brand-matrix-geo" ;;
  *) echo "Unknown host: $HOST (claude|cursor|codex|openclaw|agents)"; exit 1 ;;
esac
mkdir -p "$(dirname "$DEST")"
rm -rf "$DEST"
cp -R "$SRC" "$DEST"
echo "Installed brand-matrix-geo -> $DEST"
echo "Invoke: ask your agent to run 「品牌矩阵GEO」 or /brand-matrix-geo with a brand name."
