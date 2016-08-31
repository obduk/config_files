if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -f "$HOME/.rbenvrc" ] ; then
    . "$HOME/.rbenvrc"
fi
