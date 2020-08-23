#!/usr/bin/env sh
# This file creates symlinks for "dotfiles" in home folder
echo "**************************"
echo "*** Creating symlinks! ***"
echo "**************************"

# make .config folder
mkdir ~/.config

# Silence Login Messages
ln -sf ~/dotfiles/hushlogin ~/.hushlogin

# User Dirs
ln -sf ~/dotfiles/user-dirs.dirs ~/.config/user-dirs.dirs
ln -sf ~/dotfiles/user-dirs.locale ~/.config/user-dirs.locale

# Shell Configs
ln -sf ~/dotfiles/bashrc ~/.bashrc
ln -sf ~/dotfiles/zshrc ~/.zshrc

# Sway
ln -sf ~/dotfiles/sway ~/.config/sway
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/wallpaper.jpg ~/.config/wallpaper

# Swaylock
ln -sf ~/dotfiles/sway/swaylock ~/.config/swaylock


# Xorg resources
ln -sf ~/dotfiles/Xresources.d ~/.Xresources.d
ln -sf ~/dotfiles/Xresources.d/Xresources ~/.Xresources
ln -sf ~/dotfiles/Xresources.d/Xresources ~/.Xdefaults

# Themes, Fonts, Icons
ln -sf ~/dotfiles/themes ~/.themes
ln -sf ~/dotfiles/fonts ~/.fonts
ln -sf ~/dotfiles/gtkrc-2.0 ~/.gtkrc-2.0
ln -sf ~/dotfiles/gtk-2.0 ~/.config/gtk-2.0
ln -sf ~/dotfiles/gtk-3.0 ~/.config/gtk-3.0

# Termite
ln -sf ~/dotfiles/termite ~/.config/termite

# Vim setup
ln -sf ~/dotfiles/vim ~/.vim
ln -sf ~/dotfiles/vimrc ~/.vimrc

echo "Finished"
