#!/bin/sh

up="$(dirname "$0")"
mv "$up" ~/

if [ -z "$1" && "$1" = "spacevim" ]
then
  curl -sLf https://spacevim.org/install.sh | bash
  rm -rf ~/up-n-ready-vim
  exit 0
fi

rm -rf ~/.vim*

cp ~/up-n-ready-vim/.vimrc ~/.vimrc

rm -rf ~/up-n-ready-vim
