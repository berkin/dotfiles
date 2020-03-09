if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme nord

set nocompatible
filetype off

filetype plugin on
" dont show you mode, it is also displayed by airline
set noshowmode

set ruler
set number
set encoding=utf-8
set relativenumber
set backspace=indent,eol,start
set clipboard=unnamed
set lazyredraw
set hlsearch
set nowrap
set autowrite
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" Persistent undo
set undofile
set undolevels=1000
set undoreload=10000
set updatetime=1000

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set list
"set listchars:▒░,trail:~
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

set completeopt-=preview
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
"autocmd CompleteDone * pclose

set wildignore+=**/node_modules/*   
set wildignore+=**/dist/*
set wildignore+=**/.git/*
set wildignore+=**/.idea/*
set wildignore+=**/target/*
set wildignore+=**/lib/*
set wildignore+=**/coverage/*
"so ~/.vim/workignore.vim
set ignorecase

set cursorline    " highlight the current line

" hyper.js first line
set t_RV=

" remove macvim scrollbars
set guioptions=
if  has("gui_running")
    set guifont=MesloLGL\ Nerd\ Font:h13

	set lines=4000
	set columns=4000
endif

vnoremap <C-c> "*y

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_altv = 1
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
