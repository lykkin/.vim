" Plugin settings from http://sontek.net/turning-vim-into-a-modern-python-ide
filetype off
execute pathogen#infect()
call pathogen#helptags()
filetype on

let g:miniBufExplMapWindowNavVim = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers = ['gofmt', 'golint', 'govet']
let g:syntastic_check_on_write = 1
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_aggregate_errors = 1

map <F1> :NERDTreeToggle<CR>
map <F2> :SyntasticToggleMode<CR>

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" OH MY GOD YOU CAN ELIMINATE SWAPFILES
set nobackup
set noswapfile

set wildmenu

set backspace=indent,eol,start " better behaved backspace

set shiftround

set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set exrc
set secure
set smarttab
set autoindent

" markdown
au BufRead,BufNewFile *.markdown,*.md,*.txt setlocal spell textwidth=80

set incsearch
set number
set numberwidth=4

set cc=90

colorscheme vividchalk

"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list

set nowrap
set novisualbell
set scrolloff=5
set nocompatible
set sidescrolloff=5

set background=dark
set ruler
set noerrorbells
set showmatch
set cursorline

"
" textwidth in comments mode only
"

set textwidth=72
set formatoptions=cq

"
" custom syntax highlighting
"
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab

" sudo write this file
cmap W! w !sudo tee % >/dev/null
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.less set filetype=less
