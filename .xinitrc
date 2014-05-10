sh ~/.fehbg &
xrdb -merge ~/.Xresources
unclutter -root -idle 1 &
udiskie &
autocutsel -fork &
dunst &

exec i3
