#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

calc(){ awk "BEGIN { print "$*" }"; }

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/le0/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/le0/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/le0/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/le0/.config/synth-shell/alias.sh
fi

alias ls='exa'
alias la='ls -a'
alias ll='ls -laF --time-style=long-iso'

alias grep='rg'

alias gs='git status'

shopt -s autocd

export PATH="$HOME/.local/bin/:$PATH"

# PS1='[\u@\h \W]\$ '

neofetch
