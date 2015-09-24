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
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git bullet-train

# Tell antigen you are done
antigen apply
