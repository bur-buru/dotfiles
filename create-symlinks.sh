#!/usr/bin/env sh
# This file creates symlinks for "dotfiles" in home folder
echo "**************************"
echo "*** Creating symlinks! ***"
echo "**************************"

# Silence Login Messages
ln -s ~/dotfiles/hushlogin ~/.hushlogin

# User Dirs
ln -s ~/dotfiles/user-dirs.dirs ~/.config/user-dirs.dirs
ln -s ~dotfiles/user-dirs.locale ~/.config/user-dirs.locale

# Shell Configs
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# Sway
ln -s ~/dotfiles/sway ~/.config/sway
ln -s ~/dotfiles/waybar ~/.config/waybar

# Swaylock
ln -s ~/dotfiles/sway/swaylock ~/.config/swaylock


# Xorg resources
ln -s ~/dotfiles/Xresources.d ~/.Xresources.d
ln -s ~/dotfiles/Xresources.d/Xresources ~/.Xresources
ln -s ~/dotfiles/Xresources.d/Xresources ~/.Xdefaults

# Themes, Fonts, Icons
ln -s ~/dotfiles/themes ~/.themes
ln -s ~/dotfiles/fonts ~/.fonts
ln -s ~/dotfiles/gtkrc-2.0 ~/.gtkrc-2.0
ln -s ~/dotfiles/gtk-2.0 ~/.config/gtk-2.0
ln -s ~/dotfiles/gtk-3.0 ~/.config/gtk-3.0

# Termite
ln -s ~/dotfiles/termite ~/.config/termite

# Vim setup
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "Finished"