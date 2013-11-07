" vimrc
" Author: Zaiste! <oh@zaiste.net>
" Source: https://github.com/zaiste/vimified
"
" Have fun!
"
"
set nocompatible
filetype on
filetype off

" Load external configuration before anything else {{{
if filereadable(expand("~/.vim/before.vimrc"))
  source ~/.vim/before.vimrc
endif
" }}}

let mapleader = ","
let maplocalleader = "\\"

" Local vimrc configuration {{{
let s:localrc = expand($HOME . '/.vim/local.vimrc')
if filereadable(s:localrc)
    exec ':so ' . s:localrc
endif
" }}}

" PACKAGE LIST {{{
" Use this variable inside your local configuration to declare
" which package you would like to include
if ! exists('g:vimified_packages')
    let g:vimified_packages = ['general', 'fancy', 'os', 'coding', 'python', 'ruby', 'html', 'css', 'js', 'clojure', 'haskell', 'color']
endif
" }}}

" VUNDLE {{{
let s:bundle_path=$HOME."/.vim/bundle/"
execute "set rtp+=".s:bundle_path."vundle/"
call vundle#rc()

Bundle 'gmarik/vundle'
" }}}

" PACKAGES {{{

" Install user-supplied Bundles {{{
let s:extrarc = expand($HOME . '/.vim/extra.vimrc')
if filereadable(s:extrarc)
    exec ':so ' . s:extrarc
endif
" }}}

" _. General {{{
if count(g:vimified_packages, 'general')
    Bundle 'editorconfig/editorconfig-vim'

    Bundle 'rking/ag.vim'
    nnoremap <leader>a :Ag -i<space>

    Bundle 'matthias-guenther/hammer.vim'
    nmap <leader>p :Hammer<cr>

    Bundle 'tsaleh/vim-align'
    Bundle 'tpope/vim-endwise'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-speeddating'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'maxbrunsfeld/vim-yankstack'
    Bundle 'tpope/vim-eunuch'

    Bundle 'scrooloose/nerdtree'
    nmap <C-i> :NERDTreeToggle<CR>
    " Disable the scrollbars (NERDTree)
    set guioptions-=r
    set guioptions-=L
    " Keep NERDTree window fixed between multiple toggles
    set winfixwidth


    Bundle 'kana/vim-textobj-user'
    Bundle 'vim-scripts/YankRing.vim'
    let g:yankring_replace_n_pkey = '<leader>['
    let g:yankring_replace_n_nkey = '<leader>]'
    let g:yankring_history_dir = '~/.vim/tmp/'
    nmap <leader>y :YRShow<cr>

    Bundle 'michaeljsmith/vim-indent-object'
    let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

    Bundle 'Spaceghost/vim-matchit'
    Bundle 'kien/ctrlp.vim'
    let g:ctrlp_working_path_mode = ''

    Bundle 'vim-scripts/scratch.vim'

    Bundle 'troydm/easybuffer.vim'
    nmap <leader>be :EasyBufferToggle<enter>

    Bundle 'terryma/vim-multiple-cursors'
endif
" }}}

" _. Fancy {{{
if count(g:vimified_packages, 'fancy')
    Bundle 'bling/vim-airline'
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_branch_prefix = ''
endif
" }}}

" _. Indent {{{
if count(g:vimified_packages, 'indent')
  Bundle 'Yggdroot/indentLine'
  set list lcs=tab:\|\
  let g:indentLine_color_term = 111
  let g:indentLine_color_gui = '#DADADA'
  let g:indentLine_char = 'c'
  "let g:indentLine_char = '∙▹¦'
  let g:indentLine_char = '∙'
endif
" }}}

" _. OS {{{
if count(g:vimified_packages, 'os')
    Bundle 'zaiste/tmux.vim'
    Bundle 'benmills/vimux'
    map <Leader>rp :VimuxPromptCommand<CR>
    map <Leader>rl :VimuxRunLastCommand<CR>

    map <LocalLeader>d :call VimuxRunCommand(@v, 0)<CR>
endif
" }}}

" _. Coding {{{

if count(g:vimified_packages, 'coding')
    Bundle 'majutsushi/tagbar'
    nmap <leader>t :TagbarToggle<CR>

    Bundle 'gregsexton/gitv'

    Bundle 'scrooloose/nerdcommenter'
    nmap <leader># :call NERDComment(0, "invert")<cr>
    vmap <leader># :call NERDComment(0, "invert")<cr>

    " - Bundle 'msanders/snipmate.vim'
    Bundle 'sjl/splice.vim'

    Bundle 'tpope/vim-fugitive'
    nmap <leader>g :Ggrep
    " ,f for global git serach for word under the cursor (with highlight)
    nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
    " same in visual mode
    :vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

    Bundle 'scrooloose/syntastic'
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list=1
    let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby'], 'passive_filetypes': ['html', 'css', 'slim'] }

    " --

    Bundle 'vim-scripts/Reindent'

    autocmd FileType gitcommit set tw=68 spell
    autocmd FileType gitcommit setlocal foldmethod=manual
endif
" }}}

" _. Python {{{
if count(g:vimified_packages, 'python')
    Bundle 'klen/python-mode'
    Bundle 'python.vim'
    Bundle 'python_match.vim'
    Bundle 'pythoncomplete'
endif
" }}}

" _. Ruby {{{
if count(g:vimified_packages, 'ruby')
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'tpope/vim-rails'
    Bundle 'nelstrom/vim-textobj-rubyblock'
    Bundle 'ecomba/vim-ruby-refactoring'

    autocmd FileType ruby,eruby,yaml set tw=80 ai sw=2 sts=2 et
    autocmd FileType ruby,eruby,yaml setlocal foldmethod=manual
    autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
endif
" }}}

" _. Clang {{{
if count(g:vimified_packages, 'clang')
    Bundle 'LucHermitte/vim-clang'
    Bundle 'vim-scripts/c.vim'
endif
" }}}

" _. HTML {{{
if count(g:vimified_packages, 'html')
    Bundle 'tpope/vim-haml'
    Bundle 'juvenn/mustache.vim'
    Bundle 'tpope/vim-markdown'
    Bundle 'digitaltoad/vim-jade'
    Bundle 'slim-template/vim-slim'

    au BufNewFile,BufReadPost *.jade setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
    au BufNewFile,BufReadPost *.html setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
    au BufNewFile,BufReadPost *.slim setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
endif
" }}}

" _. CSS {{{
if count(g:vimified_packages, 'css')
    Bundle 'wavded/vim-stylus'
    Bundle 'lunaru/vim-less'
    nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>
endif
" }}}

" _. JS {{{
if count(g:vimified_packages, 'js')
    Bundle 'kchmck/vim-coffee-script'
    au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab

    Bundle 'alfredodeza/jacinto.vim'
    au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
    au BufNewFile,BufReadPost *.coffee setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab
endif
" }}}

" _. Clojure {{{
if count(g:vimified_packages, 'clojure')
    Bundle 'guns/vim-clojure-static'
    Bundle 'tpope/vim-fireplace'
    Bundle 'tpope/vim-classpath'
endif
" }}}

" _. Haskell {{{
if count(g:vimified_packages, 'haskell')
    Bundle 'Twinside/vim-syntax-haskell-cabal'
    Bundle 'lukerandall/haskellmode-vim'

    au BufEnter *.hs compiler ghc

    let g:ghc = "/usr/local/bin/ghc"
    let g:haddock_browser = "open"
endif
" }}}

" _. Elixir {{{
if count(g:vimified_packages, 'elixir')
    Bundle 'elixir-lang/vim-elixir'
endif
" }}}

" _. Color {{{
if count(g:vimified_packages, 'color')
    Bundle 'sjl/badwolf'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'tomasr/molokai'
    Bundle 'zaiste/Atom'
    Bundle 'w0ng/vim-hybrid'
    Bundle 'chriskempson/base16-vim'
    Bundle 'Elive/vim-colorscheme-elive'
    Bundle 'zeis/vim-kolor'

    " During installation the molokai colorscheme might not be avalable
    if filereadable(globpath(&rtp, 'colors/molokai.vim'))
      colorscheme molokai
    else
      colorscheme default
    endif
else
    colorscheme default
endif
" }}}

" }}}

" General {{{
filetype plugin indent on

syntax on

" Set 5 lines to the cursor - when moving vertically
set scrolloff=0

" It defines where to look for the buffer user demanding (current window, all
" windows in other tabs, or nowhere, i.e. open file from scratch every time) and
" how to open the buffer (in the new split, tab, or in the current window).

" This orders Vim to open the buffer.
set switchbuf=useopen

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" }}}

" Mappings {{{

" You want to be part of the gurus? Time to get in serious stuff and stop using
" arrow keys.
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>

" Yank from current cursor position to end of line
map Y y$
" Yank content in OS's clipboard. `o` stands for "OS's Clipoard".
vnoremap <leader>yo "*y
" Paste content from OS's clipboard
nnoremap <leader>po "*p

" clear highlight after search
noremap <silent><Leader>/ :nohls<CR>

" better ESC
inoremap <C-k> <Esc>

nmap <silent> <leader>hh :set invhlsearch<CR>
nmap <silent> <leader>ll :set invlist<CR>
nmap <silent> <leader>nn :set invnumber<CR>
nmap <silent> <leader>pp :set invpaste<CR>
nmap <silent> <leader>ii :set invrelativenumber<CR>

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

" Emacs bindings in command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Source current line
vnoremap <leader>L y:execute @@<cr>
" Source visual selection
nnoremap <leader>L ^vg_y:execute @@<cr>

" Fast saving and closing current buffer without closing windows displaying the
" buffer
nmap <leader>wq :w!<cr>:Bclose<cr>

" }}}

" . abbrevs {{{
"
iabbrev z@ oh@zaiste.net

" . }}}

" Settings {{{
set autoread
set backspace=indent,eol,start
set binary
set cinoptions=:0,(s,u0,U1,g0,t0
set completeopt=menuone,preview
set encoding=utf-8
set hidden
set history=1000
set incsearch
set laststatus=2
set list

" Don't redraw while executing macros
set nolazyredraw

" Disable the macvim toolbar
set guioptions-=T

set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
set showbreak=↪

set notimeout
set ttimeout
set ttimeoutlen=10

" _ backups {{{
if has('persistent_undo')
  set undodir=~/.vim/tmp/undo//     " undo files
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup
set noswapfile
" _ }}}

set modelines=0
set noeol
if exists('+relativenumber')
  set relativenumber
endif
set numberwidth=3
set winwidth=83
set ruler
if executable('/bin/zsh')
  set shell=/bin/zsh
endif
set showcmd

set exrc
set secure

set matchtime=2

set completeopt=longest,menuone,preview

" White characters {{{
set autoindent
set tabstop=4
set softtabstop=4
set textwidth=80
set shiftwidth=4
set expandtab
set wrap
set formatoptions=qrn1
if exists('+colorcolumn')
  set colorcolumn=+1
endif
" }}}

set visualbell

set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc
set wildmenu

set dictionary=/usr/share/dict/words
" }}}

" Triggers {{{

" Save when losing focus
au FocusLost    * :silent! wall
"
" When vimrc is edited, reload it
autocmd! BufWritePost vimrc source ~/.vimrc

" }}}

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
augroup END
" }}}

" Trailing whitespace {{{
" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars-=trail:␣
    au InsertLeave * :set listchars+=trail:␣
augroup END

" Remove trailing whitespaces when saving
" Wanna know more? http://vim.wikia.com/wiki/Remove_unwanted_spaces
" If you want to remove trailing spaces when you want, so not automatically,
" see
" http://vim.wikia.com/wiki/Remove_unwanted_spaces#Display_or_remove_unwanted_whitespace_with_a_script.
autocmd BufWritePre * :%s/\s\+$//e

" }}}

" . searching {{{

" sane regexes
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set showmatch
set gdefault
set hlsearch

" clear search matching
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Don't jump when using * for search
nnoremap * *<c-o>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Highlight word {{{

nnoremap <silent> <leader>hh :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>h1 :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>h2 :execute '2match InterestingWord2 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>h3 :execute '3match InterestingWord3 /\<<c-r><c-w>\>/'<cr>

" }}}

" }}}

" Navigation & UI {{{

" Begining & End of line in Normal mode
noremap H ^
noremap L g_

" more natural movement with wrap on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Easy splitted window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Easy buffer navigation
noremap <leader>bp :bprevious<cr>
noremap <leader>bn :bnext<cr>

" Splits ,v and ,h to open new splits (vertical and horizontal)
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Bubbling lines
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" }}}

" . folding {{{

set foldlevelstart=0
set foldmethod=syntax

" Space to toggle folds.
nnoremap <space> za
vnoremap <space> za

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO

" Use ,z to "focus" the current fold.
nnoremap <leader>z zMzvzz

" }}}

" Quick editing {{{

nnoremap <leader>ev <C-w>s<C-w>j:e $MYVIMRC<cr>
nnoremap <leader>es <C-w>s<C-w>j:e ~/.vim/snippets/<cr>
nnoremap <leader>eg <C-w>s<C-w>j:e ~/.gitconfig<cr>
nnoremap <leader>ez <C-w>s<C-w>j:e ~/.zshrc<cr>
nnoremap <leader>et <C-w>s<C-w>j:e ~/.tmux.conf<cr>

" --------------------

set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" showmarks
let g:showmarks_enable = 1
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr

" }}}

" _ Vim {{{
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
    au FileType help setlocal textwidth=78
    au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
augroup END
" }}}

" EXTENSIONS {{{

" _. Scratch {{{
source ~/.vim/functions/scratch_toggle.vim
" }}}

" _. Buffer Handling {{{
source ~/.vim/functions/buffer_handling.vim
" }}}

" _. Tab {{{
source ~/.vim/functions/insert_tab_wrapper.vim
" }}}

" _. Text Folding {{{
source ~/.vim/functions/my_fold_text.vim
" }}}

" _. Gist {{{
" Send visual selection to gist.github.com as a private, filetyped Gist
" Requires the gist command line too (brew install gist)
vnoremap <leader>G :w !gist -p -t %:e \| pbcopy<cr>
" }}}

" }}}

" TEXT OBJECTS {{{

" Shortcut for [] motion
onoremap ir i[
onoremap ar a[
vnoremap ir i[
vnoremap ar a[

" }}}

" Load addidional configuration (ie to overwrite shorcuts) {{{
if filereadable(expand("~/.vim/after.vimrc"))
  source ~/.vim/after.vimrc
endif
" }}}
