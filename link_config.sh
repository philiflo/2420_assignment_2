#!/bin/bash


if [ -L ~/bin ]; then
    rm -rf ~/bin
fi
if [ -L ~/.config ]; then
    rm -rf ~/.config
fi


ln -sf "$(pwd)/bin" "$HOME/bin"
ln -sf "$(pwd)/config" "$HOME/.config"
ln -sf "$(pwd)/bashrc" "$HOME/.bashrc"

if [ -L "$HOME/bin" ] && [ -L "$HOME/.config" ] && [ -L "$HOME/.bashrc" ]; then
    echo "Symbolic links have been created successfully."
else
    echo "Some symbolic links were not created. Please check the paths and try again." >&2
fi
