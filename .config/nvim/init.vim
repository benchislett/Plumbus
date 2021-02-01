" History length
set history=4096

" Row/Col indicator
set ruler

" Enable filetype plugins
filetype plugin on
filetype indent on

" :W saves with sudo
command W w !sudo tee % > /dev/null
command Wq wq !sudo tee % > /dev/null

" Turn on completion hints
set wildmenu

" Enter the new age
set nocompatible

" Allow backspace deletion
set backspace=indent,eol,start

" Ignore extra files/dirs in wildmenu
set wildignore+=*/.git/*,*/node_modules/*

" Highlight search results
set hlsearch

" Remove annoying error notification
set noerrorbells
set novisualbell

" Turn on syntax highlighting
syntax enable

" Remove some unnecessary extra files
set nobackup
set noswapfile

" Indentation
set expandtab " Turn tabs into spaces
set smarttab " Smart tab insertion
set shiftwidth=2 " 1 tab == 2 spaces
set tabstop=2
set autoindent " Auto indent
set smartindent " Smart indent

" Find only files from vim caller's path downward
set path=.,,**

" Line numbers
set number
set relativenumber

" Scroll wheel
set mouse=a

" Plugins!

call plug#begin('~/.vim-plugins')
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'
Plug 'vim-jp/cpp-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

let g:clang_format#auto_format=1
