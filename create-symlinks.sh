#!/bin/sh
# This file creates symlinks for "dotfiles"
echo "*** Creating symlinks! ***"
ln -s ~/git/dotfiles/bash_profile ~/.bash_profile
ln -s ~/git/dotfiles/bashrc ~/.bashrc
ln -s ~/git/dotfiles/grumrc ~/.grumrc
ln -s ~/git/dotfiles/hushlogin ~/.hushlogin
ln -s ~/git/dotfiles/vim ~/.vim
ln -s ~/git/dotfiles/vimrc ~/.vimrc
ln -s ~/git/dotfiles/xprofile ~/.xprofile
ln -s ~/git/dotfiles/Xresources ~/.Xresources
ln -s ~/git/dotfiles/Xresources.d ~/.Xresources.d
ln -s ~/git/dotfiles/zshrc ~/.zshrc
ln -s ~/git/dotfiles/zshrc.old ~/.zshrc.old
