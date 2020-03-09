# .bashrc is used for interactive non-login shells

# source global definitions
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

# deepin bashrc
if [ -f /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
fi

# common used init file
if [ -f "$HOME/.local/init.sh" ]; then
    source "$HOME/.local/init.sh"
fi
