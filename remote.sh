#!/bin/sh

vim_remote="$(dirname "$0")"
mv "$vim_remote" ~/

rm -rf ~/.vim*

mkdir -p ~/.vim/autoload ~/.vim/bundle
git clone https://github.com/tpope/vim-pathogen.git ~/vim-pathogen
mv ~/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/
rm -rf ~/vim-pathogen

git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

cp ~/vim-remote/.vimrc ~/.vimrc

rm -rf ~/vim-remote
