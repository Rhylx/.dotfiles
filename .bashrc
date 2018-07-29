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

# Aliases :

alias sdn="sudo shutdown now"
alias p="sudo pacman"
alias v="vim"
alias ka="killall"
alias g="git"
alias gs="git status"
alias gp="git push"
alias gpl="git pull"
alias ga="git add"
alias gc="git commit"
alias gcl="git clone"
alias mkd="mkdir -pv"
alias rfb="source ~/.bashrc"
alias bw="wal -i ~/.config/wall.png"
alias tfe="sdcv --utf8-output -uc \"French - English\""
alias tfg="sdcv --utf8-output -uc \"French - German\""
alias tge="sdcv --utf8-output -uc \"German - English\""
alias teg="sdcv --utf8-output -uc \"English - German\""
alias tef="sdcv --utf8-output -uc \"English - French\""
alias tgf="sdcv --utf8-output -uc \"German - French\""

# Sourcing shortcuts

source /home/rhylx/.bash_shortcuts
