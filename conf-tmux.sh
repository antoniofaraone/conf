#!/usr/bin/env bash

sudo apt install tmux -y

git clone https://github.com/arcticicestudio/nord-tmux.git ~/.tmux/themes/nord-tmux

cd ~
ln -s conf/.tmux.conf .tmux.conf

tmux source-file ~/.tmux.conf

