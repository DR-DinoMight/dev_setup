# dev environment config

This is my NeoVim and tmux config. Feel free to use it, or not. Mostly this is here as a backup.

## Pre-requisites

* Git
* A nerd-font from [https://github.com/ryanoasis/nerd-fonts/releases/](ryanoasis/nerd-fonts)

## How to install

* Clone this repo
* Run `./setup.sh`
* Enjoy

## Starting dev

The dev environment uses tmux and neovim to set up something that looks like
VSCode layout. There is even mouse integration. To use it just go to the directory
you want to dev in and enter the command `start-dev`

To exit dev, you will need to exit the top half/pane using the standard neovim commands
and the bottom half / terminal using the standard terminal commands.
