PS1='\u@\h:\w\$ '

export CLICOLOR=1

# bash aliases
alias grep='grep --color=auto'
alias la='ls -lhAF'
alias ll='ls -lhF'

# brew bash completion
if [ -r "/usr/local/etc/profile.d/bash_completion.sh" ]; then
  . "/usr/local/etc/profile.d/bash_completion.sh"
fi

# rbenv
if type rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh"
fi

if [ -s "$NVM_DIR/bash_completion" ]; then
  . "$NVM_DIR/bash_completion"
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
