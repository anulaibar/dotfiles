#!/bin/bash

rm ~/.profile && ln -s ~/utils/.profile ~/.profile
rm ~/.bash_profile && ln -s ~/utils/.bash_profile ~/.bash_profile
rm ~/.bashrc && ln -s ~/utils/.bashrc ~/.bashrc
rm ~/.vimrc && ln -s ~/utils/.vimrc ~/.vimrc

git config --global http.proxy devproxy.blocket.bin:3128
git config --global https.proxy devproxy.blocket.bin:3128
npm config set proxy devproxy.blocket.bin:3128
npm config set https-proxy devproxy.blocket.bin:3128

if [[ ! -d ~/.vim/bundle ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
