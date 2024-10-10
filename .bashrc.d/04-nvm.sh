#!/usr/bin/env bash

nvm_dir="$HOME/.nvm"
if [ -d "$nvm_dir" ]; then
  export NVM_DIR="$nvm_dir"
fi
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
