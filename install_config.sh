#!/bin/bash

mkdir -p ~/vimfiles/bundles
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/vimfiles/installer.sh
bash ~/vimfiles/installer.sh ~/vimfiles/bundles
ln -s ~/Sources/vim_config/_vimrc ~/_vimrc
mkdir -p ~/.vim
ln -s ~/Sources/vim_config/cheatsheet.md ~/.vim/cheatsheet.md
