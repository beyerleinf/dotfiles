set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    alias prepcam='sudo modprobe v4l2loopback exclusive_caps=1 max_buffers=2 && pkill gphoto'
    alias dslrcam='gphoto2 --stdout autofocusdrive=1 --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video9'

    alias gs="git switch"
    alias gp="git push"
    alias gpl="git pull"
    alias gplom="git pull origin main"
    alias grpo="git remote prune origin"
    alias gcm="git commit -m"
    alias gca="git commit --amend"
end

starship init fish | source