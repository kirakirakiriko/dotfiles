source ~/.zgen/zgen.zsh

export PATH=$HOME/bin:/usr/local/bin:$PATH

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
zgen load kennethreitz/autoenv         # Automatically execute .env when cd'ing into directory
zgen oh-my-zsh plugins/catimg          # Use cat in terminal to show image
zgen oh-my-zsh plugins/autojump        # Quick jumping to frequently used directories

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

export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ls='ls -l --color=auto'
alias lisa='ls -lisah'
alias st='git status'
alias c='git commit -m'
alias a='git add'
alias diff='git diff'
alias finds='find . -name'
alias clip='xclip -selection c'
eval "$(hub alias -s)"

PROMPT="λ "
