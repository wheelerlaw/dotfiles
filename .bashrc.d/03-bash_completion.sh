## Custom bash completions
#[[ $(which oc 2> /dev/null) ]] && eval "$(oc completion bash)"

# Source completions automatically installed by Homebrew
[[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]] && . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"

complete -F _complete_alias "${!BASH_ALIASES[@]}"
