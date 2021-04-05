#!/bin/sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install --lts
npm install -g yarn prettier typescript intelephense

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
				       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

 ./.config/nvim ~/.config/nvim

mv ~/.config/nvim ~/.config/nvim_old
mkdir -p $HOME/.config/nvim
ln -s $HOME/dev_setup/.config/nvim/* ~/.config/nvim
ln -s $HOME/dev_setup/.tmux.conf ~/.tmux.conf

nvim --headless +PlugInstall +qa

ORIGINAL_PWD=`pwd`
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
npm install coc-css coc-json coc-markdownlint coc-prettier coc-rls coc-tsserver coc-phpls
cd $(echo $ORIGINAL_PWD | tr -d '\r')

mkdir -p ~/.local/bin
cp ./start-dev ~/.local/bin/

export PATH="$HOME/.local/bin:$PATH"
