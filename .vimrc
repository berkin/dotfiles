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
set nowrap
set autowrite

" Persistent undo
set undofile
set undolevels=1000
set undoreload=10000
set updatetime=500

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


" map ctrl+c to add system clipboard
" http://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard
vnoremap <C-c> "*y

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
" Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'othree/yajs.vim'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
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
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'Townk/vim-autoclose'
" Plugin 'sbdchd/neoformat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'craigemery/vim-autotag'

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
let mapleader = " "

map <F2> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
map <F3> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
map <F4> :exe "resize " . (winheight(0) * 2/3)<CR>
map <F5> :exe "resize " . (winheight(0) * 3/2)<CR>
nmap <F7> :TagbarToggle<CR>
map <F8> :Bclose<CR>
map <F9> :bprevious<CR>
map <F10> :bnext<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" FastEscape {{{
" Speed up transition from modes
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif
" }}}

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
"let g:ctrlp_show_hidden = 1

" neoformat {{{
"autocmd FileType javascript set formatprg=prettier-eslint\ --stdin
"autocmd BufWritePre *.js :normal gggqG
"let g:neoformat_enabled_css = ['csscomb']
"autocmd BufWritePre *.css :normal gggqG
"let g:neoformat_try_formatprg = 1
"let g:neoformat_only_msg_on_error = 1
" neoformat }}}

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ack
" map Ack! to Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
let g:ack_autoclose = 1
let g:ack_mappings = {'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p', 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J'}
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
" bind K to grep word under cursor
nnoremap K :Ack "\b<C-R><C-W>\b"<CR>:cw<CR>

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
" autocmd BufEnter *.js,*.jsx,*.html,*.json sign define dummy
" autocmd BufEnter *.js,*.jsx,*.html,*.json execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')


let g:ale_linters = {
\	'javascript': ['eslint'],
\	}
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
highlight clear SignColumn
highlight ALEErrorSign ctermfg=1
highlight ALEWarningSign ctermfg=3

" git gutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_eager = 1
"highlight GitGutterAdd ctermbg=0
"highlight GitGutterChange ctermbg=0
"highlight GitGutterDelete ctermbg=0
"highlight GitGutterChangeDelete ctermbg=0


" flow
let g:flow#autoclose = 1

" vim-javascript
"let g:javascript_plugin_flow = 1
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"
"highlight Conceal  ctermfg=10 ctermbg=NONE
"set conceallevel=1
"
"" Nerdtree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store$']
let NERDTreeMinimalUI = 1

nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>c :NERDTreeCWD<CR>

" Nerdtree quit if it last pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

au BufNewFile,BufRead *.json setfiletype json syntax=javascript
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufRead,BufNewFile *.mustache setfiletype mustache
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache

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
