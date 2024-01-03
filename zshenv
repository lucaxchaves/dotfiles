export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
export MANROFFOPT="-c"
export AWS_DEFAULT_PROFILE=dev


export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'



export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH=$HOME/.config/rofi/scripts:$PATH
export PATH="$PATH:/home/lucas/.cargo/bin" 

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}

export DOTNET_ReadyToRun=0
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export T_SESSION_NAME_INCLUDE_PARENT="true"
export T_SESSION_USE_GIT_ROOT="true"
export QSYS_ROOTDIR="/var/tmp/pamac-build-lucas/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"

export PATH="$PATH:/home/lucas/.local/share/JetBrains/Toolbox/scripts"
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH


# add colors to man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R


if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
