export PATH=$PATH:~/bin/

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

sh ~/.fehbg &
xrdb -merge ~/.Xresources
unclutter -root -idle 1 &
udiskie &
autocutsel -fork &
dunst &
variety &

exec i3
