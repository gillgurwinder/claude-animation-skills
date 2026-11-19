#!/bin/bash
# Simple installer for Claude Code animation skills
# Run: bash install.sh

set -e

echo "Installing Claude animation skills..."

# Check Node
if ! command -v node &> /dev/null; then
  echo "Node.js is required. Please install it first."
  exit 1
fi

# Install skills
npx skills add cth9191/animate -g -a claude-code
npx skills add iart-ai/manim-skills -g -a claude-code

echo ""
echo "Done!"
echo "Restart Claude Code, then try:"
echo "/animate a spacecraft accelerating to 99% light speed, math style"
