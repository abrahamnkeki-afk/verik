#!/usr/bin/env bash
set -euo pipefail

if ! command -v pnpm >/dev/null 2>&1; then
  echo "pnpm not found. Install it: npm i -g pnpm"
  exit 1
fi

pnpm install

if [ ! -f .env.local ]; then
  cp .env.example .env.local
  echo "Created .env.local. Fill in your keys."
fi

echo "Done. Run: pnpm dev"
