set nocompatible                    " be iMproved, required
filetype off                        " required
set t_Co=256			    " use 256 colors
syntax on			    " use syntax highlighting
set background=dark		    " use dark background
set number

" Clone vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle

call vundle#begin()                 " initialize

Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'kien/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-surround'
Plugin 'gregsexton/MatchTag'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()                   "Finish Vundle initialization

let g:ctrlp_map = '<c-p>'           " Change default mapping for ctrlp
let g:ctrlp_cmd = 'CtrlP'           " Change default command for ctrlp

" ================ Indentation ======================
filetype plugin indent on
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smartindent
set autoindent
set nofoldenable
