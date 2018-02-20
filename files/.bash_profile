if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/iCloud Drive/bin" ]; then
    export PATH="$HOME/iCloud Drive/bin:$PATH"
fi

if [ -d "$HOME/.rbenv/shims" ]; then
    export PATH="$HOME/.rbenv/shims:$PATH"
fi

if [ -d "/vagrant" ] && [ "$PWD" == "$HOME" ]; then
    cd "/vagrant"
fi
