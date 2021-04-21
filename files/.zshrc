export CLICOLOR=1

# aliases
alias grep='grep --color=auto'
alias la='ls -lhAF'
alias ll='ls -lhF'

# completion
autoload -Uz compinit && compinit

# rbenv
if type rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

function wi() {
  for workspace in $HOME/workspace/*; do
    echo "------------------------------------------------------------"
    echo $workspace
    cd $workspace
    git branch --color | grep -v "master" | grep -v "main" | grep -v "dev"
    git status --short
    git stash list
  done

  echo "------------------------------------------------------------"
}

function wp() {
  for workspace in $HOME/workspace/*; do
    echo "------------------------------------------------------------"
    echo $workspace
    cd $workspace
    git pull
  done

  echo "------------------------------------------------------------"
}
