" =================== Vundle ========================
" Clone vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim           " set the runtime path to include Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'               " Let Vundle manage Vundle
Plugin 'ctrlpvim/ctrlp.vim'                 " Fuzzy file name search
Plugin 'tpope/vim-surround'                 " Modify surrounding quotes, parens, brackets ...
Plugin 'gregsexton/MatchTag'                " Highlight matching HTML tag
Plugin 'Raimondi/delimitMate'               " Automatic closing of quotes, parenthesis, brackets ...
Plugin 'tpope/vim-fugitive'                 " Git wrapper. Includes :Gdiff, :Gstatus, :Gblame ...
Plugin 'airblade/vim-gitgutter'             " Shows signs for added, modified, and removed lines
Plugin 'pangloss/vim-javascript'            " JS syntax highlighting and indenting
Plugin 'othree/html5.vim'                   " HTML syntax highlighting and indenting 
Plugin 'mxw/vim-jsx'                        " JSX syntax highlighting and indenting
Plugin 'altercation/vim-colors-solarized'   " Color scheme
call vundle#end()
filetype on

" ================ Vim settings =====================
syntax on                           " use syntax highlighting
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
let g:jsx_ext_required=1          " Allow JSX in normal JS files
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
