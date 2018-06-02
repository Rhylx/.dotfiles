#setxkbmap "fr(azerty)"
xkbcomp -I$HOME/.config/xkb $HOME/.config/xkb/keymap $DISPLAY
exec i3
