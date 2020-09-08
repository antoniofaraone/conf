#!/usr/bin/env bash

git clone https://github.com/arcticicestudio/nord-tmux.git ~/.tmux/themes/nord-tmux

touch ~/.tmux.conf

echo "~/.tmux/themes/nord-tmux/nord.tmux" >> ~/.tmux.conf

tmux source-file ~/.tmux.conf

