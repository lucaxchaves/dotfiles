export EDITOR="${EDITOR:-lvim}"
export VISUAL="${VISUAL:-lvim}"
export PAGER="${PAGER:-less}"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
