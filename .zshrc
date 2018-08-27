# History settings
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=$HISTSIZE

export KEYTIMEOUT=1
export EDITOR=/usr/bin/vim
# So we don't get vim bindings for terminal navigation
set -o emacs

# Enable history search using arrows
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

plugins=(zsh-completions)
autoload -U compinit && compinit


# Load settings from another dir to keep this .zshrc clean
export MYZSH=$HOME/code/dotfiles/zsh
for config_file ($MYZSH/**/*.zsh ) source $config_file

# Set key for accepting auto suggest
bindkey '^ ' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=159"

setopt appendhistory autocd nomatch
