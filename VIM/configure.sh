#!/usr/bin/bash

if [ -f ./.vimrc ]; then
    cp .vimrc $HOME/.vimrc
elif [ -f ./VIM/.vimrc ]; then
    cp ./VIM/.vimrc $HOME/.vimrc
else 
    echo "Could not find .vimrc"
    exit 1
fi

exit 0

# git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/pack/jedi-vim/opt/jedi-vim