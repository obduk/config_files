if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "/vagrant" ] && [ "$PWD" == "$HOME" ]; then
    cd "/vagrant"
fi
