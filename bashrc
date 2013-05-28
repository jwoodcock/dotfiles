export PATH=/Users/Kite/pear/bin:/usr/local/Cellar/python/2.7.3/bin:/usr/local/share/python/:/usr/local/bin:${PATH}
export WORKON_HOME=~/.venvs
export PROJECT_HOME=~/work
source /usr/local/share/python/virtualenvwrapper.sh

#prompt info
#export PROMPT_COMMAND='echo -ne "\033]0;\"lizard king\"@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Alias 
alias b2g="/Applications/B2G.app/Contents/MacOS/b2g-bin -profile ~/work/FirefoxOS/gaia/profile"
alias b2g-debug="/Applications/B2G.app/Contents/MacOS/b2g-bin -jsconsole -profile ~/work/FirefoxOS/gaia/profile"
