vimified
========

> Frankly, my dear, you're gonna be vimified one day!

Kick-ass Vim configuration framework, built on top of *awesome* [Vundle](https://github.com/gmarik/vundle). 

![ctrlp view](http://f.cl.ly/items/3a0X3F3x3r0K1n1u1Y2r/vimified.png)

How to install
--------------

Grab the project:

    cd 
    git clone git://github.com/zaiste/vimified.git
    ln -sfn vimified ~/.vim
    ln -sfn vimified/vimrc ~/.vimrc
    cd vimified

Create required directories

    mkdir bundle
    mkdir -p tmp/backup tmp/swap tmp/undo

Set up Vundle

    git clone https://github.com/gmarik/vundle.git bundle/vundle

Set up your local configuration via `local.vimrc` file and choose package you
want to use:

    echo "let g:vimified_packages = ['general', 'coding', 'clojure', 'color']" > local.vimrc

Install plugins: 

    vim +BundleInstall +qall

Enjoy!

Configuration
-------------

You can overwrite default configuration and key bindings by using one of following files:

`~/.vim/before.vimrc` will be loaded before everything else. 

`~/.vim/after.vimrc` will be loaded after all configuration options are set. This is best place to change vimified default behaviour (keybindings) and/or color scheme.
    
Packages
--------

Inside your local configuration file `$HOME/.vim/local.vimrc` set `g:vimified_packages` variable with packages you want to use. 

For example, if you are only interested in Ruby/Rails related stuff, put something like the following line inside `$HOME/.vim/local.vimrc`:

    let g:vimified_packages = ['general', 'coding', 'ruby', 'color']

Avaible packages:

 * general
 * fancy
 * os
 * coding 
 * ruby
 * html
 * css
 * js 
 * clojure
 * haskel
 * color

### General 

#### [ack.vim](http://github.com/mileszs/ack.vim)

Vim plugin for the Perl module / CLI script 'ack'. 

**Command**: `,a` 

#### [hammer](https://github.com/matthias-guenther/hammer.vim)

vim, your markup language of choice, and your browser of choice. 

**Command**: `,p` 

#### [vim-align](https://github.com/tsaleh/vim-align)

Clone of the Align.vba file, since I think VBA files are a freaking abomination. 

#### [vim-endwise](https://github.com/tpope/vim-endwise)

endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc 

#### [vim-repeat](https://github.com/tpope/vim-repeat)

repeat.vim: enable repeating supported plugin maps with "."

#### [vim-speeddating](https://github.com/tpope/vim-speeddating)

speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more 

#### [vim-surround](https://github.com/tpope/vim-surround)

surround.vim: quoting/parenthesizing made simple 

#### [vim-unimpaired](https://github.com/tpope/vim-unimpaired)

unimpaired.vim: pairs of handy bracket mappings 

#### [nerdtree](https://github.com/scrooloose/nerdtree)

A tree explorer plugin for vim.

**Command:** `ctrl-u`

#### [vim-space](https://github.com/spiiph/vim-space)

space.vim - Smart Space key for Vim

#### [vim-textobj-user](https://github.com/kana/vim-textobj-user)

Vim plugin: Support for user-defined text objects 

#### [vim-yankring](https://github.com/chrismetcalf/vim-yankring)

Mirror of yankring.vim 

**Command:** `,y`

#### [vim-ident-object](https://github.com/michaeljsmith/vim-indent-object)

Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc. 

#### [vim-matchit](https://github.com/mirell/vim-matchit)

The matchit.vim script allows you to configure % to match more than just single characters.

#### [ctrlp](https://github.com/kien/ctrlp.vim)

Fuzzy file, buffer, mru and tag finder.

**Command:** `ctrl-p`

![ctrlp view](http://f.cl.ly/items/393i0b0N2C1H1e0Q2K3k/ctrlp.png)

#### [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip)

Buffer Explorer / Browser.

### Fancy

#### [powerline](https://github.com/Lokaltog/vim-powerline)

The ultimate vim statusline utility.

### OS

#### [tmux.vim](https://github.com/zaiste/tmux.vim)

#### [vimux](https://github.com/benmills/vimux)

### Coding

#### [tagbar](https://github.com/majutsushi/tagbar)

Vim plugin that displays tags in a window, ordered by class etc. 

**Command:** `,t`

#### [gitv](https://github.com/gregsexton/gitv)

gitk for Vim.

#### [nerdcommenter](https://github.com/scrooloose/nerdcommenter)

Vim plugin for intensely orgasmic commenting.

**Command:** `,#`

#### [splice.vim](https://github.com/sjl/splice.vim)

A Vim plugin for managing three-way merges.

#### [vim-fugitive](https://github.com/tpope/vim-fugitive)

fugitive.vim: a Git wrapper so awesome, it should be illegal 

#### [syntastic](https://github.com/scrooloose/syntastic)

Syntax checking hacks for vim 

### Ruby 

#### [vim-ruby](https://github.com/vim-ruby/vim-ruby)

#### [vim-rails](https://github.com/tpope/vim-rails)

rails.vim: Ruby on Rails power tools 

#### [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)

A custom text object for selecting ruby blocks.

#### [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)

Refactoring tool for Ruby in vim!

**Commands**:

  - [RAddParameter](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-add-parameter-2/) : `,rap`
  - [RInlineTemp](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-inline-temp/) : `,rit`
  - [RExtractMethod](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-extract-method/) : `,rem`
  - [RRenameLocalVariable](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-rename-local-variable/) : `,rrlv`
  - [RRenameInstanceVariable](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-rename-instance-variable/) : `,rriv`

### HTML

#### [vim-haml](https://github.com/tpope/vim-haml)

Vim runtime files for Haml, Sass, and SCSS.

#### [mustache.vim](https://github.com/juvenn/mustache.vim)

Vim syntax file for mustache and handlebars(?)

### CSS

### JS

#### [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)

#### [jacinto.vim](https://github.com/alfredodeza/jacinto.vim)

Format and validate JSON files.

    :Jacinto validate

or

    :Jacinto syntax

### Clojure

#### [vimclojure](https://github.com/zaiste/VimClojure)

### Haskell

[vim-syntax-haskell-cabal](https://github.com/Twinside/vim-syntax-haskell-cabal)

Syntax file for Haskell's cabal syntax file

#### [haskellmode-vim](https://github.com/lukerandall/haskellmode-vim)

An unpacked copy of the haskellmode vimball. Ping me if it needs updating.

####

### Color 

#### [molokai](https://github.com/tomasr/molokai)

Molokai color scheme for Vim. 

####
[vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

precision colorscheme for the vim text editor

#### [badwolf](https://github.com/sjl/badwolf)

A Vim color scheme.

### Misc

#### [vim-pastie](https://github.com/tpope/vim-pastie)

pastie.vim: interface for pastie.org 

### Not active

#### [neocomplcache](https://github.com/Shougo/neocomplcache.git)

Ultimate auto-completion system for Vim.

*Disactivated*

## Call for Help

If you have ideas on how to make this Vim configration framework better, don’t hesitate to fork and send pull requests. Thanks!

### Contributors

 * [sharnik](https://github.com/sharnik)

### Inspired by 

 * [dotvim](https://github.com/astrails/dotvim)
 * [Steve Losh's dotfiles](https://github.com/sjl/dotfiles)
 * [skwp's dotfiles](https://github.com/skwp/dotfiles)

### Cooked by [Zaiste!](http://zaiste.net)
