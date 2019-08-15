alias c='nocorrect clear'
alias ls='ls -AFHv --color=tty'
alias status-no-git='clear && ls'
alias status='(git rev-parse --git-dir && clear && git status && echo && ls) || (status-no-git)'
alias s='status'
alias superstatus-no-git='clear && neofetch && ls'
alias superstatus='(git rev-parse --git-dir && clear && neofetch && git status && echo && ls) || (superstatus-no-git)'
alias ss='superstatus'


# Git

alias gs='git status'
alias ga='git add -A'
alias gc='git commit -v'
alias gp='git push'
alias gpo='git push --set-upstream origin HEAD'
