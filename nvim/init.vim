call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'avakhov/vim-yaml'
Plug 'elzr/vim-json'
Plug 'Yggdroot/indentLine' " show indent lines, tabs
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
" Initialize plugin system
call plug#end()

set number
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set number
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set showmatch           " Show matching brackets.
set showmatch
set showmode
set showcmd             " Show (partial) command in status line.
set hlsearch
set incsearch           " Incremental search

" vim
set viminfo='20,<1000,s1000,h

set expandtab
set copyindent
set preserveindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent

set list lcs=tab:\|\

" Last position jump
autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nerdtree_tabs_open_on_console_startup=0
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
map - :NERDTreeToggle<CR>
map ] :NERDTreeFind<CR>
map <leader>r :NERDTreeFind<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Bind file types
autocmd BufNewFile,BufRead *.html.erb set filetype=html
autocmd BufNewFile,BufRead *.js.erb set filetype=javascript
autocmd BufNewFile,BufRead *.json.erb set filetype=json

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neomake
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:neomake_verbose = 3 "Debug
" When writing a buffer (no delay).
"call neomake#configure#automake('nrwi', 500)
call neomake#configure#automake('rw', 500) " When read and write
let g:neomake_open_list = 2
let g:neomake_vue_enabled_makers = ['eslint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_json_enabled_makers = ['jsonlint']
let g:neomake_html_enabled_makers = [] " Disbale linting for HTML, ERB

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F3> :Neoformat<CR>
"let g:neoformat_verbose = 3
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_vue = ['prettier']
let g:neoformat_enabled_html = ['htmlbeautify']
let g:neoformat_enabled_json = ['prettier']

"Ack
let g:ack_default_options =  ""


"Nginx configs set filetype as conf
autocmd BufRead,BufNewFile /etc/nginx/sites-*/* set ft=conf

"write a privileged file with custom command just type W:
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

