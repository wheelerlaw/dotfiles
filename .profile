if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
elif [ -n "$ZSH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
	. "$HOME/.zshrc"
    fi
fi

# Set the go path
if command -v go > /dev/null 2>&1; then
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

# Configure Homebrew
if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export VISUAL=nano
export EDITOR="$VISUAL"

if [ -d "$HOME/.local/share/JetBrains/Toolbox/scripts" ]; then
    export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
elif [ -d "$HOME/Library/Application Support/JetBrains/Toolbox/scripts" ]; then
    export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
fi
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
