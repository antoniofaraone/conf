#!/bin/bash
dotfilesDir=$(pwd)
vimDir=~/.vim

function linkDotfile() {
  dest="${1}/${2}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${2} ]; then
    # Existing symlink
    echo "Removing existing symlink: ${dest}"
    rm ${dest}

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${2} ${dest}

}

linkDotfile  $HOME    .vimrc
linkDotfile  $HOME    .tmux.conf
linkDotfile  $HOME    .alias
linkDotfile  $HOME    .env_var
linkDotfile  $HOME    .zshrc
linkDotfile  $HOME    .gitconfig
linkDotfile  $vimDir  plugins.vim
