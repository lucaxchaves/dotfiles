setopt correct                                                  # Auto correct mistakes
setopt extended_glob                                             # Extended globbing. Allows using regular expressions with *
setopt no_case_glob                                               # Case insensitive globbing
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt      AUTO_PUSHD           # Push the current directory visited on the stack.
setopt		PUSHD_IGNORE_DUPS
setopt		PUSHD_MINUS
setopt		PUSHD_SILENT
unsetopt	PUSHD_TO_HOME

autoload -Uz compinit colors zcalc && compinit -d && colors


[[ -e ${ZDOTDIR:-~}/.zstyles ]] && source ${ZDOTDIR:-~}/.zstyles
export KEYTIMEOUT=1


source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

#tmux-window-name() {
#  if ! tmux has-session 2> /dev/null; then
#   return
#  fi

#  (~/.tmux/plugins/tmux-window-name/scripts/rename_session_windows.py &)
#}

#add-zsh-hook chpwd tmux-window-name
autoload -Uz edit-command-line
zle -N edit-command-line

zmodload zsh/terminfo

typeset -gA keys=(
    Up                   '^[[A'
    Down                 '^[[B'
    Right                '^[[C'
    Left                 '^[[D'
    Home                 '^[[OH'
    End                  '^[[OF'
    Insert               '^[[2~'
    Delete               '^[[3~'
    PageUp               '^[[5~'
    PageDown             '^[[6~'
    Backspace            '^?'

    Shift+Up             '^[[1;2A'
    Shift+Down           '^[[1;2B'
    Shift+Right          '^[[1;2C'
    Shift+Left           '^[[1;2D'
    Shift+End            '^[[1;2F'
    Shift+Home           '^[[1;2H'
    Shift+Insert         '^[[2;2~'
    Shift+Delete         '^[[3;2~'
    Shift+PageUp         '^[[5;2~'
    Shift+PageDown       '^[[6;2~'
    Shift+Backspace      '^?'
    Shift+Tab            '^[[Z'

    Alt+Up               '^[[1;3A'
    Alt+Down             '^[[1;3B'
    Alt+Right            '^[[1;3C'
    Alt+Left             '^[[1;3D'
    Alt+End              '^[[1;3F'
    Alt+Home             '^[[1;3H'
    Alt+Insert           '^[[2;3~'
    Alt+Delete           '^[[3;3~'
    Alt+PageUp           '^[[5;3~'
    Alt+PageDown         '^[[6;3~'
    Alt+Backspace        '^[^?'

    Alt+Shift+Up         '^[[1;4A'
    Alt+Shift+Down       '^[[1;4B'
    Alt+Shift+Right      '^[[1;4C'
    Alt+Shift+Left       '^[[1;4D'
    Alt+Shift+End        '^[[1;4F'
    Alt+Shift+Home       '^[[1;4H'
    Alt+Shift+Insert     '^[[2;4~'
    Alt+Shift+Delete     '^[[3;4~'
    Alt+Shift+PageUp     '^[[5;4~'
    Alt+Shift+PageDown   '^[[6;4~'
    Alt+Shift+Backspace  '^[^H'

    Ctrl+Up              '^[[1;5A'
    Ctrl+Down            '^[[1;5B'
    Ctrl+Right           '^[[1;5C'
    Ctrl+Left            '^[[1;5D'
    Ctrl+Home            '^[[1;5H'
    Ctrl+End             '^[[1;5F'
    Ctrl+Insert          '^[[2;5~'
    Ctrl+Delete          '^[[3;5~'
    Ctrl+PageUp          '^[[5;5~'
    Ctrl+PageDown        '^[[6;5~'
    Ctrl+Backspace       '^H'

    Ctrl+Shift+Up        '^[[1;6A'
    Ctrl+Shift+Down      '^[[1;6B'
    Ctrl+Shift+Right     '^[[1;6C'
    Ctrl+Shift+Left      '^[[1;6D'
    Ctrl+Shift+Home      '^[[1;6H'
    Ctrl+Shift+End       '^[[1;6F'
    Ctrl+Shift+Insert    '^[[2;6~'
    Ctrl+Shift+Delete    '^[[3;6~'
    Ctrl+Shift+PageUp    '^[[5;6~'
    Ctrl+Shift+PageDown  '^[[6;6~'
    Ctrl+Shift+Backspace '^H'

    Ctrl+Alt+Up          '^[[1;7A'
    Ctrl+Alt+Down        '^[[1;7B'
    Ctrl+Alt+Right       '^[[1;7C'
    Ctrl+Alt+Left        '^[[1;7D'
    Ctrl+Alt+Home        '^[[1;7H'
    Ctrl+Alt+End         '^[[1;7F'
    Ctrl+Alt+Insert      '^[[2;7~'
    Ctrl+Alt+Delete      '^[[3;7~'
    Ctrl+Alt+PageUp      '^[[5;7~'
    Ctrl+Alt+PageDown    '^[[6;7~'
    Ctrl+Alt+Backspace   '^[^H'

    Ctrl+Alt+Shift+Up        '^[[1;8A'
    Ctrl+Alt+Shift+Down      '^[[1;8B'
    Ctrl+Alt+Shift+Right     '^[[1;8C'
    Ctrl+Alt+Shift+Left      '^[[1;8D'
    Ctrl+Alt+Shift+Home      '^[[1;8H'
    Ctrl+Alt+Shift+End       '^[[1;8F'
    Ctrl+Alt+Shift+Insert    '^[[2;8~'
    Ctrl+Alt+Shift+Delete    '^[[3;8~'
    Ctrl+Alt+Shift+PageUp    '^[[5;8~'
    Ctrl+Alt+Shift+PageDown  '^[[6;8~'
    Ctrl+Alt+Shift+Backspace '^?'
)

#bindkey -e
bindkey -- "${keys[Home]}"            .beginning-of-line
bindkey -- "${keys[End]}"             .end-of-line
bindkey -- "${keys[Insert]}"          .overwrite-mode
bindkey -- "${keys[Backspace]}"       .backward-delete-char
bindkey -- "${keys[Delete]}"          .delete-char
bindkey -- "${keys[Up]}"              .up-line-or-history
bindkey -- "${keys[Down]}"            .down-line-or-history
bindkey -- "${keys[Left]}"            .backward-char
bindkey -- "${keys[Right]}"           .forward-char
bindkey -- "${keys[PageUp]}"          .beginning-of-buffer-or-history
bindkey -- "${keys[PageDown]}"        .end-of-buffer-or-history
bindkey -- "${keys[Shift+Tab]}"       .reverse-menu-complete
bindkey -- "${keys[Ctrl+Left]}"       .backward-word
bindkey -- "${keys[Ctrl+Right]}"      .forward-word
bindkey -- "${keys[Ctrl+Backspace]}"  .backward-kill-word
bindkey -- "${keys[Ctrl+Delete]}"     .kill-word
#bindkey -- "${keys[Ctrl+Shift+Backspace]}" .backward-kill-line
#bindkey -- "${keys[Ctrl+Shift+Delete]}" .kill-line


