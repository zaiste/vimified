" vimrc
" Author: Zaiste!
" Source: https://github.com/zaiste/vimified
"
" Have fun!

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" General {{{
Bundle 'mileszs/ack.vim'
Bundle 'tsaleh/vim-align'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/vim-space'
Bundle 'scrooloose/syntastic'
Bundle 'msanders/snipmate.vim'
Bundle 'sjl/threesome.vim'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Bundle 'chrismetcalf/vim-yankring'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'mirell/vim-matchit'
Bundle 'matthias-guenther/hammer.vim'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
" }}}

" Haskell {{{
Bundle 'Twinside/vim-syntax-haskell-cabal'
Bundle 'lukerandall/haskellmode-vim'
" }}}

" Colors {{{
Bundle 'sjl/badwolf'
" }}}

filetype plugin indent on
colorscheme badwolf
syntax on

let mapleader = ","
let maplocalleader = "\\"

set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" showmarks
let g:showmarks_enable = 1 
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

" nerdtree
nmap <C-L> :NERDTreeToggle<CR>

" nerdcommenter
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" ,t to show tags window
let Tlist_Show_Menu=1
nmap <leader>t :TlistToggle<CR>

" sessionman
nmap <leader>S :SessionList<CR>
nmap <leader>SS :SessionSave<CR>
nmap <leader>SA :SessionSaveAs<CR>

" minibufexpl
let g:miniBufExplVSplit = 25
let g:miniBufExplorerMoreThanOne = 100
let g:miniBufExplUseSingleClick = 1
nmap <Leader>b :MiniBufExplorer<cr>

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
nmap <leader>y :YRShow<cr>


" Fugitive
" ,e for Ggrep
nmap <leader>g :Ggrep

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

" Ack
nmap <leader>a :Ack

" vim-indentobject
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" Hammer
nmap <leader>p :Hammer<cr>

" Powerline {{{
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1
" }}}

" Mappings {{{

map Y y$

" clear highlight after search
noremap <silent><Leader>/ :nohls<CR>

" better ESC
inoremap jk <Esc>

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <leader>v <C-w>v<C->l
nnoremap <leader>d <C-w>s<C-w>j
" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <silent> <leader>h :set invhlsearch<CR>
nmap <silent> <leader>l :set invlist<CR>
nmap <silent> <leader>n :set invnumber<CR>
nmap <silent> <leader>p :set invpaste<CR>

nnoremap ; :

" }}}

" Settings {{{
set autoindent
set autoread 
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=menuone,preview
set expandtab
set foldcolumn=0 
set foldlevel=9
set foldmethod=indent
set hidden 
set history=1000
set hlsearch
set ignorecase 
set incsearch 
set laststatus=2 
set list
set listchars=trail:·
set modelines=5 
set nobackup 
set noeol
set nofoldenable
set noswapfile 
set nowrap 
set number 
set numberwidth=10
set ruler 
set shell=/bin/zsh 
set shiftwidth=4 
set showcmd 
set showmatch 
set smartcase
set tabstop=4 
set textwidth=0 
set visualbell 
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set wildmenu 
" }}}

