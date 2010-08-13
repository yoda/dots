#!/bin/sh

# Setup screen
ln -s "$HOME/.screenrc" screen/screenrc

# Setup tmux
ln -s "$HOME/.tmux.conf" tmux/screenrc

# Setup vim
ln -s "$HOME/.vimrc" vim/vimrc
ln -s "$HOME/.vim" vim/vim/

# Setup awesome
ln -s "$HOME/.config" awesome/config/

# Setup Xorg
ln -s "$HOME/.Xdefaults" Xorg/Xresources
ln -s "$HOME/.xinitrc" Xorg/Xinit

# Setup irssi
ln -s "$HOME/.irssi" irssi/irssi/


