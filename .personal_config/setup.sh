#!/bin/sh

# Print shell input lines as they are read.
set -v
# exit on error
set -e

# install some application
for app in rofi zsh
do
    echo "Test $app installation"
    if [ -z "$($app --help)" ]
    then
        echo "Install $app"
        apt install $app
    fi
done

# import config from shellrc.sh
for shell in bash zsh
do
    shellrc="$HOME"/."$shell"rc
    echo "shellrc = $shellrc"
    sourceShellrc="source $HOME/.shellrc.sh"
    echo "sourceShellrc = $sourceShellrc"

    if [ -f "$shellrc" -a -z "$(cat "$shellrc" | grep "$sourceShellrc")" ]
    then
        echo "source shellrc.sh in $shellrc"
        echo "
$sourceShellrc" >> "$shellrc"
    fi
done

# TODO import emacs config
