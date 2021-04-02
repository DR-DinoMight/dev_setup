#!/bin/sh

tmux new-session -d 'nvim .'
tmux split-window -v
tmux a
