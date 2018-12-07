alias prof='vim ~/.zshrc && source ~/.zshrc && echo "Sourced ~/.zshrc"';
alias ll='ls -la';
alias dev='ssh smarterer@dev.pluralsight.com';
alias dumount='sudo umount -f /opt/assessment-tools';
alias dmount='dumount; sudo mount -t nfs dev.pluralsight.com:/opt/assessment-tools /opt/assessment-tools; mount | grep pluralsight';
alias dot='cd ~/work/dotfiles && git status';
alias tools='cd /opt/assessment-tools && git status';
alias work='cd ~/work'
alias vm='cd ~/work/assessment-tools-vm';
alias vup='vm && vagrant up';

export PATH=$PATH:~/bin

# DVS Docker stuff
export COMPOSER_HOME=~/work/dvs-sandbox
alias ddir='cd $COMPOSER_HOME'
alias dfresh='$COMPOSER_HOME/scripts/refresh.sh'
alias dstart='cd $COMPOSER_HOME && docker-compose up -d && cd - > /dev/null'
alias dstop='cd $COMPOSER_HOME && docker-compose stop && cd - > /dev/null'
alias dps='cd $COMPOSER_HOME && docker-compose ps && cd - > /dev/null'


autoload -U promptinit; promptinit

# optionally define some options
# https://github.com/sindresorhus/pure#options
# PURE_CMD_MAX_EXEC_TIME=10

prompt pure
