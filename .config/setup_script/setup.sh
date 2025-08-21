#!/bin/sh

set -ex

apt install bat \
    curl \
    fd-find \
    gcc \
    keepassxc \
    ripgrep \
    tmux \
    tree

snap install discord
snap install nvim --classic
