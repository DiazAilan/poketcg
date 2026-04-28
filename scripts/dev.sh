#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repo_root"

make poketcg.gbc
exec "${repo_root}/scripts/run-mgba.sh" "${repo_root}/poketcg.gbc"
