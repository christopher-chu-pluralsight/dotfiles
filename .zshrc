alias prof='vim ~/.zshrc && source ~/.zshrc && echo "Sourced ~/.zshrc"';
alias ll='ls -la';
alias dev='ssh smarterer@dev.pluralsight.com';
alias vup='cd ~/work/assessment-tools-vm && vagrant up';
alias dmount='sudo mount -t nfs dev.pluralsight.com:/opt/assessment-tools /opt/assessment-tools';
alias dot='cd ~/work/dotfiles && git status'



export PATH=$PATH:~/bin

autoload -U promptinit; promptinit

# optionally define some options
# https://github.com/sindresorhus/pure#options
# PURE_CMD_MAX_EXEC_TIME=10

prompt pure
