#!/bin/sh

up="$(dirname "$0")"
mv "$up" ~/

rm -rf ~/.vim*

cp ~/up-n-ready-vim/.vimrc ~/.vimrc

rm -rf ~/up-n-ready-vim
