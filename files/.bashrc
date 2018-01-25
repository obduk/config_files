HISTCONTROL=ignoreboth
SHELL_SESSION_HISTORY=0
HISTFILESIZE=10000
HISTSIZE=10000
PS1='\u@\h:\w\$ '

export VISUAL=vim
export CLICOLOR=1

if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi

if which brew > /dev/null 2>&1 && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
