syntax on
set background=dark
colorscheme solarized

set nocompatible              " be iMproved, required
filetype off                  " required

set ruler
set number
set encoding=utf-8
set relativenumber
set backspace=indent,eol,start
set clipboard=unnamed

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:vim_markdown_folding_disabled = 1
let g:solarized_termcolors = 256
let g:airline_theme='papercolor'

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set linespace=0
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Nerdtree quit if it last pane
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

au BufNewFile,BufRead *.json setfiletype json syntax=javascript
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
