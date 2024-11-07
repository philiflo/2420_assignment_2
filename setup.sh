#!/bin/bash

# Ensure we’re in the directory where the script is located
cd "$(dirname "$0")"

# Run the package installation script
echo "Installing necessary packages..."
sudo ./install_packages.sh

# Run the symbolic links creation script
echo "Creating symbolic links for config files..."
sudo ./link_config.sh

echo "System setup complete."



