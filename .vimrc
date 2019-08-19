
" History length
set history=1024

" Enable filetype plugins
filetype plugin on
filetype indent on

" :W saves with sudo
command W w !sudo tee % > /dev/null

" Turn on completion hints
set wildmenu

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
set ai " Auto indent
set si " Smart indent

" Find only files from vim caller's path downward
set path=**

" Line numbers
set number
set relativenumber

" Scroll wheel
set mouse=a


" Plugins

call plug#begin('~/.vim-plugins')

" Toggle comments on stuff with `gc`
Plug 'tpope/vim-commentary'

" Tabular, requirement for vim-markdown
Plug 'godlygeek/tabular'

" Language plugins
" Julia
Plug 'julialang/julia-vim'
" Javascript
Plug 'pangloss/vim-javascript'
" Typescript
Plug 'leafgarland/typescript-vim'
" Markdown
Plug 'plasticboy/vim-markdown'

call plug#end()

