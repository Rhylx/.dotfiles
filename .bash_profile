#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts:$HOME/.vim/bundle/vim-live-latex-preview/bin
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="qutebrowser"
neofetch

## Keymapping ## :

sudo loadkeys /home/rhylx/.config/keymap
