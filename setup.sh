#!/bin/sh

# Setup screen
ln -s screen/screenrc "$HOME/.screenrc" 

# Setup tmux
ln -s tmux/screenrc "$HOME/.tmux.conf"

# Setup vim
ln -s vim/vimrc "$HOME/.vimrc"
ln -s vim/vim/ "$HOME/.vim"

# Setup awesome
ln -s awesome/config/ "$HOME/.config"

# Setup Xorg
ln -s Xorg/Xresources "$HOME/.Xdefaults"
ln -s Xorg/Xinit "$HOME/.xinitrc"

# Setup irssi
ln -s irssi/irssi/ "$HOME/.irssi"


