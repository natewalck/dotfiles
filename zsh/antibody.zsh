# Path to antigen
source "$(brew --prefix)/share/antibody.zsh"

antibody bundle < "$MYZSH/antibody-bundles.txt"
