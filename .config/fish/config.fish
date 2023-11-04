set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
end

starship init fish | source