#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

YAZI_CONF_DIR="$HOME/.config/yazi"

PACMAN_PKG="yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick stow"

INSTALL_CMD="sudo pacman -S --needed $PACMAN_PKG"

STOW_PKG="yazi"

echo "===> Installing/Verifying System Packages"

if eval "$INSTALL_CMD"; then
  echo "System package installation/check successful."
else
  echo "Error: installing packages failed. Aborting"
  exit 1
fi

echo "===> Preparing to Deploy Dotfiles"

if [ ! -d "$DOTFILES_DIR" ]; then
  echo "$DOTFILES_DIR : no such file or directory"
  exit 1
fi

cd "$DOTFILES_DIR"

echo "--- 🔗 Deploying Stow Packages ---"

if [ -d "$YAZI_CONF_DIR" ]; then
  echo "Conflict detected: Removing existing real directory $YAZI_CONF_DIR"
  rm -fr "$YAZI_CONF_DIR"
fi

stow -t "$HOME" "$STOW_PKG"

if [ $? -eq 0 ]; then
  echo "   ✅ Symlinks for $STOW_PKG created successfully."
else
  echo "   ❌ Error running 'stow' for $STOW_PKG. Please check manually."
fi

exit 0
