#
# ~/.bashrc
#
# Activate vi mode :

#set -o vi
#bind ^l : clear-screen

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hN --color=auto --group-directories-first'
# Setting bash prompt : 

# Bash prompt :
PS1='[\u@\h \W]\$ '
