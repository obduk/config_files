PS1='\u@\h:\w\$ '

export CLICOLOR=1

# bash aliases
alias grep='grep --color=auto'
alias la='ls -lhAF'
alias ll='ls -lhF'

# brew bash completion
if type brew &>/dev/null; then
  . $(brew --prefix)/etc/bash_completion
fi

# rbenv
if type rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Heroku
HEROKU_AC_BASH_SETUP_PATH="$HOME/Library/Caches/heroku/autocomplete/bash_setup"

if [ -f "$HEROKU_AC_BASH_SETUP_PATH" ]; then
  . $HEROKU_AC_BASH_SETUP_PATH
fi

# bin
if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

# Workspace info
function wi() {
  for path in $(find $HOME/workspace -maxdepth 2 -type d -name .git | sort | sed "s|/\.git$||"); do
    cd $path
    echo $PWD
    git branch
    git status --short
    git stash list
    echo
  done
}
