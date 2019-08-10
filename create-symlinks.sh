#!/bin/sh
# This file creates symlinks for "dotfiles" in home folder
echo "**************************"
echo "*** Creating symlinks! ***"
echo "**************************"

# silence login messages
ln -s ~/dotfiles/hushlogin ~/.hushlogin

# Terminal Configs
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# Termite


# Vim setup
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc

# Sway
ln -s ~/dotfiles/sway ~/.config/sway
ln -s ~/dotfiles/waybar ~/.config/waybar

# Xorg resources
ln -s ~/dotfiles/Xresources.d ~/.Xresources.d
ln -s ~/dotfiles/Xresources.d/Xresources ~/.Xresources