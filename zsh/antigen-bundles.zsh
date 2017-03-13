# Path to antigen
source $HOME/code/dotfiles/antigen/antigen.zsh

# Load oh-my-zsh's library
antigen use oh-my-zsh

# Bundle from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle mercurial
antigen bundle history

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme options and load
POWERLEVEL9K_SHOW_CHANGESET=true
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen you are done
antigen apply
