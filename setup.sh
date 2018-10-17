#!/bin/bash

# Remove existing dot files (regular files or symlinks)
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
if [ -f ~/.gitignore ] || [ -h ~/.gitignore ]; then
	 rm ~/.gitignore
fi
if [ -f ~/.npmrc ] || [ -h ~/.npmrc ]; then
	 rm ~/.npmrc
fi
if [ -f ~/.ssh/config ] || [ -h ~/.ssh/config ]; then
	 rm ~/.ssh/config
fi
if [ -f ~/.git-aliases ] || [ -h ~/.git-aliases ]; then
	 rm ~/.git-aliases
fi

# Symlink new dot files
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitignore ~/.gitignore
ln -s $(pwd)/.npmrc ~/.npmrc
ln -s $(pwd)/.ssh/config ~/.ssh/config
ln -s $(pwd)/.git-aliases ~/.git-aliases

# Install vim plugins
if [ ! -d ~/.vim/bundle ]; then
	 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# Install git-completion
if [ ! -f ~/.git-completion.bash ]; then
	curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

blue="\033[34m"
magenta="\033[35m"

echo -e "${blue}Now just load the profile and you're good to go! ✌️"
echo -e "${magenta}. ~/.bash_profile"
