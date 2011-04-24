#!/bin/sh
export ORIGINAL_PATH="$(pwd)"
cd "$(dirname $0)"
# Absolute Path to the bin Dir
export BIN_PATH="$(pwd)"
cd "${ORIGINAL_PATH}"
export APPLICATION_PATH="$(dirname ${BIN_PATH})"
export ORIGINAL_PATH="$(pwd)"
SCRIPTDIR=$ORIGINAL_PATH
echo $SCRIPTDIR


export SCREENCONF="$HOME/.screenrc" 
export TMUXCONF="$HOME/.tmux.conf"
export VIMRCCONF="$HOME/.vimrc"
export VIMCONF="$HOME/.vim"
export AWESOMECONF="$HOME/.config"
export XRESCONF="$HOME/.Xdefaults"
export XINITRCCONF="$HOME/.xinitrc"
export IRSSICONF="$HOME/.irssi"
export PROFILECONF="$HOME/.profile"

export ERRORMSG="exists backup or remove"
export COMPLETEMSG="Created link successfully"


if [ -e $SCREENCONF ]
then
    echo $SCREENCONF $ERRORMSG 
else
    echo $SCREENCONF $COMPLETEMSG
    # Setup screen
    ln -s $SCRIPTDIR/screen/screenrc $SCREENCONF
fi

if [ -e $TMUXCONF ]
then
    echo $TMUXCONF $ERRORMSG
else
    echo $TMUXCONF $COMPLETEMSG
    # Setup tmux
    ln -s $SCRIPTDIR/tmux/screenrc $TMUXCONF 
fi

if [ -e $VIMRCCONF ]
then
    echo $VIMRCCONF $ERRORMSG
else
    echo $VIMRCCONF $COMPLETEMSG
    # Setup vim
    ln -s $SCRIPTDIR/vim/vimrc $VIMRCCONF
fi


if [ -e $VIMCONF ]
then
    echo $VIMCONF $ERRORMSG
else
    echo $VIMCONF $COMPLETEMSG
    # Setup vim 
    ln -s $SCRIPTDIR/vim/ $VIMCONF 
fi

if [ -e $AWESOMECONF ]
then
    echo $AWESOMECONF $ERRORMSG
else
    echo $AWESOMECONF $COMPLETEMSG
    # Setup awesome
    ln -s $SCRIPTDIR/awesome/config/ $AWESOMECONF
fi

if [ -e $XRESCONF ]
then
    echo $XRESCONF $ERRORMSG
else
    echo $XRESCONF $COMPLETEMSG
    # Setup Xorg
    ln -s $SCRIPTDIR/Xorg/Xresources $XRESCONF
fi

if [ -e $XINITRCCONF ]
then
    echo $XINITRCCONF $ERRORMSG
else
    echo $XINITRCCONF $COMPLETEMSG
    # Setup xinit
    ln -s $SCRIPTDIR/Xorg/Xinit $XINITRCCONF
fi

if [ -e $IRSSICONF ]
then
    echo $IRSSICONF $ERRORMSG
else
    echo $IRSSICONF $COMPLETEMSG
    # Setup irssi
    ln -s $SCRIPTDIR/irssi/irssi/ $IRSSICONF 
fi

if [ -e $PROFILECONF ]
then
    echo $PROFILECONF $ERRORMSG
else
    echo $PROFILECONF $COMPLETEMSG
    # Setup irssi
    ln -s $SCRIPTDIR/bash/profile $PROFILECONF 
fi
