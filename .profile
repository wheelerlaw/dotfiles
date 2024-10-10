# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Added by Toolbox App
# TODO: check if macOS or Linux
#export PATH="$PATH:/home/wheeler/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/bin:" ]]; then
    export PATH="$HOME/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Set the go path
if [[ $(which go 2> /dev/null) ]]; then
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

# Configure Homebrew
if [ -s /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
if [ -s /opt/homebrew/bin/brew shellenv) ]; then
    eval "$(/opt/homebrew/bin/brewshellenv)"
fi

export VISUAL=nano
export EDITOR="$VISUAL"
