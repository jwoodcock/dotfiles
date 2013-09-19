export PATH=$HOME/pear/bin:/usr/local/Cellar/python/2.7.3/bin:/usr/local/share/python:/usr/local/bin:${PATH}
export WORKON_HOME=~/.venvs
export PROJECT_HOME=~/work
#source /usr/local/share/python/virtualenvwrapper.sh

#prompt info
#export PROMPT_COMMAND='echo -ne "\033]0;\"lizard king\"@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export COMMAND_MODE=unix2003
export TM_PYCHECKER=pylint

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR="vim"

#borrowed from MITSUHIKO
MY_DEFAULT_COLOR="[00m"
MY_GRAY_COLOR="[37m"
MY_PINK_COLOR="[35m"
MY_GREEN_COLOR="[32m"
MY_ORANGE_COLOR="[33m"
MY_RED_COLOR="[31m"
if [ `id -u` == '0' ]; then
  MY_USER_COLOR=$MY_RED_COLOR
else
    MY_USER_COLOR=$MY_PINK_COLOR
fi

export MY_BASEPROMPT='\e${MY_USER_COLOR}\u\
    \e${MY_GRAY_COLOR}@\e${MY_ORANGE_COLOR}\h \
    \e${MY_GRAY_COLOR}in \e${MY_GREEN_COLOR}\w\
    \e${MY_GRAY_COLOR}$(__git_ps1)\e${MY_DEFAULT_COLOR}'
export PS1="${MY_BASEPROMPT}
$ "

### Alias
alias eatbacon="ssh bacon"
alias api="ssh api"
alias ll="ls -ila"
