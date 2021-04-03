#!/bin/sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install lts
npm install -g yarn prettier

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
				       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp -r ./.config/nvim ~/.config/nvim

nvim --headless +PlugInstall +qa

PWD=`pwd`
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
npm install coc-css coc-json coc-markdownlint coc-prettier coc-rls coc-tsserver
cd $pwd

mkdir ~/.local/bin
cp dev_tmux.sh ~/.local/bin/start-dev
