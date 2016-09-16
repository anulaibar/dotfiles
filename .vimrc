"==================== Plugins ================================================
filetype off                                            " Disable file type detection
set rtp+=~/.vim/bundle/Vundle.vim                       " Set the runtime path to include Vundle
call vundle#begin()                                     " Initialize vundle
Plugin 'VundleVim/Vundle.vim'                           " Let Vundle manage Vundle
Plugin 'ctrlpvim/ctrlp.vim'                             " Fuzzy file name search
Plugin 'tpope/vim-surround'                             " Modify surrounding quotes, parens, brackets ...
Plugin 'gregsexton/MatchTag'                            " Highlight matching HTML tag
Plugin 'tpope/vim-fugitive'                             " Git wrapper. Includes :Gdiff, :Gstatus, :Gblame ...
Plugin 'airblade/vim-gitgutter'                         " Shows signs for added, modified, and removed lines
Plugin 'pangloss/vim-javascript'                        " JS syntax highlighting and indenting
Plugin 'othree/html5.vim'                               " HTML syntax highlighting and indenting
Plugin 'mxw/vim-jsx'                                    " JSX syntax highlighting and indenting
Plugin 'altercation/vim-colors-solarized'               " Color scheme
Plugin 'tpope/vim-commentary'                           " Comment out text in visual mode with 'gc'
Plugin 'scrooloose/nerdtree'                            " Show directory tree to the right
Plugin 'scrooloose/syntastic'                           " Syntax checking
Plugin 'tpope/vim-sleuth'                               " Set shiftwidth and expandtab automatically
call vundle#end()
filetype on

"==================== Plugin settings ========================================
let g:ctrlp_map='<c-p>'                                 " Change default mapping for ctrlp
let g:ctrlp_cmd='CtrlP'                                 " Change default command for ctrlp
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git' " Ignore node_modules et al. when fuzzy searching
let g:jsx_ext_required=0                                " Allow jsx in .js files (mocha tests use .js)
map <C-n> :NERDTreeToggle<CR>                           " Ctrl+n - Toggle NERDTree
map <C-f> :NERDTreeFind<CR>                             " Ctrl+f - Go to open file in NERDTree
let g:syntastic_check_on_open = 1
let g:syntastic_python_pep8_exec = '~/.local/bin/pep8'
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']

"==================== Vim settings ===========================================
syntax on                                               " Use syntax highlighting
filetype plugin indent on                               " Load plugins and indent files for current file
set t_Co=256                                            " Use 256 colors
set number                                              " Show line numbers
set background=light                                    " Background color
let mapleader = ","                                     " Press comma to activate commands
set list                                                " Dispay whitespace chars
set listchars=tab:>-,trail:·                            " Display only tabs and spaces
set autoindent                                          " Copy indent from current line when starting a new line
set smartindent                                         " Context aware indent when starting a new line
set nowrap                                              " Do not line break long lines
nnoremap <C-b> :bnext<CR>                               " Ctrl+b - Go to the next buffer
nnoremap <C-S-b> :bprevious<CR>                         " Ctrl+Shift+b - Go to the previous buffer
