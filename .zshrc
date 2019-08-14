
# Path to your oh-my-zsh installation.
export ZSH="/home/benchislett/.oh-my-zsh"

ZSH_THEME="main"

HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=()

source $ZSH/oh-my-zsh.sh

source ~/.tokens.sh

export LANG=en_US.UTF-8

export TERMINAL='urxvt'
export EDITOR='vim'
export DEFAULT_USER=benchislett

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64
