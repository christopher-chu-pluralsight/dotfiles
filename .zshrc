# General
alias prof='vim ~/.zshrc && source ~/.zshrc && echo "Sourced ~/.zshrc"';
alias ll='ls -la';
alias dot='cd ~/work/dotfiles && git status';
alias work='cd ~/work';
alias dc='docker-compose';
alias pycache_purge="find . -name '*.pyc' -delete";

# Git
alias gco='git checkout'
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias ga='git add'

# Not work
alias fart='cd ~/not-work/master-chu/fartbucket && git status'
alias :q='echo "you are not in vim" && say "you are not in vim"'
alias fixaudio='sudo launchctl unload /System/Library/LaunchDaemons/com.apple.audio.coreaudiod.plist && sudo launchctl load /System/Library/LaunchDaemons/com.apple.audio.coreaudiod.plist'

# Assessment Tools VM
alias tools='cd /opt/assessment-tools && git status';
alias vm='cd ~/work/assessment-tools-vm';
alias vstat='vm && vagrant status && cd -';
alias vup='vm && vagrant up && cd -';
alias vdown='vm && vagrant halt && cd -';
alias dumount='sudo umount -f /opt/assessment-tools';
alias dmount='dumount; sudo mount -t nfs dev.pluralsight.com:/opt/assessment-tools /opt/assessment-tools; mount | grep pluralsight';
#alias dev="ssh smarterer@dev.pluralsight.com";
alias dev="ssh_cmd clear"
alias wait_for_vm="~/work/dotfiles/tmux_scripts/wait_for_vm.sh"
alias wait_for_mount="~/work/dotfiles/tmux_scripts/wait_for_mount.sh"

# Guided Learning
alias nuke='dc down && make build && make start && make migrate && make seed'

function ds() {
  docker-compose exec $1 sh
}


############
# VM SETUP #
############

# Example usage:
# ssh_cmd herald1
# ssh_cmd "echo foo; echo bar"
function ssh_cmd() {
  ssh -t smarterer@dev.pluralsight.com "bash -ci 'set_colors && clear && $1' ; bash"
}

alias DEV="dot && ./tmux_sessions/DEV.sh";
alias VM="dot && ./tmux_sessions/VM.sh";

export PATH=$PATH:~/bin

# NPM / NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U promptinit; promptinit
# optionally define some options
# https://github.com/sindresorhus/pure#options
# PURE_CMD_MAX_EXEC_TIME=10
prompt pure
