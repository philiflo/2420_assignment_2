#!/bin/bash

# Run install_packages.sh
echo "Installing packages.."
./install_packages.sh

# Run link_config.sh
echo "Creating symbolic links.."
./create_symlinks.sh

echo "Done!"


