"======================================== Plugins ==============================================
" Plugins are installed into ~/.vim/pack/git-plugins/start/

" othree/html5.vim - HTML syntax highlighting and indenting
" tpope/vim-commentary - Comment stuff out
" tpope/vim-fugitive - Git wrapper. Includes :Gdiff, :Gstatus, :Gblame ...
" tpope/vim-sleuth - Set shiftwidth and expandtab automatically

" w0rp/ale - Asynchronous Lint Engine
let g:ale_completion_enabled = 1
let g:ale_fixers = {'javascript': ['prettier-standard']}
let g:ale_linters = {'javascript': ['prettier-standard']}
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

" scrooloose/nerdtree - Show directory tree
map <C-n> :NERDTreeToggle<CR>                                   " Ctrl+n - Toggle NERDTree
map <C-f> :NERDTreeFind<CR>                                     " Ctrl+f - Go to open file in NERDTree

" kien/ctrlp.vim - Fuzzy file name search
let g:ctrlp_map='<c-p>'                                         " Change default mapping for ctrlp
let g:ctrlp_cmd='CtrlP'                                         " Change default command for ctrlp
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git'         " Ignore node_modules et al. when fuzzy searching
let g:ctrlp_max_files = 20000                                   " Max number of files for Ctrl-P

" mxw/vim-jsx - JSX syntax highlighting and indenting
let g:jsx_ext_required=0                                        " Allow jsx in .js files

"======================================== Settings ===========================================
syntax on                                                       " Use syntax highlighting
filetype plugin indent on                                       " Load plugins and indent files for current file
set t_Co=256                                                    " Use 256 colors
let mapleader = ","                                             " Press comma to activate commands
set list                                                        " Dispay whitespace chars
set listchars=tab:>-,trail:.
nmap <leader>l :set list!<CR>
nmap <CR> o<Esc>                                                " Insert newline w/o entering insert mode
set autoindent                                                  " Copy indent from current line when starting a new line
set smartindent                                                 " Context aware indent when starting a new line
set autoread                                                    " Detect external file changes
set backupcopy=yes
set hidden                                                      " Hide buffers instead of closing them
set incsearch                                                   " Highlight matches while searching
set ignorecase                                                  " Make searches case insensitive
set number
set backspace=indent,eol,start
nnoremap <C-b> :bnext<CR>                                       " Ctrl+b - Go to the next buffer
nnoremap <C-S-b> :bprevious<CR>                                 " Ctrl+Shift+b - Go to the previous buffer
vmap <C-c> :w !pbcopy<CR><CR>
nmap <C-N><C-N> :set invnumber<CR>                              " Ctrl+n+n - Toggle line numbers

" Load all of the helptags now, after plugins have been loaded. All messages and errors will be ignored.
silent! helptags ALL
