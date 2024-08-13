#!/usr/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset r rate 300 50 &
unclutter --timeout=3 &

# Mpd daemon start
# [ ! -s ~/.config/mpd/pid ] && mpd
# [[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &

# /home/ag/.nix-profile/bin/greenclip daemon &
/usr/bin/transmission-daemon &

# set new wallpaper and color scheme
setbg &

exec i3
