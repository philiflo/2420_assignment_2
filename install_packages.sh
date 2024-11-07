#!/bin/bash
#shebang ^

# Define packages to be installed
packages=("kakoune", "tmux")

# Check if user has root privileges if EUID is 0
if [[$EUID - ne 0]]; then 
	echo "This script must be run as root. Please use sudo." >&2
	exit 1
fi

# Check if pacman is installed on the device, if so, install the packages stored in the packages list
for pack in "${packages[@]}"; do

# Check if the package is already installed
	if pacman -Qi "$pack" &>/dev/null; then
		echo "$pack is already installed."
	else
		echo "Installing $pack.."

# If it isn't, start installation using -S for that specific package
	if pacman -S --noconfirm  "$pack"; then
		echo "$pack installed successfully."
	else 
		echo "Installing $pack failed" >&2
		exit 1
	fi
fi
done 

# Tells user that packages have been installed
echo "Packages installed!"

