#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
neofetch
## Keymapping ## :
sudo loadkeys /home/rhylx/.config/keymap
