#!/bin/bash

# Remove existing dot files
if [[ -f ~/.profile ]]; then
    rm ~/.profile
fi
if [[ -f ~/.bash_profile ]]; then
    rm ~/.bash_profile
fi
if [[ -f ~/.bashrc ]]; then
    rm ~/.bashrc
fi
if [[ -f ~/.vimrc ]]; then
    rm ~/.vimrc
fi

# Symlink new dot files
ln -s ~/utils/.profile ~/.profile
ln -s ~/utils/.bash_profile ~/.bash_profile
ln -s ~/utils/.bashrc ~/.bashrc
ln -s ~/utils/.vimrc ~/.vimrc
. ~/.bash_profile

# Setup git and npm proxies
git config --global http.proxy devproxy.blocket.bin:3128
git config --global https.proxy devproxy.blocket.bin:3128
npm config set proxy devproxy.blocket.bin:3128
npm config set https-proxy devproxy.blocket.bin:3128

# Install vim plugins
if [[ ! -d ~/.vim/bundle ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
