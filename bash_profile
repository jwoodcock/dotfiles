if [ -f ~/.bashrc ]; then
   source ~/.bashrc 
fi 

source '/usr/local/etc/bash_completion.d/git-prompt.sh'

if [ -f /usr/local/bin/brew ]; then
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
fi
