set nocompatible " Disable vi-compatibility

" Display support
set t_Co=256 
colorscheme gruvbox
" colorscheme jellybeans
" colorscheme molokai 
" colorscheme OceanicNext
" colorscheme OceanicNextLight
" colorscheme railscasts
" colorscheme solarized8_flat
" let g:molokai_original = 1
let g:airline_theme='gruvbox'
let g:oceanic_next_terminal_bold = 1
set bg=dark " Setting dark mode 

" Pathogen support 
execute pathogen#infect()
syntax on
filetype plugin indent on

" Vundle support
" filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()

" Swap file directory 
set swapfile
set dir=~/.vim/tmp/

set cursorline
" set scrolloff=30
set showmatch     " set show matching parenthesis

" Indentation 
set cindent
set shiftwidth=4    
set autoindent    " New lines inherit the indentation of previous lines
set tabstop=4 	  " Indent using four spaces
set smarttab 	  " Insert “tabstop” number of spaces when the “tab” key is pressed
set expandtab	  " Convert tabs to spaces

" Search 
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Mouse 
set mouse=a

set number        " always show line numbers
set novisualbell    " don't beep
set noerrorbells  " don't beep
set comments=sl:/*,mb:\ *,elx:\ */
set noswapfile

" Enable folding
set foldmethod=indent
set foldlevel=99

" Key bindings
    " 1. In-file traversal 
noremap h 10h
noremap l 10l
noremap j 10j
noremap k 10k
noremap x 5k
noremap c 5j
    " 2. file traversl
noremap <C-l> :bn<CR> 
noremap <C-k> :bp<CR>

noremap <F1> :split<CR>
noremap <F2> :vsplit<CR>
noremap <F9> :TlistOpen<CR>
noremap <F8> :MRU<CR>
noremap <F5> :set mouse=a<CR>
noremap <F6> :set mouse=i<CR>
noremap . <C-w><C-w>
noremap . <C-w><C-h>


" Plugin spesific 
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 50
