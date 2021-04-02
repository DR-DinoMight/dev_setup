#!/bin/sh

tmux new-session -s 'dev' -d 'nvim +NERDTreeToggle'
tmux split-window -v
tmux a
