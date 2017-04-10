syntax on
"set background=dark
colorscheme nord

set nocompatible              " be iMproved, required
filetype off

let &runtimepath.=',~/.vim/bundle/ale'

filetype plugin on

set ruler
set number
set encoding=utf-8
set relativenumber
set backspace=indent,eol,start
set clipboard=unnamed
set lazyredraw
set hlsearch
" Persistent undo
set undofile
set undolevels=1000
set undoreload=10000

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set list
"set listchars:▒░,trail:~
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

set wildignore+=**/node_modules/*   " ignores node_modules
set wildignore+=**/dist/*
set wildignore+=**/.git/*
set wildignore+=**/.idea/*
set wildignore+=**/target/*
set wildignore+=**/lib/*
set wildignore+=**/coverage/*
so ~/.vim/workignore.vim
set ignorecase

set cursorline    " highlight the current line

" hyper.js first line
set t_RV=


" Trigger autoread when changing buffers or coming back to vim in terminal.
"au FocusGained,BufEnter * :silent! !

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
"au FocusLost,WinLeave * :silent! wa

"Invisible character colors
"highlight NonText ctermfg=10 ctermbg=8 guibg=white
"highlight SpecialKey ctermfg=10 ctermbg=8 guibg=white

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jelera/vim-javascript-syntax'
" Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'hjson/vim-hjson'
Plugin 'tpope/vim-surround'
Plugin 'flowtype/vim-flow'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'ryanoasis/vim-devicons'
Plugin 'gioele/vim-autoswap'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'ap/vim-css-color'
Plugin 'w0rp/ale'

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
map <F8> :Bclose<CR>
map <F9> :bprevious<CR>
map <F10> :bnext<CR>

" vim session
let g:session_autoload = 'no'

"ctrlp
function! CtrlPCommand()
    let c = 0
    let wincount = winnr('$')
    " Don't open it here if current buffer is not writable (e.g. NERDTree)
    while !empty(getbufvar(+expand("<abuf>"), "&buftype")) && c < wincount
        exec 'wincmd w'
        let c = c + 1
    endwhile
    exec 'CtrlP'
endfunction

let g:ctrlp_cmd = 'call CtrlPCommand()'
let g:ctrlp_show_hidden = 1

" ack
" map Ack! to Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ack_autoclose = 1
let g:ack_mappings = {'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p', 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J'}


let g:vim_markdown_folding_disabled = 1
"let g:solarized_termcolors = 256

" air-line
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

set linespace=0


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" youcompleteme bg color
highlight Pmenu ctermfg=0 ctermbg=14
let g:ycm_path_to_python_interpreter="/usr/bin/python"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 1
" let g:syntastic_error_symbol = ''
" let g:syntastic_warning_symbol = ''
" let g:syntastic_style_error_symbol = ''
" let g:syntastic_style_warning_symbol = ''
"let g:syntastic_debug = 3
" let g:syntastic_json_checkers = ['jsonlint']
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
" autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc.js', '.;') != '' ? ['eslint'] : ['standard']

" hi SignColumn ctermbg=0
" highlight SyntasticErrorSign ctermfg=1 ctermbg=0
" highlight SyntasticWarningSign ctermfg=3 ctermbg=0
" highlight SyntasticStyleErrorSign ctermfg=1 ctermbg=0
" highlight SyntasticStyleWarningSign ctermfg=3 ctermbg=0

" ale
" show signcolumn always
" couldn't find a way exclude nerdtree
autocmd BufEnter *.js,*.jsx,*.html,*.json sign define dummy
autocmd BufEnter *.js,*.jsx,*.html,*.json execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

let g:ale_linters = {
\	'javascript': ['eslint'],
\	}
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
highlight SignColumn ctermbg=0
highlight ALEErrorSign ctermfg=1 ctermbg=0
highlight ALEWarningSign ctermfg=3 ctermbg=0

" indent guides
let g:indent_guides_enable_on_vim_startup = 0 "enable on startup
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"let g:indent_guides_color_change_percent = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white	 ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white	 ctermbg=8

" flow
let g:flow#autoclose = 1

" Nerdtree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store$']
nmap ,f :NERDTreeFind<CR>
nmap ,t :NERDTreeToggle<CR>
nmap ,c :NERDTreeCWD<CR>

" Nerdtree quit if it last pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

au BufNewFile,BufRead *.json setfiletype json syntax=javascript
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" js pretty template
autocmd FileType javascript JsPreTmpl html

" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
  finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
  let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" Command ':Bclose' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != w
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call s:Bclose('<bang>', '<args>')
nnoremap <silent> <Leader>bd :Bclose<CR>
