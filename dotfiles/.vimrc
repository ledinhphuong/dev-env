"
" Copyright (c) 2017 Le Dinh Phuong

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=1000
set autoread " reloads changes outside vim
set backspace=indent,eol,start
set ruler
set number " shows line number
set cursorline " highlight current line
set showmode
set showcmd
set wildmenu " visual autocomplete for command menu
set hlsearch " highlight search matches
set visualbell " no sounds
set scrolloff=4 " lines margin when scrolling

" Enable filetype plugins
filetype plugin on
filetype indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color and font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
let g:onedark_termcolors=256
colorscheme onedark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab and indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set smarttab

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set nowrap
set linebreak

set mouse=a


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bind \ (backward slash) to grep shortcut
" Needs to install the_silver_searcher first
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap \ :Ag<SPACE>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Declare Vim by plugins
" To installs all plugins: Go vim mode and type :PlugInstall <enter>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Install FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Install NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Install YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap ` :Files<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD Tree configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap ~ :NERDTreeToggle<CR>
execute pathogen#infect()
call pathogen#helptags()

" Open NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
