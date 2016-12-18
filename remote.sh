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

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

git clone git clone git://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

cp ~/vim-remote/.vimrc ~/.vimrc

rm -rf ~/vim-remote
