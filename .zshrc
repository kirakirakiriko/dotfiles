if [ "$TMUX" = "" ]; then /usr/local/bin/tmux -u; fi
source ~/.zgen/zgen.zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export NVM_DIR=~/.nvm
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:/home/polymatheia/.gem/ruby/2.5.0/bin:$PATH
export EDITOR=nvim

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

if ! zgen saved; then
zgen oh-my-zsh

# Fundamentals
zgen oh-my-zsh plugins/vi-mode                      # Because.
zgen oh-my-zsh plugins/tmux                         # Autostart tmux session
zgen oh-my-zsh plugins/sudo                         # Press ESC twice to add sude to current or last command
zgen load zsh-users/zsh-syntax-highlighting         # Shell Syntax Highlighting

# Completions
zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/pass
zgen oh-my-zsh plugins/npm
zgen oh-my-zsh plugins/node
zgen oh-my-zsh plugins/meteor
zgen oh-my-zsh plugins/docker
zgen oh-my-zsh plugins/archlinux
zgen load akoenig/gulp.plugin.zsh

# Utils and Nice-to-haves
# zgen load kennethreitz/autoenv         # Automatically execute .env when cd'ing into directory
zgen oh-my-zsh plugins/catimg          # Use cat in terminal to show image
zgen oh-my-zsh themes/robbyrussell

zgen save
fi

# Bind home, end and del keys
bindkey '\e[1~'   beginning-of-line
bindkey '\e[H'    beginning-of-line
bindkey '\eOH'    beginning-of-line
bindkey '\e[2~'   overwrite-mode
bindkey '\e[3~'   delete-char
bindkey '\e[4~'   end-of-line
bindkey '\e[F'    end-of-line
bindkey '\eOF'    end-of-line

function pa() {
    git add .
    if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        break
    fi
    git push
}

export SSH_KEY_PATH="~/.ssh/rsa_id"

alias vim='nvim'
alias lisa='ls -lisah'
alias st='git status'
alias c='git commit -m'
alias a='git add'
alias p='git push'
alias pu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias pl='git pull'
alias co='git checkout'
alias diff='git diff'
alias finds='find . -name'
alias clip='xclip -selection c'
alias git-clear="git branch -vv | grep -e origin\/.*:\ gone | sed -r 's/([a-zA-Z0-9-]+).*/\1/' | xargs git branch -D"

PROMPT="%{$fg[red]%}λ "

ulimit -n 2048
