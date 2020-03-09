#!/bin/bash

# update shell config

#cp -f .bashrc ~/.bashrc

mkdir -p ~/.local/
cp -f init.sh ~/.local/
cp -f rm.sh ~/.local/

# source is not interactive, use bash interactive mode
# bash -i ~/.bashrc
