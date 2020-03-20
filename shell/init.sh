#!/bin/bash

# prevent from loading twice
if [ -z "$_INIT_SH_LOADED" ]; then
    _INIT_SH_LOADED=1
else
    return
fi

# if not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# put ~/.local/bin in PATH
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# clean up PATH, remove duplicates
if [ -n "$PATH" ]; then
    old_PATH=$PATH:; PATH=
    while [ -n "$old_PATH" ]; do
        x=${old_PATH%%:*}
        case $PATH: in
           *:"$x":*) ;;
           *) PATH=$PATH:$x;;
        esac
        old_PATH=${old_PATH#*:}
    done
    PATH=${PATH#:}
    unset old_PATH x
fi

export PATH

# perfer english as default
export LANG="en_US.utf-8"

# shared library path
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

# record timestamp in history
export HISTTIMEFORMAT='%F %T '

# shell prompt shows full path
#export PS1="[\033[0;32m\u\033[0m@\033[0;35m\h\033[0m \033[1;33m\W\033[0m]\$ "

# change CDPATH for cd command
# export CDPATH=.:~:/etc:/var

######################################################################
# shell option
######################################################################

# correct mistyped directory names on cd
shopt -s cdspell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

######################################################################
# function
######################################################################

# make dir and cd into it
function mkdircd() { mkdir -p "$@" && eval cd "\"\$$#\""; }


######################################################################
# alias
######################################################################

# cd alias
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# color list files
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ll -a'

# interactive when overwrite
alias cp='cp -i'

# safe rm
alias rm='~/.local/rm.sh'

# git related alias
alias g='git status --short -b'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gcs='git commit -S -m'
alias gca='git commit --amend -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gco='git checkout'
alias gph='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gl='git log --graph'

# color grep
alias grep='grep --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias rgrep='rgrep --color=auto'

alias c++11='c++ -Wall -Wextra -std=c++11'
alias c++14='c++ -Wall -Wextra -std=c++14'

######################################################################
# setup z.sh
######################################################################
source "$HOME/.local/z.sh"

######################################################################
# user local bash config
######################################################################
if [ -f "$HOME/.local/bash_local.sh" ]; then
    source "$HOME/.local/bash_local.sh"
fi
