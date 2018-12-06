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
if [ -f ~/.editorconfig ] || [ -h ~/.editorconfig ]; then
	rm ~/.editorconfig
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
ln -s $(pwd)/.editorconfig ~/.editorconfig

# Install vim plugins
if [ ! -d ~/.vim/pack/git-plugins/start/ale ]; then
	git clone https://github.com/w0rp/ale.git ~/.vim/pack/git-plugins/start/ale
fi
if [ ! -d ~/.vim/pack/git-plugins/start/ctrlp.vim ]; then
	git clone https://github.com/kien/ctrlp.vim.git ~/.vim/pack/git-plugins/start/ctrlp.vim
fi
if [ ! -d ~/.vim/pack/git-plugins/start/nerdtree ]; then
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/pack/git-plugins/start/nerdtree
fi
if [ ! -d ~/.vim/pack/git-plugins/start/vim-commentary ]; then
	git clone https://github.com/tpope/vim-commentary.git ~/.vim/pack/git-plugins/start/vim-commentary
fi
if [ ! -d ~/.vim/pack/git-plugins/start/vim-fugitive ]; then
	git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/git-plugins/start/vim-fugitive
fi
if [ ! -d ~/.vim/pack/git-plugins/start/vim-sleuth ]; then
	git clone https://github.com/tpope/vim-sleuth.git ~/.vim/pack/git-plugins/start/vim-sleuth
fi
if [ ! -d ~/.vim/pack/git-plugins/start/vim-javascript ]; then
	git clone https://github.com/pangloss/vim-javascript ~/.vim/pack/git-plugins/start/vim-javascript
fi
if [ ! -d ~/.vim/pack/git-plugins/start/html5.vim ]; then
	git clone https://github.com/othree/html5.vim ~/.vim/pack/git-plugins/start/html5.vim
fi
if [ ! -d ~/.vim/pack/git-plugins/start/vim-jsx ]; then
	git clone https://github.com/mxw/vim-jsx ~/.vim/pack/git-plugins/start/vim-jsx
fi

# Install git-completion
if [ ! -f ~/.git-completion.bash ]; then
	curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

blue="\033[34m"
magenta="\033[35m"

echo -e "${blue}Now just load the profile and you're good to go! ✌️"
echo -e "${magenta}. ~/.bash_profile"
