#!/bin/bash

dotfiles_dir=$(pwd)
usr_bin=~/bin

if [ ! -d ~/bin ]; then
    mkdir ~/bin
fi
cd ~/bin
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
ln -sf nvim.appimage nvim
ln -sf nvim.appimage vim
ln -sf $dotfiles_dir/nvim ~/.config
