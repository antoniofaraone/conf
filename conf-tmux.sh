#!/usr/bin/env bash

sudo apt install tmux -y

git clone https://github.com/arcticicestudio/nord-tmux.git ~/.tmux/themes/nord-tmux

touch ~/.tmux.conf

echo "run-shell ~/.tmux/themes/nord-tmux/nord.tmux" >> ~/.tmux.conf

tmux source-file ~/.tmux.conf

