"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto-Install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimPlug

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'

Plug 'PProvost/vim-ps1'
Plug 'hashivim/vim-terraform'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
let g:terraform_align=1
let g:terraform_fmt_on_save=1

let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spaces & Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
set nowrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Config
set hidden
set title
set number                   " show line number
set relativenumber			 " show line number
set cursorline               " highlight current line
set showmatch                " highlight matching brace
set nobackup
set noswapfile

set t_Co=256
set termguicolors

colorscheme codedark
set guifont=Consolas\ NF:h12
set helplang=en

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
set incsearch       " search as characters are entered
set hlsearch        " highlight matche
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
map <Leader><Leader> <Plug>(easymotion-prefix)
