runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()

syntax on
filetype plugin indent on

let mapleader = ","
let maplocalleader = "\\"


colorscheme molokai 

set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.vim/bundle.vim
source ~/.vim/status.vim
