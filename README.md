# dotfiles
Repo of my dotfiles so setting up a new machine isn't so painful.

* Run the following commands:
```
mkdir ~/code
git clone git@github.com:natewalck/dotfiles.git ~/code/dotfiles
cd ~/code/dotfiles && git submodule init && git submodule update
ln -s ~/code/dotfiles/.zshrc ~/.zshrc
```
* Also clone and install these fonts: https://github.com/powerline/fonts
