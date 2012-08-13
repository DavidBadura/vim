set nocompatible               " be iMproved
filetype off                   " required!
set nopaste

let b:phpgetset_getterTemplate =
            \ "\n" .
            \ "    public function %funcname%()\n" .
            \ "    {\n" .
            \ "        return $this->%varname%;\n" .
            \ "    }"
let b:phpgetset_setterTemplate =
            \ "\n" .
            \ "    public function %funcname%($%varname%)\n" .
            \ "    {\n" .
            \ "        $this->%varname% = $%varname%;\n" .
            \ "    }"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" include bundles here
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'docteurklein/php-getter-setter.vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
filetype plugin indent on     " required!

let mapleader = ","
let maplocalleader = ","


" Use filetype plugins, e.g. for PHP
filetype plugin on
filetype indent on

" Create directory on save if it does not exist
" http://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif
augroup END

" %% maps to currenty directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Set colors
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
"colorscheme my_tcsoft
colorscheme jellybeans
syntax enable

set bg=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set hlsearch

set encoding=utf-8
" display filename
set modeline
set ls=2

" file autocomplete
set wildmenu
set wildmode=list:longest
set wildignore+=app/main/cache/**,app/cache/**,vendor/**/tests/**


nnoremap <leader>f :CtrlP<CR>
let g:ctrlp_working_path_mode = ''

