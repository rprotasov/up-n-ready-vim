#!/bin/sh

vim_remote="$(dirname "$0")"
mv "$vim_remote" ~/

rm -rf ~/.vim*

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/vim-remote/.vimrc ~/.vimrc

rm -rf ~/vim-remote
