#!/bin/bash

cp ~/utils/.profile ~/.profile
. ~/.profile

cp ~/utils/.vimrc ~/.vimrc

if [[ ! -d ~/.vim/bundle ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

npm config set proxy devproxy:3128
npm config set https-proxy devproxy:3128

git config --global http.proxy devproxy:3128
git config --global https.proxy devproxy:3128

