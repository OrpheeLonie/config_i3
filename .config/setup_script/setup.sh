#!/bin/sh

set -ex

apt install bat \
    curl \
    fd-find \
    gcc \
    keepassxc \
    ripgrep \
    tmux \
    tree \
    xclip

snap install discord
snap install nvim --classic
