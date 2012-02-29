set nocompatible

" Colors
colorscheme solarized

" The best leader: ,
let mapleader=","

" Vundle init
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set shell=/bin/zsh

" Bundles
Bundle 'gmarik/vundle'
Bundle 'astashov/vim-ruby-debugger'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/apidock.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'jamis/fuzzyfinder_textmate'
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
Bundle 'Rip-Rip/clang_complete'
Bundle 'racket.vim'
Bundle 'tpope/vim-bundler'
Bundle 'Shougo/neocomplcache'

set shell=/bin/zsh

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
"let g:Powerline_symbols = 'fancy'
let g:Powerline_theme = 'solarized'

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

" Clang complete
let g:clang_auto_select=1
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:clang_conceal_snippets=1
let g:clang_exec="clang"
let g:clang_user_options=""
let g:clang_auto_user_options="path, .clang_complete"
let g:clang_use_library=1
let g:clang_library_path="/usr/lib/llvm"
let g:clang_sort_algo="priority"
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
nnoremap <leader>q :call g:ClangUpdateQuickFix()<CR>

nnoremap <leader>r :call ClangGetReferences()<CR>
nnoremap <leader>d :call ClangGetDeclarations()<CR>
nnoremap <leader>s :call ClangGetSubclasses()<CR>

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
nnoremap <C-i> {
nnoremap <C-u> }

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
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

noremap <C-t> <C-]>

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

" NeoComplCache
"
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
