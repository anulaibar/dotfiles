#!/bin/bash

# Remove existing dot files (regular files or symlinks)
if [ -f ~/.profile ] || [ -h ~/.profile ]; then
    rm ~/.profile
fi
if [ -f ~/.bash_profile ] || [ -h ~/.bash_profile ]; then
    rm ~/.bash_profile
fi
if [ -f ~/.bashrc ] || [ -h ~/.bashrc ]; then
    rm ~/.bashrc
fi
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    rm ~/.vimrc
fi
if [ -f ~/.gitconfig ] || [ -h ~/.gitconfig ]; then
    rm ~/.gitconfig
fi
if [ -f ~/.npmrc ] || [ -h ~/.npmrc ]; then
    rm ~/.npmrc
fi

# Symlink new dot files
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.npmrc ~/.npmrc

# Install vim plugins
if [[ ! -d ~/.vim/bundle ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

echo -e "\033[34mGreat! Now just load .bash_profile to get all the glamour:"
echo -e "\033[35m. ~/.bash_profile\033[0m"
