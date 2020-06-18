"set background=dark
" nord vim

" https://stackoverflow.com/questions/10158508/lose-vim-colorscheme-in-tmux-mode
"set termguicolors

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
set fillchars+=vert:.
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

" Trigger autoread when changing buffers or coming back to vim in terminal.
"au FocusGained,BufEnter * :silent! !

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
"au FocusLost,WinLeave * :silent! wa

"Invisible character colors
"highlight NonText ctermfg=10 ctermbg=8 guibg=white
"highlight SpecialKey ctermfg=10 ctermbg=8 guibg=white

" set the runtime path to include Vundle and initialize
"
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" The following are examples of different formats supported.
" KPlugin commands between vundle#begin/end.
" Plugin 'Valloric/YouCompleteMe'
"/puPlug 'ternjs/tern_for_vim'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plugin 'othree/yajs.vim'
" Plugin 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'hail2u/vim-css3-syntax'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'
"Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'


" Plin 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'hjson/vim-hjson'
Plug 'tpope/vim-surround'
Plug 'flowtype/vim-flow'
"Plugin 'ryanoasis/vim-devicons'
Plug 'gioele/vim-autoswap'
Plug 'ekalinin/Dockerfile.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/Colorizer'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mustache/vim-mustache-handlebars'
" Plugin 'Townk/vim-autoclose'
" Plugin 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
Plug 'tpope/vim-dispatch'
Plug 'wakatime/vim-wakatime'
"Plug 'Chiel92/vim-autoformat'
"Plun 'terryma/vim-multiple-cursors'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'xolox/vim-easytags'
Plug 'luochen1990/rainbow'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'elzr/vim-json'
Plug 'prettier/vim-prettier'
" Plin 'ruanyl/vim-fixmyjs'
" Plin 'Shougo/neocomplete.vim'
"Plug 'Shougo/deoplete.nvim'
"Plug 'carlitux/deoplete-ternjs'
Plug 'othree/jspc.vim'
Plug 'sjl/gundo.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'arcticicestudio/nord-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'junegunn/goyo.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }
Plug 'Quramy/vim-js-pretty-template'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
"Plug 'sheerun/vim-polyglot'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call plug#end()
syntax on

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

let s:nord0_gui = "#2E3440"
let s:nord1_gui = "#3B4252"
let s:nord2_gui = "#434C5E"
let s:nord3_gui = "#4C566A"
let s:nord4_gui = "#D8DEE9"
let s:nord5_gui = "#E5E9F0"
let s:nord6_gui = "#ECEFF4"
let s:nord7_gui = "#8FBCBB"
let s:nord8_gui = "#88C0D0"
let s:nord9_gui = "#81A1C1"
let s:nord10_gui = "#5E81AC"
let s:nord11_gui = "#BF616A"
let s:nord12_gui = "#D08770"
let s:nord13_gui = "#EBCB8B"
let s:nord14_gui = "#A3BE8C"
let s:nord15_gui = "#B48EAD"
let mapleader = " "

map <F2> :exe "vertical resize -10"<CR>
map <F3> :exe "vertical resize +10"<CR>
map <F4> :exe "resize -10"<CR>
map <F5> :exe "resize +10"<CR>
"noremap <F6> :Autoformat<CR>
nmap <F7> :TagbarToggle<CR>
map <F8> :Bclose<CR>
map <F9> :bprevious<CR>
map <F10> :bnext<CR>

"hi tsxAttrib guibg=s:nord3_gui cterm=italic

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" c (classes), f (functions), m (methods), p (properties), and v (global
" variables), for javascript files.
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'a:array',
        \ 'o:object',
        \ 'f:function',
        \ 'v:var'
    \ ]
\ }

call plug#end()

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_altv = 1

if has('autocmd')
  " Support `-` in css property names
    augroup VimCSS3Syntax
        autocmd!
        autocmd FileType css setlocal iskeyword+=-
    augroup END

endif

" js pretty template
call jspretmpl#register_tag('gql', 'graphql')
" Use sass highlighting for `styled.span` / `styled.div` / etc
call jspretmpl#register_tag('\v(styled\.\w+)', 'scss')

"autocmd FileType javascript JsPreTmpl

" nvim python settings
" https://ricostacruz.com/til/neovim-with-python-on-osx
"let g:python2_host_prog = '/usr/local/bin/python'
"let g:python3_host_prog = '/usr/local/bin/python3'


highlight htmlArg cterm=italic

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
" let g:fixmyjs_rc_filename = ['.eslintrc', '.eslintrc.json']

" colorizer
let g:colorizer_auto_filetype='css,scss,html'


" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': [s:nord7_gui, s:nord7_gui, s:nord9_gui, s:nord10_gui],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'xml': {
	\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'xhtml': {
	\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'php': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold', 'start=/(/ end=/)/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\[/ end=/\]/ containedin=@htmlPreproc contains=@phpClTop', 'start=/{/ end=/}/ containedin=@htmlPreproc contains=@phpClTop'],
	\		},
	\		'css': 0,
	\		'sh': {
	\			'parentheses': [['\(^\|\s\)\S*()\s*{\?\($\|\s\)','_^{_','}'], ['\(^\|\s\)if\($\|\s\)','_\(^\|\s\)\(then\|else\|elif\)\($\|\s\)_','\(^\|\s\)fi\($\|\s\)'], ['\(^\|\s\)for\($\|\s\)','_\(^\|\s\)\(do\|in\)\($\|\s\)_','\(^\|\s\)done\($\|\s\)'], ['\(^\|\s\)while\($\|\s\)','_\(^\|\s\)\(do\)\($\|\s\)_','\(^\|\s\)done\($\|\s\)'], ['\(^\|\s\)case\($\|\s\)','_\(^\|\s\)\(\S*)\|in\|;;\)\($\|\s\)_','\(^\|\s\)esac\($\|\s\)']],
	\		},
	\	}
	\}

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
let g:ctrlp_line_prefix = '  '

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
let g:airline#extensions#tabline#formatter = 'jsformatter'
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
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
"autocmd VimEnter * wincmd p

" airline refresh hack for nerdtree
"autocmd VimEnter * AirlineRefresh
"autocmd VimEnter * AirlineRefresh

" youcompleteme bg color
highlight Pmenu ctermfg=0 ctermbg=14
"let g:ycm_path_to_python_interpreter="/usr/bin/python"

" syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
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
let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
highlight clear SignColumn
highlight ALEErrorSign ctermfg=1
highlight ALEWarningSign ctermfg=3

let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['html'] = ['prettier']
let g:ale_fix_on_save = 1


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
"highlight DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=green
"highlight DiffDelete cterm=BOLD ctermfg=NONE ctermbg=red
"highlight DiffChange cterm=BOLD ctermfg=NONE ctermbg=0
"highlight DiffText   cterm=BOLD ctermfg=NONE ctermbg=magenta
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

" @TODO configure as
" language files use own color js => yellow, css =>, html =>
" config, rc files => green
" logs, erros, ignore => red
" lock files => green, yarn.lock, package-lock.json
" markdown => blue
" autogenerated files, tags, tern-project => greyish
" assets => magenta
" specific file types, Dockerfile, ProcFile

call NERDTreeHighlightFile('md', 'blue', 'none', s:nord9_gui, 'NONE')
call NERDTreeHighlightFile('info', 'blue', 'none',s:nord9_gui , 'NONE')
call NERDTreeHighlightFile('rc', 'blue', 'none',s:nord9_gui , 'NONE')
call NERDTreeHighlightFile('config', 'green', 'none', s:nord14_gui, 'NONE')
call NERDTreeHighlightFile('port', 'green', 'none', s:nord14_gui, 'NONE')
call NERDTreeHighlightFile('project', 'green', 'none', s:nord14_gui, 'NONE')
call NERDTreeHighlightFile('ignore', 'red', 'none', s:nord11_gui, 'NONE')
call NERDTreeHighlightFile('log', 'red', 'none', s:nord11_gui, 'NONE')
call NERDTreeHighlightFile('lock', 'green', 'none', s:nord14_gui, 'NONE')
call NERDTreeHighlightFile('conf', 'yellow', 'none', s:nord13_gui, 'NONE')
call NERDTreeHighlightFile('babelrc', 'yellow', 'none', s:nord13_gui, 'NONE')
call NERDTreeHighlightFile('json', 'magenta', 'none', s:nord15_gui, 'NONE')
call NERDTreeHighlightFile('xml', 'magenta', 'none', s:nord15_gui, 'NONE')
call NERDTreeHighlightFile('yml', 'magenta', 'none', s:nord15_gui, 'NONE')
call NERDTreeHighlightFile('tags', 'magenta', 'none', s:nord15_gui, 'NONE')
call NERDTreeHighlightFile('css', 'cyan', 'none', s:nord7_gui, 'NONE')
call NERDTreeHighlightFile('scss', 'cyan', 'none', s:nord7_gui, 'NONE')
call NERDTreeHighlightFile('js', 'yellow', 'none', s:nord13_gui, 'NONE')
call NERDTreeHighlightFile('jsx', 'blue', 'none', s:nord9_gui, 'NONE')

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

" set json syntax to files like .eslintrc
au BufRead,BufNewFile {.eslintrc,.eslintignore} setlocal ft=json
au BufNewFile,BufRead *.json setfiletype json syntax=javascript
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufRead,BufNewFile *.mustache setfiletype mustache
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=mustache
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" change the default dictionary mappings for file extension matches

" dev icons
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = 'ƛ'
"let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.babelrc'] = ''

" add or override pattern matches for filetypes
" these take precedence over the file extensions

"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*babel.*\.js$'] = 'ƛ'


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

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_uniform_diff_background = 1

augroup nord-theme-overrides
  autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord highlight htmlArg cterm=italic
augroup END
colorscheme nord
