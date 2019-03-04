alias foo='echo foo'
alias python=python3
alias prof='vim ~/.bash_profile && source ~/.bash_profile'
alias dot='cd ~/work/dotfiles'
alias show_motd='for i in /etc/update-motd.d/*; do if [ "$i" != "/etc/update-motd.d/98-fsck-at-reboot" ]; then $i; fi; done'

# Assessment Tools
alias svenv='source .venv/bin/activate'
alias tools='cd /opt/assessment-tools && svenv'
alias serve2='tools && python scribe/server/scribe_app.py serve --handle=test-handle'
alias serve='tools && sudo service uwsgi restart && sudo tail -f logs/scribe_8085.log'
alias ui="tools && yarn build-dev --watch"
alias herald1="tools && python herald/herald_app.py endpoint:bind && python herald/herald_app.py endpoint:declare && python herald/herald_app.py pluralsight:consumer"
alias herald2="tools && python herald/herald_app.py assessments:task"


# DVS Docker stuff
export COMPOSER_HOME=/opt/dvs
alias ddir='cd $COMPOSER_HOME'
alias dfresh='$COMPOSER_HOME/scripts/refresh.sh'
alias dstart='cd $COMPOSER_HOME && docker-compose up -d && cd - > /dev/null'
alias dstop='cd $COMPOSER_HOME && docker-compose stop && cd - > /dev/null'
alias dps='cd $COMPOSER_HOME && docker-compose ps && cd - > /dev/null'
alias dpsql='psql -h localhost -U postgres'

export EDITOR='vim'
export VISUAL='vim'

# Command prompt style
function current_git_branch {
    git rev-parse --symbolic-full-name --abbrev-ref HEAD 2> /dev/null
}
function current_git_dirty {
    [[ -n $(git status 2> /dev/null | grep "nothing to commit") ]] || echo "*" 
}
function current_git_status {
    dirty=$(current_git_dirty)
    branch=$(current_git_branch)
    [[ -n "$branch" ]] && echo "($branch$dirty)"
}

DIR_COLOR='\[\033[38;5;202m\]'
GIT_COLOR='\[\033[38;5;133m\]'
TEXT_COLOR='\[\033[38;5;231m\]'

export PS1="${debian_chroot:+($debian_chroot)}$DIR_COLOR\w$GIT_COLOR\$(current_git_status)$TEXT_COLOR\$ " 

#Reset PS1 to default:
#export PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ " 


# Change global background color
alias set_colors="printf '\e[48;5;053m';printf '\e[K'"
export PROMPT_COMMAND=set_colors

