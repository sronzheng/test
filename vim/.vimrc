"""""""""""""""
" vim basic
"""""""""""""""
set nocompatible
set shortmess=atI
set nobackup
set noerrorbells
"set nowrap
"set background=dark
"set backspace=2
"set cursorline
"set novisualbell
set confirm
set noswapfile
set history=50
set number
set ruler
set laststatus=2
"set showcmd
set cmdheight=1

"set mouse=a
set selection=exclusive
set selectmode=mouse,key

set autoread

"set completeopt=preview,menu

"set helplang=cn
"set encoding=utf-8
"set autowrite

" key mapping
let mapleader=","
nnoremap <leader>w :w<cr>

" regex
"set magic

" fold
"set foldcolumn=0
"set foldmethold=indent
"set foldlevel=3
"set foldenable=

filetype plugin indent on
syntax on
colorscheme evening
"colorscheme default
"colorscheme desert
"colorscheme murphy
"colorscheme darkblue

" search
set ignorecase
set hlsearch
set incsearch

" space & tab
set expandtab
set tabstop=4  
set softtabstop=4
set shiftwidth=4  

"set viminfo+=!
"set iskeyword+=_,-
"set linespace=10

set wildmenu
"set report=0

"set whichwrap+=<,>,h,l

"set showmatch
"set matchtime=1

"set fillchars=vert:\ ,stl:\ ,stlnc:\
"set scrolloff=3


"""""""""""""""
" vim plugin 
"""""""""""""""

"===========
" miniBufExplorer
"===========

let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModeSelTarget=1
let g:miniBufExplMoreThanOne=0

"===========
" NERDTree
"===========
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"===========
" Tag list
"===========

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
nmap <c-c> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"===========
" winmanager
"===========

let g:winManagerWidth=30
let g:winManagerWindowLayout="NERDTree|TagList"
let g:persistentBehaviour=0

"nnoremap <c-w><c-f> :FirstExplorerWindow<cr>
"nnoremap <c-w><c-b> :BottomExplorerWindow<cr>
nmap <c-w><c-t> :WMToggle<cr>
