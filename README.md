# vimified

> Frankly, my dear, you're gonna be vimified one day!

Simple Vim & Neovim configuration.

![OneHalf Light](https://user-images.githubusercontent.com/200613/90049693-78bcb800-dcd5-11ea-8edd-c329cde82150.png)
![OneHalf Dark](https://user-images.githubusercontent.com/200613/90049699-7b1f1200-dcd5-11ea-990d-19860a44cfda.png)

## How to install

### For lazy people

Copy/Paste this line in your CLI:

    curl -L https://raw.github.com/zaiste/vimified/master/install.sh > install.sh
    sh install.sh

### For those who actually care about what is done

Grab the project:

    cd
    git clone git://github.com/zaiste/vimified.git
    ln -sfn vimified/ ~/.vim
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


### General


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


#### [vim-textobj-user](https://github.com/kana/vim-textobj-user)

Vim plugin: Support for user-defined text objects

#### [YankRink.vim](https://github.com/vim-scripts/YankRing.vim)

Maintains a history of previous yanks, changes and deletes.

#### [vim-ident-object](https://github.com/michaeljsmith/vim-indent-object)

Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc.

#### [vim-matchit](https://github.com/Spaceghost/vim-matchit)

The matchit.vim script allows you to configure % to match more than just single characters.

#### [vim-scripts/scratch.vim](https://github.com/vim-scripts/scratch.vim)

Plugin to create and use a scratch Vim buffer.

#### [easybuffer.vim](https://github.com/troydm/easybuffer.vim)

easybuffer.vim - vim plugin to quickly switch between buffers

#### [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

True Sublime Text style multiple selections for Vim

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

## Call for Help

If you have ideas on how to make this Vim configuration framework better, don’t hesitate to fork and send pull requests. Thanks!

### Major Contributors

 * [Zaiste](https://github.com/zaiste)
 * [Adrien Giboire](https://github.com/AdrienGiboire)
 * [sharnik](https://github.com/sharnik)