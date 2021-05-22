# color terminal commands
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

# keep npm version
export N_PRESERVE_NPM=1

function wi() {
  for workspace in $HOME/workspace/*; do
    echo "------------------------------------------------------------"
    echo $workspace
    cd $workspace
    git branch --all --color | grep -v "master\|main"
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
