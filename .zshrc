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

export TERMINAL='kitty'
export EDITOR='nvim'
export DEFAULT_USER=benchislett

export JULIA_NUM_THREADS=10

export CPATH=/opt/cuda/targets/x86_64-linux/include:$CPATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/cuda/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/gem/ruby/2.7.0/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64:/opt/cuda/targets/x86_64-linux/lib:/usr/lib


n()
{
    if [ -z "$NVM_DIR" ]
    then
        source /usr/share/nvm/init-nvm.sh
    fi
    nvm $@
}
