# ~/.bash_aliases
alias grep='grep --color=auto'
alias h='history'
alias j='jobs'
alias jsonlint='python -m json.tool'
alias la='ls -lhAF'
alias ll='ls -lhF'
alias s='python -m SimpleHTTPServer'

# git
alias ga='git add --all'
alias gb='git branch --all'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdm='git diff master'
alias gg='git grep -I'
alias gi='git info'
alias gp='git push'
alias gpf='git push --force'
alias gr='git pull --rebase --all --prune'
alias grc='git rebase --continue'
alias gri='git rebase -i master'
alias gru='git fetch --all --prune && git rebase upstream/master && git push'

# git workspace
alias gwb="git-workspace branch --all"
alias gwi="git-workspace info"
alias wb="cd $HOME/workspace && git-workspace branch --all"
alias wi="cd $HOME/workspace && git-workspace info"
