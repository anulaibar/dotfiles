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
if [[ -f ~/.gitconfig ]]; then
    rm ~/.gitconfig
fi
if [[ -f ~/.npmrc ]]; then
    rm ~/.npmrc
fi

# Symlink new dot files
ln -s ~/utils/.profile ~/.profile
ln -s ~/utils/.bash_profile ~/.bash_profile
ln -s ~/utils/.bashrc ~/.bashrc
ln -s ~/utils/.vimrc ~/.vimrc
ln -s ~/utils/.gitconfig ~/.gitconfig
ln -s ~/utils/.npmrc ~/.npmrc

# Install vim plugins
if [[ ! -d ~/.vim/bundle ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

echo -e "\e[34mGreat! Now just load .bash_profile to get all the glamour:"
echo -e "\e[35m. ~/.bash_profile"
