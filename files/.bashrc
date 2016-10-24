HISTCONTROL=ignoreboth
HISTFILESIZE=2000
HISTSIZE=1000
PS1='\u@\h:\w\$ '

export VISUAL=vim
export CLICOLOR=1

if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi
