" Plugin settings from http://sontek.net/turning-vim-into-a-modern-python-ide
filetype off
execute pathogen#infect()
call pathogen#helptags()
filetype on

let g:miniBufExplMapWindowNavVim = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_write = 1
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 2

map <F1> :NERDTreeToggle<CR>
map <F2> :SyntasticToggleMode<CR>

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

syntax on
" filetype plugin indent on

" OH MY GOD YOU CAN ELIMINATE SWAPFILES
set nobackup
set noswapfile

set backspace=indent,eol,start " better behaved backspace

set shiftround

set mouse=a

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent

set incsearch
set number
set numberwidth=4

set nowrap
set novisualbell
set scrolloff=5
set nocompatible
set sidescrolloff=5

set background=dark
set ruler
set noerrorbells
set showmatch

"
" textwidth in comments mode only
"

set textwidth=72
set formatoptions=cq

"
" custom syntax highlighting
"

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.less set filetype=less
