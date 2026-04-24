#!/usr/bin/env zsh

if (( $+commands[atlantis] )) && ! (( $+_comps[atlantis] )); then
  eval "$(atlantis completion zsh)"
fi

if (( $+commands[ngrok] )) && ! (( $+_comps[ngrok] )); then
  eval "$(ngrok completion zsh)"
fi

if (( $+commands[docker] )) && ! (( $+_comps[docker] )); then
  eval "$(docker completion zsh)"
fi
