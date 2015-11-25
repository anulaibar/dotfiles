set nocompatible                    " be iMproved, required
filetype off                        " required

" Clone vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle
call vundle#begin()                 " initialize

Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'kien/ctrlp.vim'

call vundle#end()                   "Finish Vundle initialization

let g:ctrlp_map = '<c-p>'           " Change default mapping for ctrlp
let g:ctrlp_cmd = 'CtrlP'           " Change default command for ctrlp
