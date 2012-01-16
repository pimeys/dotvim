set nocompatible

" Colors
colorscheme solarized

" The best leader: ,
let mapleader=","

" Vundle init
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/apidock.vim'
Bundle 'tpope/vim-repeat'
Bundle 'mirlord/vim-ruby-debugger'
Bundle 'tpope/vim-surround'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'jamis/fuzzyfinder_textmate'
Bundle 'wincent/Command-T'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'mineiro/vim-latex'
Bundle 'int3/vim-extradite'
Bundle 'mileszs/ack.vim'
Bundle 'garbas/vim-web-indent'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/VimClojure'
Bundle 'vim-scripts/Rainbow-Parenthesis'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/lodgeit.vim'
Bundle 'weierophinney/paster.vim'
Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
Bundle 'docunext/closetag.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'markabe/bufexplorer'
Bundle 'Lokaltog/vim-powerline'

" Plugin indent
filetype plugin indent on
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Closetag config
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Misc
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
set nocursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set t_Co=256
set undofile
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set nolist

syntax enable
set background=dark

" GUI options
set guioptions=
set guifont=Inconsolata\ 13
let g:Powerline_symbols = 'fancy'

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
noremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
nnoremap <silent> <F5> :GundoToggle<cr>
nnoremap <silent> <F5> <ESC>:GundoToggle<cr>
nnoremap <F1> :set relativenumber<cr>
nnoremap <F2> :set number<cr>

" keybinds for fugitive
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

"buffer navigation
noremap <M-S-TAB> :bprevious<cr>
noremap <M-TAB> :bnext<cr>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap + $
vnoremap + $
onoremap + $

noremap <silent> <leader>csd :! cap staging deploy<cr>
noremap <silent> <leader>csr :! cap staging rollback<cr>
noremap <silent> <leader>cpd :! cap production deploy<cr>
noremap <silent> <leader>cpr :! cap production rollback<cr>

noremap <silent> <leader>vs vsplit
noremap <silent> <leader>a :Ack!

