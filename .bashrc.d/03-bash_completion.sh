## Custom bash completions
#_kube_contexts()
#{
#  local curr_arg;
#  curr_arg=${COMP_WORDS[COMP_CWORD]}
#  COMPREPLY=( $(compgen -W "- $(kubectl config get-contexts --output='name')" -- $curr_arg ) );
#}
#
#complete -F _kube_contexts kubectx
#
#_kube_namespaces()
#{
#  local curr_arg;
#  curr_arg=${COMP_WORDS[COMP_CWORD]}
#  COMPREPLY=( $(compgen -W "- $(kubectl get namespaces -o=jsonpath='{range .items[*].metadata.name}{@}{"\n"}{end}')" -- $curr_arg ) );
#}
#
#complete -F _kube_namespaces kubens
#
#[[ $(which kubectl 2> /dev/null) ]] && eval "$(kubectl completion bash)"
#[[ $(which helm 2> /dev/null) ]] && eval "$(helm completion bash)"
#[[ $(which kind 2> /dev/null) ]] && eval "$(kind csouompletion bash)"
#[[ $(which oc 2> /dev/null) ]] && eval "$(oc completion bash)"

complete -F _complete_alias "${!BASH_ALIASES[@]}"
