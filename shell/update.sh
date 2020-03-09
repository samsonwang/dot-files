#!/bin/bash

# update shell config

#cp -f .bashrc ~/.bashrc
if [ -d ~/.local ]; then
    mkdir -p ~/.local
fi

cp -f rm.sh ~/.local/
cp -f init.sh ~/.local/


# source is not interactive, use bash interactive mode
# bash -i ~/.bashrc
