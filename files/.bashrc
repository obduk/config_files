EDITOR=vim
HISTCONTROL=ignoreboth
PS1='\u@\h:\w\$ '

if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi
