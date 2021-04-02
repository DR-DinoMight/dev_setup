#!/bin/sh

tmux new-session -d 'nvim +NERDTreeToggle'
tmux split-window -v
tmux a
