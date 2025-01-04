eval "$(starship init zsh)"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias up="docker compose up"
alias down="docker compose down"
alias vim="nvim"
alias ls="eza -l --icons=always --color=always"
alias ll="eza -la --icons=always --color=always"
alias gs="git switch"
alias gb="git branch"
alias grpo="git remote prune origin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin
