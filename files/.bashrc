PS1='\u@\h:\w\$ '

export VISUAL=nvim
export CLICOLOR=1

if [ -f "$HOME/.bash_aliases" ]; then
  . "$HOME/.bash_aliases"
fi

if which brew >/dev/null 2>&1 && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

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
