#!/usr/bin/env bash
set -euo pipefail

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This installer is for macOS. On other systems, create a venv and pip install -e . with a supported Python." >&2
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required. Install it from https://brew.sh and rerun this script." >&2
  exit 1
fi

brew install python@3.11
PYTHON="$(brew --prefix python@3.11)/bin/python3.11"
"$PYTHON" -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -e .
mochi setup
mochi status

echo
echo "Mochi is installed. Try: mochi"
echo "Check your Mac: mochi doctor"
echo "Think through a task: mochi think 'build a small website'"
echo "Optional training dependencies: source .venv/bin/activate && pip install -e '[train]'"
echo "Optional VTube Studio dependencies: source .venv/bin/activate && pip install -e '[vtube]'"
