runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()

syntax on
filetype plugin indent on

let mapleader = ","
let maplocalleader = "\\"

set autoindent
set incsearch 
set hlsearch
set ignorecase 
set smartcase
set autoread 
set nobackup 
set noswapfile 
set background=dark
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=menuone,preview
set expandtab
set guifont=Monaco:h13
set guioptions-=T 
set hidden 
set history=1000
set laststatus=2 
set list
set listchars=trail:·
set modelines=5 
set nocompatible
set noeol
set nowrap 
set number 
set numberwidth=10
set ruler 
set shell=/bin/zsh 
set shiftwidth=4 
set showcmd 
set showmatch 
set tabstop=4 
set textwidth=0 
set visualbell 
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set wildmenu 
set foldcolumn=0 
set foldmethod=indent
set foldlevel=9
set nofoldenable

colorscheme molokai 

set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

source ~/.vim/bundle.vim
source ~/.vim/status.vim
