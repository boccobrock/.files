.files
======

Contains dotfiles, and has an awesome Makefile that I blatently stole from Josh Kunz.

For powerline patched fonts:
```
git clone https://github.com/Lokaltog/powerline-fonts ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
xrdb -merge ~/.Xresources
```
