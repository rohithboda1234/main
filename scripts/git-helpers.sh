#!/usr/bin/env bash
# Simple git helper script
# Usage:
#   ./scripts/git-helpers.sh new feature/branch-name
#   ./scripts/git-helpers.sh finish feature/branch-name

set -euo pipefail

cmd=${1:-}
branch=${2:-}

if [[ -z "$cmd" || -z "$branch" ]]; then
  echo "Usage: $0 <new|finish> <branch-name>"
  exit 1
fi

if [[ "$cmd" == "new" ]]; then
  git fetch origin
  git checkout -b "$branch" origin/main || git checkout -b "$branch"
  git push -u origin "$branch"
  echo "Created and pushed branch $branch"
  exit 0
fi

if [[ "$cmd" == "finish" ]]; then
  # merge branch into main locally and push main (requires up-to-date main)
  git fetch origin
  git checkout main
  git pull origin main
  git checkout "$branch"
  git merge --no-ff main || true
  git checkout main
  git merge --no-ff "$branch"
  git push origin main
  echo "Merged $branch into main and pushed main"
  exit 0
fi

echo "Unknown command: $cmd"
exit 2
