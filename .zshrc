# General
alias prof='vim ~/.zshrc && source ~/.zshrc && echo "Sourced ~/.zshrc"';
alias ll='ls -la';
alias dot='cd ~/work/dotfiles && git status';
alias work='cd ~/work'

# Not work
alias fart='cd ~/not-work/master-chu/fartbucket && git status'

# Assessment Tools VM
alias tools='cd /opt/assessment-tools && git status';
alias vm='cd ~/work/assessment-tools-vm';
alias vup='vm && vagrant up';
alias vdown='vm && vagrant halt';
alias dumount='sudo umount -f /opt/assessment-tools';
alias dmount='dumount; sudo mount -t nfs dev.pluralsight.com:/opt/assessment-tools /opt/assessment-tools; mount | grep pluralsight';
alias dev='ssh smarterer@dev.pluralsight.com';



############
# VM SETUP #
############

# Example usage:
# ssh_cmd herald1
# ssh_cmd "echo foo; echo bar"
function ssh_cmd() {
  ssh -t smarterer@dev.pluralsight.com "bash -ci 'set_colors && clear && $1' ; bash"
}


export PATH=$PATH:~/bin


autoload -U promptinit; promptinit
# optionally define some options
# https://github.com/sindresorhus/pure#options
# PURE_CMD_MAX_EXEC_TIME=10

prompt pure
