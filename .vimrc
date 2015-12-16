" =================== Vundle ========================
" Clone vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
Plugin 'mxw/vim-jsx'
Plugin 'jsx/jsx.vim'
Plugin 'othree/html5.vim'
Plugin 'othree/yajs.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()                   " Finish Vundle initialization

" ================ Vim settings =====================
syntax on                           " use syntax highlighting
filetype on
filetype plugin on
filetype plugin indent on
set nocompatible                    " be iMproved, required
set t_Co=256			            " use 256 colors
set number                          " line numbers
set background=dark		            " use dark background
colorscheme solarized

" ============== Plugin settings ====================
let g:ctrlp_map='<c-p>'           " Change default mapping for ctrlp
let g:ctrlp_cmd='CtrlP'           " Change default command for ctrlp
let g:jsx_ext_required=0          " Allow JSX in normal JS files
let g:jsx_pragma_required = 0
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'

" ================ Indentation ======================
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smartindent
set autoindent
set nofoldenable
