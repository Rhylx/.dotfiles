#setxkbmap "fr(azerty)"
xkbcomp -I$HOME/.config/xkb $HOME/.config/xkb/keymap $DISPLAY
#Keyboard speed
xset r rate 250 100
exec i3
