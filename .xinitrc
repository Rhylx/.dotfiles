#setxkbmap "fr(azerty)"
xkbcomp -I$HOME/.config/xkb $HOME/.config/xkb/keymap $DISPLAY
#Keyboard speed
xset r rate 250 60
exec i3
