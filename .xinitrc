#!/bin/sh
#
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

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec awesome

