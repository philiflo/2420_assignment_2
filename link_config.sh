#!/bin/bash


if [ -L "$HOME/bin" ]; then
    rm -rf "$HOME/bin"
fi
if [ -L "$HOME/.config" ]; then
    rm -rf "$HOME/.config"
fi
if [ -L "$HOME/.bashrc" ]; then
    rm -rf "$HOME/.bashrc"
fi


# Create symbolic links
ln -sf "$(pwd)/bin" "$HOME/bin"
ln -sf "$(pwd)/config" "$HOME/.config"
ln -sf "$(pwd)/bashrc" "$HOME/.bashrc"


# Check if all symbolic links were created successfully
if [ -L "$HOME/bin" ] && [ -L "$HOME/.config" ] && [ -L "$HOME/.bashrc" ]; then
    echo "Symbolic links have been created successfully."
else
    echo "Some symbolic links were not created. Please check the paths and try again." >&2
fi
