#!/bin/bash

#echo "init env"

######################################################################
# set PATH setup
######################################################################

# put ~/.local/bin in PATH
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi


# load local env
if [ -f "$HOME/.local/init_env_local.sh" ]; then
    source "$HOME/.local/init_env_local.sh"
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
