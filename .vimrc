
" History length
set history=1024

" Enable filetype plugins
filetype plugin on
filetype indent on

" :W saves with sudo
command W w !sudo tee % > /dev/null

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

" Git wrappers
Plug 'tpope/vim-fugitive'

" Git diff margin
Plug 'airblade/vim-gitgutter'

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

" Code completion
Plug 'davidhalter/jedi-vim'

" Code formatting
Plug 'tell-k/vim-autopep8'

call plug#end()

" Plugin config
let g:vim_markdown_folding_disabled = 1

let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 2
