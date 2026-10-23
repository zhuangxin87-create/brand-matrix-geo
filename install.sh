#!/usr/bin/env bash
# Install brand-matrix-geo from a local clone into a host skill directory.
#
# install.sh copies skills/brand-matrix-geo from this repository. Run it only
# after cloning. Piping the raw script (curl …/install.sh | bash) has no
# SKILL.md beside it and exits.
#
# From a clone:
#   git clone https://github.com/zhuangxin87-create/brand-matrix-geo.git
#   cd brand-matrix-geo
#   bash install.sh --host claude
#
# Hosts: claude | cursor | codex | openclaw | agents
#
# Without a clone, pass the skill name as the second argument:
#   gh skill install zhuangxin87-create/brand-matrix-geo brand-matrix-geo
#
# WorkBuddy: download brand-matrix-geo.zip from the GitHub release
# (SKILL.md and examples/ at the archive root) and import that zip.
set -euo pipefail
HOST="${1:-}"
if [[ "${HOST}" == "--host" ]]; then HOST="${2:-claude}"; shift 2 || true; fi
HOST="${HOST:-claude}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || pwd)"
SRC="$ROOT/skills/brand-matrix-geo"
if [[ ! -f "$SRC/SKILL.md" ]]; then
  echo "install.sh must run inside a cloned brand-matrix-geo repo." >&2
  echo "It copies skills/brand-matrix-geo/SKILL.md from that clone." >&2
  echo "curl …/install.sh | bash stops here, because the skill files are not on disk." >&2
  echo >&2
  echo "From a clone:" >&2
  echo "  bash install.sh --host claude" >&2
  echo >&2
  echo "Without a clone:" >&2
  echo "  gh skill install zhuangxin87-create/brand-matrix-geo brand-matrix-geo" >&2
  echo >&2
  echo "WorkBuddy: download release asset brand-matrix-geo.zip (SKILL.md at the archive root)." >&2
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
