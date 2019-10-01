#!/bin/bash

# dotfiles_dir=$(pwd)
# dotfiles_dir=$(cd `dirname $0` && pwd)

ln -sfr nvim ~/.config
ln -sfr .gitconfig ~/.gitconfig
ln -sfr tmux.conf ~/tmux.conf

if [ ! -d ~/bin ]; then
    mkdir ~/bin
fi

cd ~/bin
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
ln -sf nvim.appimage nvim
ln -sf nvim.appimage vim

