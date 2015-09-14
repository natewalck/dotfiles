# dotfiles
Repo of my dotfiles so setting up a new machine isn't so painful.

* Run the following commands:
```
mkdir ~/src
git clone git@github.com:natewalck/dotfiles.git ~/src/dotfiles
cd ~/src/dotfiles && git submodule init && git submodule update
ln -s ~/src/dotfiles/.zshrc ~/.zshrc
```
* Also clone and install these fonts: https://github.com/powerline/fonts
