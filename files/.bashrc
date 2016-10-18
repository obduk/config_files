HISTCONTROL=ignoreboth
PS1='\u@\h:\w\$ '

export VISUAL=vim
export CLICOLOR=1

if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi
