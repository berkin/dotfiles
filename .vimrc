"set background=dark
colorscheme nord

set nocompatible              " be iMproved, required
filetype off

let &runtimepath.=',~/.vim/bundle/ale'

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
" Plugin 'Valloric/YouCompleteMe'
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
Plugin 'chrisbra/Colorizer'
Plugin 'w0rp/ale'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'Townk/vim-autoclose'
" Plugin 'sbdchd/neoformat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'craigemery/vim-autotag'
Plugin 'tpope/vim-dispatch'
Plugin 'wakatime/vim-wakatime'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'xolox/vim-easytags'
Plugin 'luochen1990/rainbow'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'prettier/vim-prettier'
Plugin 'ruanyl/vim-fixmyjs'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'othree/jspc.vim'
Plugin 'sjl/gundo.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'arcticicestudio/nord-vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'leafgarland/typescript-vim'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
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

map <F2> :exe "vertical resize -10"<CR>
map <F3> :exe "vertical resize +10"<CR>
map <F4> :exe "resize -10"<CR>
map <F5> :exe "resize +10"<CR>
noremap <F6> :Autoformat<CR>
nmap <F7> :TagbarToggle<CR>
map <F8> :Bclose<CR>
map <F9> :bprevious<CR>
map <F10> :bnext<CR>

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }

" javascript libraries
let g:used_javascript_libs = 'react'

" Gundo
nmap <Leader>g :GundoToggle<CR>

let g:vim_json_warnings=0

" nvim python settings
" https://ricostacruz.com/til/neovim-with-python-on-osx
"let g:python2_host_prog = '/usr/local/bin/python'
"let g:python3_host_prog = '/usr/local/bin/python3'

" nord vim
" does not work??
let g:nord_uniform_diff_background = 1
let g:nord_italic_comments = 1

" easy tags
set tags=./tags;
let g:easytags_dynamic_files = 1
let g:easytags_async = 1

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

" fix my js
let g:fixmyjs_rc_filename = ['.eslintrc', '.eslintrc.json']

" colorizer
let g:colorizer_auto_filetype='css,scss,html'

if !has('nvim')
		" neocomplete
	" Use neocomplete.
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplete.
	let g:neocomplete#enable_at_startup = 1
	" Use smartcase.
	let g:neocomplete#enable_smart_case = 1
	" Set minimum syntax keyword length.
	let g:neocomplete#sources#syntax#min_keyword_length = 3

	" Define dictionary.
	let g:neocomplete#sources#dictionary#dictionaries = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'/.vimshell_hist',
		\ 'scheme' : $HOME.'/.gosh_completions'
			\ }

	" Define keyword.
	if !exists('g:neocomplete#keyword_patterns')
		let g:neocomplete#keyword_patterns = {}
	endif
	let g:neocomplete#keyword_patterns['default'] = '\h\w*'

	" Plugin key-mappings.
	inoremap <expr><C-g>     neocomplete#undo_completion()
	inoremap <expr><C-l>     neocomplete#complete_common_string()

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
	  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	  " For no inserting <CR> key.
	  "return pumvisible() ? "\<C-y>" : "\<CR>"
	endfunction
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
	" Close popup by <Space>.
	"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

	" AutoComplPop like behavior.
	"let g:neocomplete#enable_auto_select = 1

	" Shell like behavior(not recommended).
	"set completeopt+=longest
	"let g:neocomplete#enable_auto_select = 1
	"let g:neocomplete#disable_auto_complete = 1
	"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	let g:neocomplete#sources#omni#functions = {}
	let g:neocomplete#sources#omni#functions.javascript = [
			\   'jspc#omni',
			\   'tern#Complete',
			\ ]
	" Enable heavy omni completion.
	if !exists('g:neocomplete#sources#omni#input_patterns')
	  let g:neocomplete#sources#omni#input_patterns = {}
	endif
	"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
	"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

else
	"deoplete
	let g:deoplete#enable_at_startup = 1

	let g:deoplete#max_list = 10

	" Set bin if you have many instalations
	let g:deoplete#sources#ternjs#timeout = 1

	" Whether to include the types of the completions in the result data. Default: 0
	let g:deoplete#sources#ternjs#types = 1

	" Whether to include the distance (in scopes for variables, in prototypes for
	" properties) between the completions and the origin position in the result
	" data. Default: 0
	let g:deoplete#sources#ternjs#depths = 1

	" Whether to include documentation strings (if found) in the result data.
	" Default: 0
	let g:deoplete#sources#ternjs#docs = 1

	" When on, only completions that match the current word at the given point will
	" be returned. Turn this off to get all results, so that you can filter on the
	" client side. Default: 1
	let g:deoplete#sources#ternjs#filter = 0

	" Whether to use a case-insensitive compare between the current word and
	" potential completions. Default 0
	let g:deoplete#sources#ternjs#case_insensitive = 1

	" When completing a property and no completions are found, Tern will use some
	" heuristics to try and return some properties anyway. Set this to 0 to
	" turn that off. Default: 1
	let g:deoplete#sources#ternjs#guess = 0

	" Determines whether the result set will be sorted. Default: 1
	let g:deoplete#sources#ternjs#sort = 0

	" When disabled, only the text before the given position is considered part of
	" the word. When enabled (the default), the whole variable name that the cursor
	" is on will be included. Default: 1
	let g:deoplete#sources#ternjs#expand_word_forward = 0

	" Whether to ignore the properties of Object.prototype unless they have been
	" spelled out by at least to characters. Default: 1
	let g:deoplete#sources#ternjs#omit_object_prototype = 0

	" Whether to include JavaScript keywords when completing something that is not
	" a property. Default: 0
	let g:deoplete#sources#ternjs#include_keywords = 1

	" If completions should be returned when inside a literal. Default: 1
	let g:deoplete#sources#ternjs#in_literal = 0


	"Add extra filetypes
	let g:deoplete#sources#ternjs#filetypes = [
					\ 'jsx',
					\ 'vue'
					\ ]
	"
	" deoplete tab-complete
	inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
endif

" rainbow
let g:rainbow_active = 1

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
let g:ack_use_dispatch = 1
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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

set linespace=0

set laststatus=2
autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" airline refresh hack for nerdtree
"autocmd VimEnter * AirlineRefresh
"autocmd VimEnter * AirlineRefresh

" youcompleteme bg color
highlight Pmenu ctermfg=0 ctermbg=14
"let g:ycm_path_to_python_interpreter="/usr/bin/python"

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

let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 0


"let g:ale_javascript_eslint_use_global = 1

" git gutter
"let g:gitgutter_sign_column_always = 1
"set signcolumn=yes
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
let g:gitgutter_eager = 1
"highlight GitGutterAdd ctermbg=0
"highlight GitGutterChange ctermbg=0
"highlight GitGutterDelete ctermbg=0
"highlight GitGutterChangeDelete ctermbg=0

" vimdiff colors
highlight DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=green
highlight DiffDelete cterm=BOLD ctermfg=NONE ctermbg=red
highlight DiffChange cterm=BOLD ctermfg=NONE ctermbg=0
highlight DiffText   cterm=BOLD ctermfg=NONE ctermbg=magenta
"highlight DiffAdd cterm=none ctermfg=0 ctermbg=Green gui=none guifg=bg guibg=Green
"highlight DiffDelete cterm=none ctermfg=0 ctermbg=Red gui=none guifg=bg guibg=Red
"highlight DiffChange cterm=none ctermfg=0 ctermbg=Yellow gui=none guifg=bg guibg=Yellow
"highlight DiffText cterm=none ctermfg=0 ctermbg=Magenta gui=none guifg=bg guibg=Magenta
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
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store$']
let NERDTreeMinimalUI = 1

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('info', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('config', 'green', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('ignore', 'red', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('lock', 'green', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'magenta', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('xml', 'magenta', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('yml', 'magenta', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('jsx', 'blue', 'none', '#ffa500', '#151515')

nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>c :NERDTreeCWD<CR>

" Nerdtree quit if it last pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "˜",
"    \ "Staged"    : "",
"    \ "Untracked" : "",
"    \ "Renamed"   : "",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "",
"    \ "Dirty"     : "",
"    \ "Clean"     : "",
"    \ 'Ignored'   : '',
"    \ "Unknown"   : ""
"    \ }

au BufNewFile,BufRead *.json setfiletype json syntax=javascript
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufRead,BufNewFile *.mustache setfiletype mustache
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript


" change the default dictionary mappings for file extension matches

" dev icons
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = 'ƛ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.babelrc'] = ''

" add or override pattern matches for filetypes
" these take precedence over the file extensions

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*babel.*\.js$'] = 'ƛ'

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

" auto pairs
