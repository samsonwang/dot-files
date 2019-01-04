#!/bin/bash

# update shell config

#cp -f .bashrc ~/.bashrc
mkdir -p ~/.local/
cp -f init.sh ~/.local/init.sh

source ~/.bashrc
