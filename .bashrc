#!/bin/bash

[[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion

shopt -s autocd
shopt -s histappend
shopt -s checkjobs

alias grep="grep -i --color=always"
alias pa="pulseaudio-ctl"
alias hd="hexdump --canonical"
alias redshift="redshift -P -O"
alias batstat="watch -n 0.1 cat /sys/class/power_supply/BAT0/status"
alias py="python"
alias gdb="gdb -q"
alias cli="xclip -selection clipboard"
alias tree="tree -C"
alias pgrep="pgrep -i"
alias objdump="objdump --visualize-jumps=color -M intel --special-syms -zw"
alias go="ninja"
alias vi="nvim"
alias ls="ls --color=always"
alias ll="ls -Al"
alias cmaker="cmake -DCMAKE_BUILD_TYPE=release --toolchain ~/.toolchain.cmake -G Ninja"
alias cmaked="cmake -DCMAKE_BUILD_TYPE=debug --toolchain ~/.toolchain.cmake -G Ninja"

HISTFIILESIZE= # unlimited
PS1=$'\[\e[34m\]\w\[\e[m\]\[\e[35m\] $ \[\e[39m\]'
export PATH=$PATH:~/.local/bin:~/.cabal/bin:~/.ghcup/bin
export EDITOR="nvim"

# colorful man pages
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;32m'

# make C-w erase previous word till '/' only
stty werase undef
bind '\C-w:unix-filename-rubout'

[[ ! $TMUX ]] && tmux
