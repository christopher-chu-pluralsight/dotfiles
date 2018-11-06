alias prof='vim ~/.bash_profile && source ~/.bash_profile && echo "Sourced ~/.bash_profile"';
alias ll='ls -la';
alias dev='ssh smarterer@dev.pluralsight.com';
alias dmount='sudo mount -t nfs dev.pluralsight.com:/opt/assessment-tools /opt/assessment-tools';

export PATH=$PATH:~/bin



autoload -U promptinit; promptinit

# optionally define some options
# https://github.com/sindresorhus/pure#options
# PURE_CMD_MAX_EXEC_TIME=10

prompt pure
