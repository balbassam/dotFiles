#!/bin/sh

# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Xprofile
# Make sure this is before the 'exec' command or it won't be executed.
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile


# resources (aka colors)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# font settings
xset +fp /usr/share/fonts/local/

# make QT apps look like GTK apps

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


export _JAVA_AWT_WM_NONREPARENTING=1
export VDPAU_NVIDIA_NO_OVERLAY=1
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
DEFAULT_SESSION=xfce4-session

case $1 in
xfce4)
	exec xfce4-session 
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac      


