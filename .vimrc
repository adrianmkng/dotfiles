set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme catppuccin_mocha

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()            " required
filetype plugin indent on    " required

set number          " Show line nubmers
set laststatus=2    " Show the status line all the time
set tabstop=2       " Global tab width.
set shiftwidth=2    " And again, related.
set expandtab       " Use spaces instead of tabs
set lazyredraw      " Speedy up the terminal
set modeline
set termguicolors

" ===================
" NerdTree
" ===================
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ===================
" Airline
" ===================

let g:airline#extensions#tabline#enabled = 1

