# User specific aliases and functions
if [ -d ~/.zshrc.d ]; then
    for rc in ~/.zshrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Reload zsh completions
autoload -Uz compinit
compinit

#PROMPT='%F{green}%n@%m%f:%F{blue}%~%f%% '
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f%% '
