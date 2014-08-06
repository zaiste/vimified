# vimified

> Frankly, my dear, you're gonna be vimified one day!

Kick-ass Vim configuration framework, built on top of *awesome* [Vundle](https://github.com/gmarik/vundle).

![ctrlp view](http://f.cl.ly/items/3a0X3F3x3r0K1n1u1Y2r/vimified.png)

## How to install

### For lazy people

Copy/Paste this line in your CLI:

    curl -L https://raw.github.com/zaiste/vimified/master/install.sh | sh

### For those who actually care about what is done

Grab the project:

    cd
    git clone git://github.com/zaiste/vimified.git
    ln -sfn vimified ~/.vim
    ln -sfn vimified/vimrc ~/.vimrc
    cd vimified

Create required directories:

    mkdir bundle
    mkdir -p tmp/backup tmp/swap tmp/undo

Set up Vundle:

    git clone https://github.com/gmarik/vundle.git bundle/vundle

Set up your `local.vimrc` file with packages you want:

    echo "let g:vimified_packages = ['general', 'coding', 'clojure', 'color']" > local.vimrc

Install plugins:

    vim +BundleInstall +qall

Enjoy!

## Configuration

You can overwrite default configuration and key bindings by using one of following files:

`~/.vim/before.vimrc` will be loaded before everything else.

`~/.vim/extra.vimrc` will be loaded after Vundle is initialized and before
Vimified settings take place. The idea was so people could add Bundle lines
without having to worry about conflicts in vimrc when pulling. [Read
More](https://github.com/zaiste/vimified/pull/27).

`~/.vim/after.vimrc` will be loaded after all configuration options are set. This is the best place to change vimified default behaviour (key bindings) and/or color scheme.

## Packages

Inside your local configuration file `$HOME/.vim/local.vimrc` set `g:vimified_packages` variable with packages you want to use.

For example, if you are only interested in Ruby/Rails related stuff, put something like the following line inside `$HOME/.vim/local.vimrc`:

    let g:vimified_packages = ['general', 'coding', 'ruby', 'color']

Available packages:

 * general
 * fancy
 * indent
 * os
 * coding
 * ruby
 * html
 * css
 * js
 * clojure
 * haskell
 * elixir
 * color

### General

#### [EditorConfig](https://github.com/editorconfig/editorconfig-vim)

[EditorConfig](http://editorconfig.org) plugin for Vim.

#### [ag.vim](https://github.com/rking/ag.vim)

Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module
/ CLI script 'ack'

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

#### [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack)

lightweight implementation of emacs' kill ring for vim

#### [vim-eunuch](https://github.com/tpope/vim-eunuch)

eunuch.vim: helpers for UNIX

#### [nerdtree](https://github.com/scrooloose/nerdtree)

A tree explorer plugin for vim.

**Command:** `ctrl-u`

#### [vim-textobj-user](https://github.com/kana/vim-textobj-user)

Vim plugin: Support for user-defined text objects

#### [YankRink.vim](https://github.com/vim-scripts/YankRing.vim)

Maintains a history of previous yanks, changes and deletes.

#### [vim-ident-object](https://github.com/michaeljsmith/vim-indent-object)

Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc.

#### [vim-matchit](https://github.com/Spaceghost/vim-matchit)

The matchit.vim script allows you to configure % to match more than just single characters.

#### [ctrlp](https://github.com/kien/ctrlp.vim)

Fuzzy file, buffer, mru and tag finder.

**Command:** `ctrl-p`

![ctrlp view](http://f.cl.ly/items/393i0b0N2C1H1e0Q2K3k/ctrlp.png)

#### [vim-scripts/scratch.vim](https://github.com/vim-scripts/scratch.vim)

Plugin to create and use a scratch Vim buffer.

#### [easybuffer.vim](https://github.com/troydm/easybuffer.vim)

easybuffer.vim - vim plugin to quickly switch between buffers

#### [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

True Sublime Text style multiple selections for Vim

### Fancy

#### [vim-airline](https://github.com/bling/vim-airline)

lean & mean statusline for vim that's light as air

### Indent

#### [indentLine](https://github.com/Yggdroot/indentLine)

A vim plugin to display the indention levels with thin vertical lines (or: any char you like).

### OS

#### [tmux.vim](https://github.com/zaiste/tmux.vim)

Tmux vim syntax.

#### [vimux](https://github.com/benmills/vimux)

vim plugin to interact with tmux.

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

Vim/Ruby Configuration Files.

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

#### [vim-markdown](https://github.com/tpope/vim-markdown)

Vim Markdown runtime files.

#### [vim-jade](https://github.com/digitaltoad/vim-jade)

Vim Jade template engine syntax highlighting and indention.

#### [vim-slim](https://github.com/slim-template/vim-slim)

A clone of the slim vim plugin from stonean.

### CSS

#### [vim-stylus](https://github.com/wavded/vim-stylus)

Syntax Highlighting for Stylus.

### JS

#### [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)

CoffeeScript support for vim.

#### [jacinto.vim](https://github.com/alfredodeza/jacinto.vim)

Format and validate JSON files.

    :Jacinto validate

or

    :Jacinto syntax

### Clojure

#### [vimclojure](https://github.com/zaiste/VimClojure)

A filetype, syntax and indent plugin for Clojure.

### Haskell

#### [vim-syntax-haskell-cabal](https://github.com/Twinside/vim-syntax-haskell-cabal)

Syntax file for Haskell's cabal syntax file

#### [haskellmode-vim](https://github.com/lukerandall/haskellmode-vim)

An unpacked copy of the haskellmode vimball. Ping me if it needs updating.

### Elixir

#### [vim-elixir](https://github.com/elixir-lang/vim-elixir)

Vim configuration files for Elixir.

### Python

#### [python-mode](https://github.com/klen/python-mode)

Python-mode is a vim plugin that allows you to use the pylint, rope, pydoc,

pyflakes, pep8, mccabe libraries in vim to provide features like python code

looking for bugs, refactoring and some other useful things.

### Go lang
Support for go is now available:

#### [vim-go](https://github.com/fatih/vim-go)
Full featured Go (golang) support for Vim. vim-go installs automatically all
necessary binaries for providing seamless Vim integration . It comes with
pre-defined sensible settings (like auto gofmt on save), has autocomplete,
snippet support, improved syntax highlighting, go toolchain commands, etc...
It's highly customizable and has settings for disabling/enabling features
easily. Do not use it with other Go plugins.

### Clang

#### [vim-clang](https://github.com/LucHermitte/vim-clang)

Module to Interact with libclang (and clang_indexer DB) from Vim.

#### [vim-scripts/c.vim](https://github.com/vim-scripts/c.vim)

   Statement oriented editing of  C / C++ programs

   Speed up writing new code considerably.

   Write code und comments with a professional appearance from the beginning.

   Use code snippets

####

### Color

#### [badwolf](https://github.com/sjl/badwolf)

A Vim color scheme.

#### [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

precision colorscheme for the vim text editor

#### [molokai](https://github.com/tomasr/molokai)

Molokai color scheme for Vim.

#### [Atom](https://github.com/zaiste/Atom)

Vim color scheme designed to be very readable in both light and dark
environments.

#### [vim-hybrid](https://github.com/w0ng/vim-hybrid)

A dark colourscheme combining Jellybeans, Solarized and Tomorrow Night.

## Call for Help

If you have ideas on how to make this Vim configuration framework better, don’t hesitate to fork and send pull requests. Thanks!

### Major Contributors

 * [Adrien Giboire](https://github.com/AdrienGiboire)
 * [sharnik](https://github.com/sharnik)

### Inspired by

 * [dotvim](https://github.com/astrails/dotvim)
 * [Steve Losh's dotfiles](https://github.com/sjl/dotfiles)
 * [skwp's dotfiles](https://github.com/skwp/dotfiles)

### Cooked by [Zaiste!](http://zaiste.net)
