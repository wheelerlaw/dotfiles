#!/usr/bin/env sh

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -f "$HOME/.local/etc/profile" ]; then
    . "$HOME/.local/etc/profile"
fi


# set PATH so it includes user's private bin directories
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export VISUAL=nano
export EDITOR="$VISUAL"

# Environment var changes
export BASH_SILENCE_DEPRECATION_WARNING=1  # MacOS thing
#export DOCKER_HOST="/run/user/$(id -u $USER)/podman/podman.sock"

# Path additions
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.npm/bin:$PATH"
export PATH="$PATH:/home/wheeler/.local/share/JetBrains/Toolbox/scripts"

# Shell additions
[[ -s "/home/linuxbrew/.linuxbrew/bin/brew" ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
