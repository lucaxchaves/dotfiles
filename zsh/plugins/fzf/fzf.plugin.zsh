#!/bin/zsh

if [[ ! "$PATH" == */home/lucas/.fzf/bin* ]]; then
    PATH="${PATH:+${PATH}:}/home/lucas/.fzf/bin"
fi
