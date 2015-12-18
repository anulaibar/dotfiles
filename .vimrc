"==================== Plugins ================================================
" Clone vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off                                            " Disable file type detection
set rtp+=~/.vim/bundle/Vundle.vim                       " Set the runtime path to include Vundle
call vundle#begin()                                     " Initialize vundle
Plugin 'VundleVim/Vundle.vim'                           " Let Vundle manage Vundle
Plugin 'ctrlpvim/ctrlp.vim'                             " Fuzzy file name search
Plugin 'tpope/vim-surround'                             " Modify surrounding quotes, parens, brackets ...
Plugin 'gregsexton/MatchTag'                            " Highlight matching HTML tag
Plugin 'Raimondi/delimitMate'                           " Automatic closing of quotes, parenthesis, brackets ...
Plugin 'tpope/vim-fugitive'                             " Git wrapper. Includes :Gdiff, :Gstatus, :Gblame ...
Plugin 'airblade/vim-gitgutter'                         " Shows signs for added, modified, and removed lines
Plugin 'pangloss/vim-javascript'                        " JS syntax highlighting and indenting
Plugin 'othree/html5.vim'                               " HTML syntax highlighting and indenting
Plugin 'mxw/vim-jsx'                                    " JSX syntax highlighting and indenting
Plugin 'altercation/vim-colors-solarized'               " Color scheme
call vundle#end()
filetype on

"==================== Plugin settings ========================================
let g:ctrlp_map='<c-p>'                                 " Change default mapping for ctrlp
let g:ctrlp_cmd='CtrlP'                                 " Change default command for ctrlp
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git' " Ignore node_modules et al. when fuzzy searching
let g:jsx_ext_required=0                                " Allow jsx in .js files (mocha tests use .js)

"==================== Vim settings ===========================================
syntax on                                               " Use syntax highlighting
filetype plugin indent on                               " Load plugins and indent files for current file
set t_Co=256                                            " Use 256 colors
set number                                              " Show line numbers
set background=dark                                     " Use dark background
colorscheme solarized                                   " Use the 'solarized' color scheme
let mapleader = " "                                     " Press space to activate commands
set list                                                " Dispay whitespace chars
set listchars=tab:>-,trail:·                            " Display only tabs and spaces
set shiftwidth=4                                        " Use four spaces for each step of (auto)indent
set softtabstop=4
set tabstop=4
set smarttab
set expandtab
set autoindent                                          " Copy indent from current line when starting a new line
set smartindent                                         " Context aware indent when starting a new line
