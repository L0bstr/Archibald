#!/bin/bash
set -euo pipefail

YAY_BUILD_DIR="$(mktemp -d)"
trap 'rm -rf "$YAY_BUILD_DIR"' EXIT

echo "==> Building yay from AUR..."
git clone https://aur.archlinux.org/yay.git "$YAY_BUILD_DIR"
(cd "$YAY_BUILD_DIR" && makepkg -si --noconfirm)
echo "==> yay installed."
