if [ -n $BASH_VERSION ]; then
  if [ -f $HOME/.bashrc ]; then
    . $HOME/.bashrc
  elif [ -f ~/.bash_aliases ]; then
    . $HOME/.bash_aliases
  fi
fi

if [ -d $HOME/bin ] ; then
  PATH=$HOME/bin:$PATH
fi

if [ -f $HOME/.rbenvrc ] ; then
  . $HOME/.rbenvrc
fi
