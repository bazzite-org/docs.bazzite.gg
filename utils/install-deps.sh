#!/bin/env bash

REPO_DIR="$(git rev-parse --show-toplevel)"

function echod() { echo "[DEBUG]: $*"; }

brew_installs=(
    uv
    just
    rg
)

if ! command -v brew >/dev/null; then
    echod "This script needs 'brew' to run"
    exit 1
fi

brew install "${brew_installs[@]}"

# Install project
echod "Setting up python project"
(
    cd "$REPO_DIR"
    uv venv
) || {
    echod "Error setting up python project"
    exit 1
}
echod "Dependencies installed succesfully"
