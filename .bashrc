
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias nc='cd ~/dev/me/nightcaste && workon nightcaste'
PS1='[\u@\h \W]\$ '

PROMPT_DIR_COLOR="$(tput bold)$(tput setaf 9)"

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
source /usr/bin/virtualenvwrapper.sh

export PATH=$PATH:/home/agamemnon/.gem/ruby/2.3.0/bin/

export NVM_DIR="/home/agamemnon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
PATH=$PATH:~/.git-tools

source ~/.git-completion.bash
