_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi

  # This is not a variable assignment, don't remove spaces!
  _values = "${(ps:\n:)completions}"
}

compdef _dotnet_zsh_complete dotnet
_nuke_zsh_complete()
{
    local completions=("$(nuke :complete "$words")")
    reply=( "${(ps:\n:)completions}" )
}
compctl -K _nuke_zsh_complete nuke


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


