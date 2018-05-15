"======================================== Plugins ==============================================
filetype off                                                    " Disable file type detection
set rtp+=~/.vim/bundle/Vundle.vim                               " Set the runtime path to include Vundle
call vundle#begin()                                             " Initialize vundle
Plugin 'VundleVim/Vundle.vim'                                   " Let Vundle manage Vundle
Plugin 'tpope/vim-surround'                                     " Modify surrounding quotes, parens, brackets ...
Plugin 'gregsexton/MatchTag'                                    " Highlight matching HTML tag
Plugin 'tpope/vim-fugitive'                                     " Git wrapper. Includes :Gdiff, :Gstatus, :Gblame ...
Plugin 'pangloss/vim-javascript'                                " JS syntax highlighting and indenting
Plugin 'othree/html5.vim'                                       " HTML syntax highlighting and indenting
Plugin 'tpope/vim-commentary'                                   " Comment out text in visual mode with 'gc'
Plugin 'tpope/vim-sleuth'                                       " Set shiftwidth and expandtab automatically
Plugin 'editorconfig/editorconfig-vim'

Plugin 'mxw/vim-jsx'                                            " JSX syntax highlighting and indenting
let g:jsx_ext_required=0                                        " Allow jsx in .js files (mocha tests use .js)

Plugin 'scrooloose/nerdtree'                                    " Show directory tree
map <C-n> :NERDTreeToggle<CR>                                   " Ctrl+n - Toggle NERDTree
map <C-f> :NERDTreeFind<CR>                                     " Ctrl+f - Go to open file in NERDTree

Plugin 'ctrlpvim/ctrlp.vim'                                     " Fuzzy file name search
let g:ctrlp_map='<c-p>'                                         " Change default mapping for ctrlp
let g:ctrlp_cmd='CtrlP'                                         " Change default command for ctrlp
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'         " Ignore node_modules et al. when fuzzy searching
let g:ctrlp_max_files = 20000                                   " Max number of files for Ctrl-P

Plugin 'scrooloose/syntastic'                                   " Syntax checking
let g:syntastic_python_pep8_exec = '~/.local/bin/pep8'
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 " Don't auto open/close location list
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode="passive"
nnoremap <C-l> :SyntasticCheck<CR>

call vundle#end()
filetype on

"======================================== Settings ===========================================
syntax on                                                       " Use syntax highlighting
filetype plugin indent on                                       " Load plugins and indent files for current file
set t_Co=256                                                    " Use 256 colors
let mapleader = ","                                             " Press comma to activate commands
set list                                                        " Dispay whitespace chars
set listchars=tab:>-,trail:.
nmap <leader>l :set list!<CR>
set autoindent                                                  " Copy indent from current line when starting a new line
set smartindent                                                 " Context aware indent when starting a new line
set nowrap                                                      " Do not line break long lines
set autoread                                                    " Detect external file changes
set backupcopy=yes
set hidden                                                      " Hide buffers instead of closing them
nnoremap <C-b> :bnext<CR>                                       " Ctrl+b - Go to the next buffer
nnoremap <C-S-b> :bprevious<CR>                                 " Ctrl+Shift+b - Go to the previous buffer
vmap <C-c> :w !pbcopy<CR><CR>
