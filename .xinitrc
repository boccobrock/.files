export GOPATH=/home/jeff/.go/

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Background
xsetroot -solid '#002b36'
#sh ~/.fehbg &

xrdb -merge ~/.Xresources
unclutter -root -idle 1 &
udiskie &
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
dunst &

exec i3
