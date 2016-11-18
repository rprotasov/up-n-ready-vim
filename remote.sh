#!/bin/sh

rm -rf ~/.vim*

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

os=${uname}

if [ $os == "Darwin" ]; then
  echo "execute pathogen#infect()\nset number" > ~/.vimrc
else
  echo -e "execute pathogen#infect()\nset number" > ~/.vimrc
fi

rm -rf vim-remote
