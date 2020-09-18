#!/usr/bin/env bash

echo "I'm installing vim-plug ..."

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "I'm adding some useful plugin into your .vimrc..."

echo "Now reload .vimrc and then, from vim :PlugInstall"
