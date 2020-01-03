alias c='nocorrect clear'
alias ls='ls -AFHv --color=tty'
alias status-no-git='ls'
alias status='(git rev-parse --git-dir && git status && echo && ls) || (status-no-git)'
alias s='status'
alias superstatus-no-git='neofetch && ls'
alias superstatus='(git rev-parse --git-dir && neofetch && git status && echo && ls) || (superstatus-no-git)'
alias ss='superstatus'

# XDG
alias open='xdg-open'

# Web

alias google-chrome='google-chrome-stable'
alias chrome='google-chrome-stable'

# Git

alias gs='git status'
alias ga='git add -A'
alias gc='git commit -v'
alias gp='git push'
alias gpo='git push --set-upstream origin HEAD'

# Network
alias renet='nmcli networking off && nmcli networking on'
alias renetfull='systemctl restart NetworkManager.service'

# Pacman
alias newmirrors='rankmirrors -n 16 /etc/pacman.d/mirrorlist.all_unordered > /etc/pacman.d/mirrorlist'
