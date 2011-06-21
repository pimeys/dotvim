" Colors
colorscheme solarized

" The best leader: ,
let mapleader=","

" Pathogen init
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Misc
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set list

syntax on

" Search settings
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set number
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Key remaps
noremap <Space> <PageDown>
noremap <BS> <PageUp>
noremap - <PageUp>
nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
inoremap jj <ESC>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
noremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
nnoremap <silent> <F5> :GundoToggle<cr>
nnoremap <silent> <F5> <ESC>:GundoToggle<cr>

noremap <silent> <leader>gs :Gstatus<cr>
noremap <silent> <leader>gd :Gdiff<cr>
noremap <silent> <leader>gl :Glog<cr>:botright cwindow<CR>
noremap <silent> <leader>gc :Gcommit<cr>
noremap <silent> <leader>gb :Gblame<cr>
noremap <silent> <leader>gps :Git push<cr>
noremap <silent> <leader>gpl :Git pull<cr>

noremap <silent> <leader>rc :Rcontroller
noremap <silent> <leader>rm :Rmodel
noremap <silent> <leader>rv :Rview
noremap <silent> <leader>rj :Rjavascript
noremap <silent> <leader>rs :Rstylesheet
noremap <silent> <leader>rmi :Rmigration
noremap <silent> <leader>rgs :Rgenerate scaffold
noremap <silent> <leader>rgc :Rgenerate controller
noremap <silent> <leader>rgm :Rgenerate model
noremap <silent> <leader>rgv :Rgenerate view
noremap <silent> <leader>rgmi :Rgenerate migration

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <leader>csd :! cap staging deploy<cr>
noremap <silent> <leader>csr :! cap staging rollback<cr>
noremap <silent> <leader>cpd :! cap production deploy<cr>
noremap <silent> <leader>cpr :! cap production rollback<cr>

noremap <silent> <leader>vs vsplit
noremap <silent> <leader>a :Ack!


" keybinds for fugitive
