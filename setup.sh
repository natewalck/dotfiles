#!/bin/bash

# Runs commands to bootstrap machineo

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as your normal user account" 
   exit 1
fi

USER=$(whoami)

# Disable the accent menu when holidng a button down
defaults write -g ApplePressAndHoldEnabled -bool false

# Symlink subklime text to subl for easy access
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Command to show battery percent

# Command for dark mode

# Command for caps lock to esc mapping

# Link hammerspoon config into place
rm -rf ~/.hammerspoon
ln -s ~/code/dotfiles/.hammerspoon ~