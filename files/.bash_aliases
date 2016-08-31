# ~/.bash_aliases
# alias grep='grep --color=auto'
alias h='history'
alias j='jobs'
alias la='ls -lhAF'
alias ll='ls -lhF'
# alias ls='ls --color=auto'
alias n='sudo netstat -ntlp'
alias s='python -m SimpleHTTPServer'

# git
alias ga='git add --all'
alias gb='git branch'
alias gbr='git branch -r'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdm='git diff master'
alias gf='git fetch --all --prune'
alias gg='git grep -I'
alias gi='git info'
alias gl='git log --graph --abbrev-commit --date=relative --pretty=format:"%C(yellow)%h %Cred%d%Creset %s %Cgreen(%cr) %C(blue)<%an>"'
alias gp='git push'
alias gpf='git push --force'
alias gr='git pull --rebase --all --prune'
alias grc='git rebase --continue'
alias gri='git rebase -i master'
alias gru='git fetch --all --prune && git rebase upstream/master && git push'
alias gs='git status'

# git workspace
alias wi="git-workspace info"
alias wr="git-workspace pull --rebase --all --prune"

# vagrant
alias vd='vagrant destroy'
alias vg='vagrant global-status'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vr='vagrant reload'
alias vs='vagrant ssh -c "tmux a || tmux"'
alias vu='vagrant up'
