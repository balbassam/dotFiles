#!/bin/sh

# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Xprofile
# Make sure this is before the 'exec' command or it won't be executed.
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile


if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# resources (aka colors)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# font settings
xset +fp /usr/share/fonts/local/

# make QT apps look like GTK apps

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


export VDPAU_NVIDIA_NO_OVERLAY=1
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
DEFAULT_SESSION=awesome

case $1 in
awesome)
	exec ck-launch-session awesome
	;;
xfce4)
	exec ck-launch-session xfce4-session 
	;;
icewm)
	icewmbg &
	icewmtray &
	exec icewm
	;;
wmaker)
	exec wmaker
	;;
blackbox)
	exec blackbox
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac      


