# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Added by Toolbox App
export PATH="$PATH:/home/wheeler/.local/share/JetBrains/Toolbox/scripts"
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PATH="$(go env GOPATH)/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export VISUAL=nano
export EDITOR="$VISUAL"
