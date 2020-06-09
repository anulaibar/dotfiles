"======================================== Plugins ==============================================
" Source Plug plugins
so ~/.vim/plugins.vim

let mapleader = " "                                             " Press comma to activate commands
nnoremap <Leader><space> :noh<cr>
set encoding=UTF-8
syntax enable                                                   " Use syntax highlighting

if (has("termguicolors"))
 set termguicolors
endif
syntax on
g:onedark_terminal_italics
colorscheme onedark

" w0rp/ale - Asynchronous Lint Engine
let g:ale_python_black_executable = 'pipenv'
let g:ale_python_flake8_executable = 'pipenv'
let g:ale_fixers = {'javascript': ['prettier','eslint'], 'json': ['prettier','eslint'],'python': ['black'], 'html': ['prettier']}
let g:ale_linters = {'javascript': ['eslint'], 'python': ['flake8']}
let g:ale_fix_on_save = 1
let g:ale_python_auto_pipenv = 1

" scrooloose/nerdtree - Show directory tree
map <C-t> :NERDTreeToggle<CR>                                        " Ctrl+n - Toggle NERDTree
map <C-f> :NERDTreeFind<CR>                                     " Ctrl+f - Go to open file in NERDTree

" junegunn/fzf - Fuzzy search
nnoremap <c-p> :GFiles<cr>

" mxw/vim-jsx - JSX syntax highlighting and indenting
let g:jsx_ext_required=0                                        " Allow jsx in .js files

"======================================== Settings ===========================================
filetype plugin indent on                                       " Load plugins and indent files for current file
set t_Co=256                                                    " Use 256 colors
set list                                                        " Dispay whitespace chars
set listchars=tab:>-,trail:.
nmap <leader>l :set list!<CR>
nmap <CR> o<Esc>                                                " Insert newline w/o entering insert mode
set autoindent                                                  " Copy indent from current line when starting a new line
set smartindent                                                 " Context aware indent when starting a new line
set autoread                                                    " Detect external file changes
set backupcopy=auto
set hidden                                                      " Hide buffers instead of closing them
set incsearch                                                   " Highlight matches while searching
set number
set backspace=indent,eol,start
nnoremap <C-b> :bnext<CR>                                       " Ctrl+b - Go to the next buffer
nnoremap <C-S-b> :bprevious<CR>                                 " Ctrl+Shift+b - Go to the previous buffer
vmap <C-c> :w !pbcopy<CR><CR>
nmap <C-N><C-N> :set invnumber<CR>                              " Ctrl+n+n - Toggle line numbers
set clipboard=unnamed
if (has("termguicolors"))
  set termguicolors
endif

" Load all of the helptags now, after plugins have been loaded. All messages and errors will be ignored.
silent! helptags ALL


" Trigger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
