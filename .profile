####################################################
#   Homebrew configuration (must come first)       #
####################################################
if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi


####################################################
#   PATH confguration                              #
####################################################
if command -v go > /dev/null 2>&1; then
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

if [ -d "$HOME/.local/share/JetBrains/Toolbox/scripts" ]; then
    export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
elif [ -d "$HOME/Library/Application Support/JetBrains/Toolbox/scripts" ]; then
    export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
fi

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"


####################################################
#   Misc environment variables                     #
####################################################
export VISUAL=nano
export EDITOR="$VISUAL"


####################################################
#   Local stuff not committed to dotfiles          #
####################################################
if [ -f "$HOME/.local/etc/profile" ]; then
    . "$HOME/.local/etc/profile"
fi


####################################################
#   Shell *shrc non-login configuration            #
####################################################
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
# zsh automcatically calls .zshrc for both login and non-login shells
