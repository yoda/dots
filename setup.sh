#!/bin/sh
export ORIGINAL_PATH="$(pwd)"
cd "$(dirname $0)"
# Absolute Path to the bin Dir
export BIN_PATH="$(pwd)"
cd "${ORIGINAL_PATH}"
export APPLICATION_PATH="$(dirname ${BIN_PATH})"
echo $APPLICATION_PATH
export ORIGINAL_PATH="$(pwd)"
echo $ORIGINAL_PATH
SCRIPTDIR=$ORIGINAL_PATH
echo $SCRIPTDIR

# Setup screen
ln -s $SCRIPTDIR/screen/screenrc "$HOME/.screenrc" 

# Setup tmux
ln -s $SCRIPTDIR/tmux/screenrc "$HOME/.tmux.conf"

# Setup vim
ln -s $SCRIPTDIR/vim/vimrc "$HOME/.vimrc"
ln -s $SCRIPTDIR/vim/ "$HOME/.vim"

# Setup awesome
ln -s $SCRIPTDIR/awesome/config/ "$HOME/.config"

# Setup Xorg
ln -s $SCRIPTDIR/Xorg/Xresources "$HOME/.Xdefaults"
ln -s $SCRIPTDIR/Xorg/Xinit "$HOME/.xinitrc"

# Setup irssi
ln -s $SCRIPTDIR/irssi/irssi/ "$HOME/.irssi"


