#!/bin/sh

vim_remote="$(dirname "$0")"
mv "$vim_remote" ~/

rm -rf ~/.vim*

cp ~/vim-remote/.vimrc ~/.vimrc

rm -rf ~/vim-remote
