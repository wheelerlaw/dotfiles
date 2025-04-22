#!/usr/bin/env zsh

if (( $+commands[atlantis] )); then
  eval "$(atlantis completion zsh)"
fi

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
