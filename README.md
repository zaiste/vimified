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
    

Plugins
-------

### IDE

#### [neocomplcache](https://github.com/Shougo/neocomplcache.git)

Ultimate auto-completion system for Vim.

#### [nerdtree](https://github.com/scrooloose/nerdtree)

A tree explorer plugin for vim.

**Command:** `ctrl-u`

#### [nerdcommenter](https://github.com/scrooloose/nerdcommenter)

Vim plugin for intensely orgasmic commenting.

**Command:** `,/`

#### [vim-yankring](https://github.com/chrismetcalf/vim-yankring)

Mirror of yankring.vim 

**Command:** `,y`

#### [syntastic](https://github.com/scrooloose/syntastic)

Syntax checking hacks for vim 

#### [vim-repeat](https://github.com/tpope/vim-repeat)

repeat.vim: enable repeating supported plugin maps with "."

#### [vim-space](https://github.com/spiiph/vim-space)

space.vim - Smart Space key for Vim

#### [splice.vim](https://github.com/sjl/splice.vim)

A Vim plugin for managing three-way merges.


### Tools Integration

#### [ack.vim](http://github.com/mileszs/ack.vim)

Vim plugin for the Perl module / CLI script 'ack'. 

**Command**: `,a` 

#### [hammer](https://github.com/matthias-guenther/hammer.vim)

vim, your markup language of choice, and your browser of choice. 

**Command**: `,p` 

#### [vim-fugitive](https://github.com/tpope/vim-fugitive)

fugitive.vim: a Git wrapper so awesome, it should be illegal 

#### [ctrlp](https://github.com/kien/ctrlp.vim)

Fuzzy file, buffer, mru and tag finder.

**Command:** `ctrl-p`

![ctrlp view](http://f.cl.ly/items/393i0b0N2C1H1e0Q2K3k/ctrlp.png)

#### [tagbar](https://github.com/majutsushi/tagbar)

Vim plugin that displays tags in a window, ordered by class etc. 

**Command:** `,t`

### Language/Framework Support

#### [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)

CoffeeScript support for vim. 

#### [haskellmode-vim](https://github.com/lukerandall/haskellmode-vim)

An unpacked copy of the haskellmode vimball. Ping me if it needs updating.

####
[vim-syntax-haskell-cabal](https://github.com/Twinside/vim-syntax-haskell-cabal)

Syntax file for Haskell's cabal syntax file

#### [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)

Refactoring tool for Ruby in vim!

**Commands**:

  - [RAddParameter](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-add-parameter-2/) : `,rap`
  - [RInlineTemp](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-inline-temp/) : `,rit`
  - [RExtractMethod](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-extract-method/) : `,rem`
  - [RRenameLocalVariable](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-rename-local-variable/) : `,rrlv`
  - [RRenameInstanceVariable](http://justinram.wordpress.com/2010/12/31/vim-ruby-refactoring-rename-instance-variable/) : `,rriv`

#### [vim-rails](https://github.com/tpope/vim-rails)

rails.vim: Ruby on Rails power tools 

#### [vim-haml](https://github.com/tpope/vim-haml)

Vim runtime files for Haml, Sass, and SCSS.

#### [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)

A custom text object for selecting ruby blocks.

#### [vim-endwise](https://github.com/tpope/vim-endwise)

endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc 

### Visual

#### [molokai](https://github.com/tomasr/molokai)

Molokai color scheme for Vim. 

####
[vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

precision colorscheme for the vim text editor

#### [badwolf](https://github.com/sjl/badwolf)

A Vim color scheme.


### Textual Potions

#### [vim-matchit](https://github.com/mirell/vim-matchit)

The matchit.vim script allows you to configure % to match more than just single characters.

#### [vim-align](https://github.com/tsaleh/vim-align)

Clone of the Align.vba file, since I think VBA files are a freaking abomination. 

#### [vim-surround](https://github.com/tpope/vim-surround)

surround.vim: quoting/parenthesizing made simple 

#### [vim-unimpaired](https://github.com/tpope/vim-unimpaired)

unimpaired.vim: pairs of handy bracket mappings 

#### [vim-textobj-user](https://github.com/kana/vim-textobj-user)

Vim plugin: Support for user-defined text objects 

#### [vim-ident-object](https://github.com/michaeljsmith/vim-indent-object)

Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc. 

#### [vim-speeddating](https://github.com/tpope/vim-speeddating)

speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more 

### Integration with external services

#### [vim-pastie](https://github.com/tpope/vim-pastie)

pastie.vim: interface for pastie.org 


## Call for Help

If you have ideas on how to make this Vim configration framework better, don’t hesitate to fork and send pull requests. Thanks!

### Contributors

 * [sharnik](https://github.com/sharnik)

### Inspired by 

 * [dotvim](https://github.com/astrails/dotvim)
 * [Steve Losh's dotfiles](https://github.com/sjl/dotfiles)
 * [skwp's dotfiles](https://github.com/skwp/dotfiles)

### Cooked by [Zaiste!](http://zaiste.net)
