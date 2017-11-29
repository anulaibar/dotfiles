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

# Symlink new dot files
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.npmrc ~/.npmrc
ln -s ~/dotfiles/.ssh/config ~/.ssh/config

# Make git, npm and curl requests via dev proxy
export HTTP_PROXY=http://devproxy.blocket.bin:3128
export HTTPS_PROXY=http://devproxy.blocket.bin:3128

# Install vim plugins
if [ ! -d ~/.vim/bundle ]; then
	 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# Install git-completion
if [ ! -f ~/.git-completion.bash ]; then
	curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

. ~/.bash_profile

echo -e "\033[34m\nWell done! Now, go have a 🍭  day!\n"
