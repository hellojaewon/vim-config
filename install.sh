#!/bin/sh

if [ -e ~/.vimrc -o -e ~/.vim ]; then
    echo 'WARN: Either ~/.vimrc or ~/.vim already exists.'
    exit
fi

echo 'Making symbolic link...'
ln -sfv $(cd -P -- "$(dirname -- "$0")" && pwd -P)/vimrc ~/.vimrc

echo 'Downloading vundle...'
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "installing vundle..."
vi -c :BundleInstall -c :qa
