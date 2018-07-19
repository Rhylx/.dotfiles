#
# ~/.bashrc
#
# Activate vi mode :

set -o vi
bind '"\C-l": clear-screen'
# If not running interactively, don't do anything

[[ $- != *i* ]] && return

alias ls='ls -hN --color=auto --group-directories-first'

# Setting bash prompt : 

# Bash prompt :
if [ "$EUID"  -ne 0 ] 
	then export PS1='[\[$(tput bold )\]\[$(tput setaf 4)\]\u\[$(tput sgr0)\]\[$(tput bold)\] : \[$(tput setaf 3)\]\W\[$(tput sgr0)\]] > '
	else export PS1='[\[$(tput bold )\]\[$(tput setaf 1)\]\u\[$(tput sgr0)\]\[$(tput bold)\] : \[$(tput setaf 3)\]\W\[$(tput sgr0)\]] > '
fi
source /home/rhylx/.bash_shortcuts
