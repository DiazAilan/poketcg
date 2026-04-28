#!/usr/bin/env bash
set -euo pipefail

rom="${1:-poketcg.gbc}"

if [[ ! -f "${rom}" ]]; then
  echo "ROM not found: ${rom}" >&2
  echo "Build it first: make" >&2
  exit 1
fi

if command -v open >/dev/null 2>&1; then
  open -a "mGBA" "${rom}"
else
  echo "Don't know how to launch an emulator on this OS." >&2
  echo "Open ${rom} in mGBA manually." >&2
  exit 2
fi

