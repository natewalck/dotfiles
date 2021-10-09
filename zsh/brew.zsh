if [[ $(arch) = "i386" && -f "/usr/local/bin/brew" ]]; then
    eval $(/usr/local/bin/brew shellenv)
elif [ -f "/opt/homebrew/bin/brew" ]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi
