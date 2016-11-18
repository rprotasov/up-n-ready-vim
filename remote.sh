#!/bin/sh

mv vim-remote ~

rm -rf ~/.vim*

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

cp ~/vim-remote/.vimrc ~/.vimrc

rm -rf ~/vim-remote
