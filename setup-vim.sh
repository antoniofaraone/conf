#!/usr/bin/env bash

echo "I'm installing vim-plug ..."

sudo apt install vim

if [ ! -x /usr/bin/curl ]; then
	echo "Please install curl first"
	exit 1
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "I'm adding some useful plugin into your .vimrc..."

cd ~
ln -s conf/.vimrc .vimrc

echo "Now reload .vimrc and then, from vim :PlugInstall"
echo "====================================================="
