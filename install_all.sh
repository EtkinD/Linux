#!/usr/bin/bash
### Install all the things ###

# Install used packages
./install_used_packages.sh

# Install zsh, oh-my-zsh, and powerlevel10k
./ZSH/install.sh

# Configure vim
./VIM/configure.sh

# Install VSCode and make conifurations
./VSCode/install.sh
