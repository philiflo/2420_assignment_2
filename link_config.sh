# !/bin/bash

# Link for the path to this repo

REPO_DIR="/home/arch/.git/2420_assignment_2"

# Symbolic links for bin and config

ln -snf "$REPO_DIR/bin" ~/bin
ln -snf "$REPO_DIR/config" ~/config 

