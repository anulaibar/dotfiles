#!/bin/zsh

# Remove existing dot files (regular files or symlinks)
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
	rm ~/.zshrc
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

if [ -f ~/.vim/plugins.vim ] || [ -h ~/.vim/plugins.vim ]; then
	rm ~/.vim/plugins.vim
fi

# Symlink new dot files
ln -s $(pwd)/.zsh_profile ~/.zsh_profile
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitignore ~/.gitignore
ln -s $(pwd)/.npmrc ~/.npmrc
ln -s $(pwd)/.ssh/config ~/.ssh/config
ln -s $(pwd)/.git-aliases ~/.git-aliases
ln -s $(pwd)/.editorconfig ~/.editorconfig
ln -s $(pwd)/.vim/plugins.vim ~/.vim/plugins.vim

# Install vim plugins
vim +PlugClean +qall
vim +PlugInstall +qall

# Install git-completion
if [ ! -f ~/.git-completion.zsh ]; then
	curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o ~/.git-completion.zsh
fi

blue="\033[34m"
magenta="\033[35m"

echo -e "${blue}Now just load .zshrc and you're good to go! ✌️"
echo -e "${magenta}. ~/.zshrc"
