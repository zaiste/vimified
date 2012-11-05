#!/usr/env bash

git clone git://github.com/zaiste/vimified.git
ln -sfn vimified ~/.vim
ln -sfn vimified/vimrc ~/.vimrc
cd vimified

mkdir bundle
mkdir -p tmp/backup tmp/swap tmp/undo

git clone https://github.com/gmarik/vundle.git bundle/vundle

echo "let g:vimified_packages = ['general', 'coding', 'clojure', 'color']" > local.vimrc

vim +BundleInstall +qall