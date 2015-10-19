# Working Directory
PS1='\[\033[1;31m\][\u@\h][\W]$\[\033[0m\] '

#Color output
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#Alias
alias l='ls'
alias la='ls -a'
alias ll='ls -la'
alias ..='cd ..'
alias devstart='cd ~/dx/devbox && vagrant up'
alias gs='git status'
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gc='git checkout'
alias gb='git branch'
alias c='clear'
alias vagrantssh='cd ~/dx/devbox && vagrant ssh'
alias cdcontrollers='cd ~/dx/system/src/cockpit/app/controllers/api'
alias cdworkbench='cd ~/dx/system/src/cockpit/workbench'
alias cdjs='cd ~/dx/system/src/cockpit/public/app/desktop/src/js/modules'
alias cdwork='cd ~/dx/system/src/cockpit'
alias pserv='python -mSimpleHTTPServer'
alias sub='subl'

# Git Bash autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

function @branch {
    git rev-parse --abbrev-ref HEAD
}


alias mediabasetunnel='sudo ssh -f -N -L 10.254.10.1:80:10.69.207.91:80 -p 443 halldor@ssh.dx.no'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
