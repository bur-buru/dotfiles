#!/bin/sh
# This file creates symlinks for "dotfiles"
echo "*** Creating symlinks! ***"
ln -s ~/dotfiles/grumrc ~/.grumrc
ln -s ~/dotfiles/hushlogin ~/.hushlogin
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/xprofile ~/.xprofile
ln -s ~/dotfiles/Xresources.d/Xresources ~/.Xresources
ln -s ~/dotfiles/Xresources.d ~/.Xresources.d
ln -s ~/dotfiles/zshrc ~/.zshrc
