#!/bin/bash

# Runs commands to bootstrap machine

if [[ $EUID == 0 ]]; then
   echo "This script must be run as your normal user account"
   exit 1
fi

# Disable the accent menu when holidng a button down
defaults write -g ApplePressAndHoldEnabled -bool false

# Command to show battery percent
defaults write com.apple.menuextra.battery ShowPercent YES

# Link hammerspoon config into place
rm -rf ~/.hammerspoon
ln -s ~/code/dotfiles/.hammerspoon ~

ln -s ~/code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/.gitconfig-personal ~/.gitconfig-personal

# Setup zsh
curl -sL git.io/antibody | sh -s
ln -s ~/code/dotfiles/.zshrc ~/.zshrc

