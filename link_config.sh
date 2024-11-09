#!/bin/bash

SOURCE_BIN_DIR="$(pwd)/bin"
SOURCE_CONFIG_DIR="$(pwd)/config"
HOME_DIR="$(pwd)/home"

if [ -d ~/bin ] || [ -L ~/bin ]; then
    rm -rf ~/bin
fi
if [ -d ~/.config ] || [ -L ~/.config ]; then
    rm -rf ~/.config
fi


ln -sf "$(pwd)/bin" ~/bin
ln -sf "$(pwd)/config" ~/config
ln -sf "$HOME_DIR/bashrc" ~/.bashrc

echo "Symbolic links for ~/bin and ~/.config created successfully."
