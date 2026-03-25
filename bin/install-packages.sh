#!/usr/bin/env bash
set -euo pipefail

ARCHIBALD_DIR="${ARCHIBALD_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/archibald}"
PACMAN_LIST="$ARCHIBALD_DIR/packages/pacman.txt"
AUR_LIST="$ARCHIBALD_DIR/packages/aur.txt"

parse_packages() {
  grep -v '^\s*#' "$1" | grep -v '^\s*$'
}

echo "==> Installing pacman packages..."
mapfile -t pacman_pkgs < <(parse_packages "$PACMAN_LIST")
sudo pacman -S --needed --noconfirm "${pacman_pkgs[@]}"

echo "==> Installing AUR packages..."
mapfile -t aur_pkgs < <(parse_packages "$AUR_LIST")
yay -S --needed --noconfirm "${aur_pkgs[@]}"

echo "==> Packages installed."
