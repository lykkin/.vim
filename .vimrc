call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'frazrepo/vim-rainbow'
Plug 'junegunn/fzf'
call plug#end()
let g:miniBufExplMapWindowNavVim = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers = ['gofmt', 'golint', 'govet']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_check_on_write = 1
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_aggregate_errors = 1

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

map <F1> :NERDTreeToggle<CR>
map <F2> :SyntasticToggleMode<CR>
nnoremap <F3> :vertical wincmd f<CR>

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

set rtp+=/usr/local/opt/fzf

" OH MY GOD YOU CAN ELIMINATE SWAPFILES
set nobackup
set noswapfile

set wildmenu

set backspace=indent,eol,start " better behaved backspace

set shiftround

set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

set t_Co=256
syntax enable
colorscheme vividchalk
set background=dark

"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list

set nowrap
set novisualbell
set scrolloff=5
set nocompatible
set sidescrolloff=5

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
autocmd FileType typescript set tabstop=2|set shiftwidth=2|set softtabstop=2|set expandtab

" sudo write this file
cmap W! w !sudo tee % >/dev/null
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.less set filetype=less


" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
"let g:ycm_confirm_extra_conf = 0
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'

"call vundle#end()
filetype plugin indent on
