set nocompatible
set clipboard=unnamedplus

set clipboard=unnamedplus

" Colors
set background=dark     " Assume a dark background
let g:solarized_termcolors=256
color solarized                 " load a colorscheme
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"

" The best leader: ,
let mapleader=","
" Vundle init
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set shell=/bin/zsh

" Bundles
Bundle 'gmarik/vundle'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'jamis/fuzzyfinder_textmate'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'mineiro/vim-latex'
Bundle 'mileszs/ack.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'markabe/bufexplorer'
Bundle 'Lokaltog/vim-powerline'
Bundle 'AndrewRadev/switch.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'airblade/vim-gitgutter'
Bundle 'sickill/vim-pasta'

set shell=/bin/zsh

" Plugin indent
filetype plugin indent on
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#073642   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#002b36 ctermbg=0

set ts=4 sw=4 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
let g:indent_guides_enable_on_vim_startup = 1

" Git Gutter
let g:gitgutter_eager = 0

" vim clojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let vimclojure#NailgunClient = '/home/pimeys/.bin/ng'
let vimclojure#WantNailgun = 1

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Misc
"set modelines=0
set encoding=utf-8
set scrolloff=3
set cursorline
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set nocursorline
set ttyfast
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set showmatch                   " show matching brackets/parenthesis
set backspace=indent,eol,start
set laststatus=2
set t_Co=256
set undofile
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set linespace=0
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml,ruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

syntax enable
set background=dark

" GUI options
set guioptions=
set guifont=Inconsolata\ for\ Powerline\ Medium\ 13
let g:Powerline_symbols = 'fancy'
"let g:Powerline_theme = 'solarized'

" Search settings
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

let g:ackprg="ack -H --nocolor --nogroup --column"

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

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
match ExtraWhitespace /\s\+$\| \+\ze\t/
match ExtraWhitespace /[^\t]\z\s\t\+/

vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

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

nnoremap - :Switch<cr>

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
noremap <leader>, /\s\+$<cr>
nnoremap <leader>v V`]

" keybinds for fugitive
noremap <silent> <leader>gs :Gstatus<cr>
noremap <silent> <leader>gd :Gdiff<cr>
noremap <silent> <leader>gl :Glog<cr>:botright cwindow<CR>
noremap <silent> <leader>gc :Gcommit<cr>
noremap <silent> <leader>gb :Gblame<cr>
noremap <silent> <leader>gv :Gitv<cr>
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

noremap <leader>j :tabprevious<cr>
noremap <leader>k :tabnext<cr>

"buffer navigation
noremap <C-p> :bprevious<cr>
noremap <C-n> :bnext<cr>
noremap <silent> <leader>bl :BufExplorer<cr>

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
noremap <silent> <leader>a yiw:Ack! <C-r>"<cr>
vnoremap <silent> <leader>a y:Ack! <C-r>"<cr>

" buffers
noremap <leader>bw bprevious
noremap <leader>br bnext

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

function! InitializeDirectories()
    let separator = "."
    let parent = $HOME
    let prefix = '.vim'
    let dir_list = {
                \ 'backup': 'backupdir',
                \ 'views': 'viewdir',
                \ 'swap': 'directory' }

    if has('persistent_undo')
        let dir_list['undo'] = 'undodir'
    endif

    for [dirname, settingname] in items(dir_list)
        let directory = parent . '/' . prefix . dirname . "/"
        if exists("*mkdir")
            if !isdirectory(directory)
                call mkdir(directory)
            endif
        endif
        if !isdirectory(directory)
            echo "Warning: Unable to create backup directory: " . directory
            echo "Try: mkdir -p " . directory
        else
            let directory = substitute(directory, " ", "\\\\ ", "g")
            exec "set " . settingname . "=" . directory
        endif
    endfor
endfunction
call InitializeDirectories()
