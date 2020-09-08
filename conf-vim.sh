#!/usr/bin/env bash

echo "I'm installing vim-plug ..."


if [ ! -x /usr/bin/curl ]; then
	echo "Please install curl first"
	exit 1
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "I'm adding some useful plugin into your .vimrc..."

touch ~/.vimrc

mkdir -p /.vim/plugged


echo "
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug '~/my-prototype-plugin'

call plug#end() " >> ~/.vimrc

echo "Theme installing..."

DIR_COLOR=~/.vim/colors/
mkdir -p $DIR_COLOR

wget "https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim" -P $DIR_COLOR

echo "
syntax enable
colorscheme monokai
set nu
"  >> ~/.vimrc
echo "====================================================="
echo "Now reload .vimrc and then, from vim :PlugInstall"
echo "====================================================="