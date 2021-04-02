#!/bin/sh

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
				       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim --headless +PlugInstall +qa
nvim +CocInstall\ coc-css\ coc-json\ coc-markdownlint\ coc-prettier\ coc-rls\ coc-tsserver
