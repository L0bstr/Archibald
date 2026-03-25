#!/bin/bash
set -euo pipefail

ARCHIBALD_REPO="https://github.com/L0bstr/Archibald.git"
ARCHIBALD_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/archibald"

echo "==> Installing Archibald..."

echo "==> Updating system and installing base deps..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm git base-devel

if [[ -d "$ARCHIBALD_DIR" ]]; then
  echo "==> Repo already exists at $ARCHIBALD_DIR, pulling latest..."
  git -C "$ARCHIBALD_DIR" pull --rebase -f
else
  echo "==> Cloning into $ARCHIBALD_DIR..."
  git clone "$ARCHIBALD_REPO" "$ARCHIBALD_DIR"
fi

export ARCHIBALD_DIR

if ! command -v yay &>/dev/null; then
  echo "==> Installing yay..."
  bash "$ARCHIBALD_DIR/bin/install-yay.sh"
fi

echo ""
echo "==> Archibald bootstrap complete."
echo "    Repo: $ARCHIBALD_DIR"

bash "$ARCHIBALD_DIR/bin/install-packages.sh"
