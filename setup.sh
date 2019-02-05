#!/bin/bash
#Install homebrew and set it up

#Install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Set up
brew update

#Magic tricks
brew bundle

zplug install

pip2 install --user neovim
pip3 install --user neovim

#Move dotfiles to correct places
cp .chunkwmrc ~/
cp .khdrc ~/
cp .zshrc ~/
cp init.vim ~/.config/nvim/
cp .bash_profile ~/




#NEXT STEPS:
# Run :PlugInstall on nvim
# install YoucompleteMe
# Set up desktop switching shortcuts cmd+shift+number


