alias prof='vim ~/.zshrc && source ~/.zshrc && echo "Sourced ~/.zshrc"';
alias ll='ls -la';
alias dev='ssh smarterer@dev.pluralsight.com';
alias vup='cd ~/work/assessment-tools-vm && vagrant up';
alias dmount='sudo umount -f /opt/assessment-tools; sudo mount -t nfs dev.pluralsight.com:/opt/assessment-tools /opt/assessment-tools; mount | grep pluralsight';
alias dot='cd ~/work/dotfiles && git status';
alias tools='cd /opt/assessment-tools && git status';
alias work='cd ~/work'

export PATH=$PATH:~/bin

autoload -U promptinit; promptinit

# optionally define some options
# https://github.com/sindresorhus/pure#options
# PURE_CMD_MAX_EXEC_TIME=10

prompt pure
