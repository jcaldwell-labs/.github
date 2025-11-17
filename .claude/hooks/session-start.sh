#!/bin/bash
set -euo pipefail

# Only run in Claude Code web environment
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install markdownlint-cli for markdown linting
# Using global install since this is a documentation repository
if ! command -v markdownlint &> /dev/null; then
  npm install -g markdownlint-cli
fi

echo "SessionStart hook completed successfully"
