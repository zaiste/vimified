vimified
========

> Frankly, my dear, you're gonna be vimified one day!

Ultimate VIM configuration. Plugins are added via *awesome* [Vundle](https://github.com/gmarik/vundle).

![ctrlp view](http://f.cl.ly/items/3a0X3F3x3r0K1n1u1Y2r/vimified.png)

How to install
--------------

    cd 
    git clone git://github.com/zaiste/vimified.git
    ln -sfn vimified ~/.vim
    ln -sfn vimified/vimrc ~/.vimrc
    cd vimified
    mkdir bundle
    git clone https://github.com/gmarik/vundle.git bundle/vundle
    vim +BundleInstall +qall
    
Installation requires [Z shell](http://zsh.org/) has already been installed in
your system.

What's included
---------------

### ack.vim 

Vim plugin for the Perl module / CLI script 'ack'. ([source](http://github.com/mileszs/ack.vim))

**Command**: `,a` 

### hammer

vim, your markup language of choice, and your browser of choice. ([source](https://github.com/robgleeson/hammer.vim))

**Command**: `,p` 

### vim-ruby-refactoring

Refactoring tool for Ruby in vim! ([source](https://github.com/ecomba/vim-ruby-refactoring))

**Commands**:

  - [RAddParameter](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-add-parameter-2/) : `,rap`
  - [RInlineTemp](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-inline-temp/) : `,rit`
  - [RExtractMethod](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-extract-method/) : `,rem`
  - [RRenameLocalVariable](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-rename-local-variable/) : `,rrlv`
  - [RRenameInstanceVariable](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-rename-instance-variable/) : `,rriv`

### molokai

Molokai color scheme for Vim. ([source](https://github.com/tomasr/molokai))

### nerdtree

A tree explorer plugin for vim. ([source](https://github.com/scrooloose/nerdtree))

**Command:** `CTRL-P`

### nerdcommenter

Vim plugin for intensely orgasmic commenting. ([source](https://github.com/scrooloose/nerdcommenter))

**Command:** `,/`

### vim-yankring

Mirror of yankring.vim ([source](https://github.com/chrismetcalf/vim-yankring))

**Command:** `,y`

### ctrlp

Fuzzy file, buffer, mru and tag finder. ([source](https://github.com/kien/ctrlp.vim))

**Command:** `<ctrl-p>`

![ctrlp view](http://f.cl.ly/items/393i0b0N2C1H1e0Q2K3k/ctrlp.png)

### vim-coffee-script

CoffeeScript support for vim ([source](https://github.com/kchmck/vim-coffee-script))

- haskellmode-vim

- snipmate

- syntastic

- threesome

- vim-align

- vim-colors-solarized

- vim-endwise

- vim-fugitive

- vim-haml

- vim-ident-object

- vim-matchit

- vim-pastie

- vim-pathogen

- vim-preview

- vim-rails

- vim-repeat


- vim-space

- vim-speeddating

- vim-surround

- vim-syntax-haskell-cabal

- vim-textobj-rubyblock

- vim-textobj-user

- vim-unimpaired


Cooked by [Zaiste!](http://zaiste.net/) 

Inspired by 
 * [dotvim](https://github.com/astrails/dotvim)
 * [Steve Losh's dotfiles](https://github.com/sjl/dotfiles)
