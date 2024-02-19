#!/bin/bash

# List of packages to be installed
packages=(
    neovim
    tmux
    ripgrep
    stow
    starship
    openssh
    neofetch
)

# Iterate over each package and check if it's installed, if not, install it
for pkg in "${packages[@]}"; do
    if ! pacman -Qs "^$pkg$" >/dev/null; then
        echo "Installing $pkg..."
        sudo pacman -S --noconfirm "$pkg"
    else
        echo "$pkg is already installed."
    fi
done
