export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $HOME/antigen.zsh
antigen use oh-my-zsh

antigen bundle <<EOBUNDLES
    git

    zsh-users/zsh-syntax-highlighting

    zsh-users/zsh-autosuggestions

    zsh-users/zsh-completions


EOBUNDLES

antigen apply

source $ZSH/oh-my-zsh.sh
. "$HOME/.cargo/env"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
