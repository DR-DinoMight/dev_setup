#!/bin/sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install lts
npm install -g yarn prettier

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
				       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim --headless +PlugInstall +qa
nvim ./.config/nvim/nvim_install +CocInstall\ coc-css\ coc-json\ coc-markdownlint\ coc-prettier\ coc-rls\ coc-tsserver

sudo cp dev_tmux.sh /usr/bin/start-dev
