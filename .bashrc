# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup aliases
alias ls='ls -l --color=auto'
alias lisa='ls -lisah'
alias st='git status'
alias c='git commit -m'
alias a='git add'
alias diff='git diff'
alias finds='find . -name'
alias clip='xclip -selection c'

# Fix Neovim C-H mapping
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti

# Run twolfson/sexy-bash-prompt
source ~/.bash/sexy_bash_prompt

# Add completions
source ~/.bash/git_completion
source ~/.bash/pass_completion
