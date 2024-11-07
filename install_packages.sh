#!/bin/bash

# Define a list of packages to install
packages=("kakoune" "tmux")  # Remove any commas in the list

# Check if pacman is installed on the device, if so, install the packages stored in the packages list

for pkg in "${packages[@]}"; do

# Check if the package is already installed
    if pacman -Qi "$pkg" &>/dev/null; then
        echo "$pkg is already installed."
    else
        echo "Installing $pkg..."

# Check if pacman is installing the package
        if pacman -S --noconfirm "$pkg"; then
            echo "$pkg installed successfully."
        else
            echo "Failed to install $pkg. Check your package manager or network connection." >&2
            exit 1
        fi
    fi
done

echo "Packages installed!"


