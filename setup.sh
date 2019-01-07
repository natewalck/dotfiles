#!/bin/bash

# Runs commands to bootstrap machine

if [[ $EUID == 0 ]]; then
   echo "This script must be run as your normal user account" 
   exit 1
fi

# Disable the accent menu when holidng a button down
defaults write -g ApplePressAndHoldEnabled -bool false

# Symlink subklime text to subl for easy access
sudo mkdir -p /usr/local/bin
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Command to show battery percent
defaults write com.apple.menuextra.battery ShowPercent YES

# Link hammerspoon config into place
rm -rf ~/.hammerspoon
ln -s ~/code/dotfiles/.hammerspoon ~

ln -s ~/code/dotfiles/.gitconfig ~/.gitconfig

# Setup zsh
curl -sL git.io/antibody | sh -s
ln -s ~/code/dotfiles/.zshrc ~/.zshrc

