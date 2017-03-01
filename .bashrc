# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup aliases
alias ls='ls --color=auto'
alias lisa='ls -lisah'

# Run twolfson/sexy-bash-prompt
source ~/.bash/sexy_bash_prompt

# Add completions
source ~/.bash/git_completion
source ~/.bash/pass_completion
