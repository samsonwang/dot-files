#!/bin/bash

# update shell config

#cp -f .bashrc ~/.bashrc
if [ -d ~/.local ]; then
    mkdir -p ~/.local
fi

declare -a files=(
    "rm.sh"
    "z.sh"
    "init.sh"
    "init_local.sh"
    "init_env.sh"
    "init_env_local.sh"
)

for i in "${files[@]}"
do
    echo "copy $i"
    cp -f "$i" ~/.local/
done

# source is not interactive, use bash interactive mode
# bash -i ~/.bashrc
