filetype off

syntax on

" encoding
scriptencoding utf-8

" 所有可能的檔案編碼
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1
" 啟動後使用 utf-8 編碼
set encoding=utf-8
" 新開的檔案預設是 utf-8 編碼
set fileencoding=utf-8
" 設定輸出到 terminal 的編碼
set termencoding=utf-8
set backupcopy=yes

" settings
set nocompatible  " no compatible with vi
set path=**
set complete-=i " remove include fine from complete
set termguicolors
set regexpengine=1

""Use softtabstop spaces instead of tab characters for indentation
set expandtab
set tabstop=4
"Indent by 4 spaces when pressing <TAB>
set softtabstop=4
" 設置縮進的空格數為
" "Indent by 4 spaces when using >>, <<, == etc.
set shiftwidth=4
set laststatus=2
set grepprg=global\ -t
set grepformat=%m\	%f\	%l
set sidescroll=5
set scrolljump=5
" http://stackoverflow.com/questions/903934/unable-to-make-gray-eol-character-by-vimrc
" http://yyq123.blogspot.tw/2011/11/vim-listchars.html
set nolist " displayed ^M / $
set listchars=eol:℗,tab:>-,trail:»,extends:>,precedes:<
set nowrap

"set foldmethod=manual
set foldmethod=marker
"set foldmethod=indent

"set ruler可顯示最後一行的狀態
set ruler
" ignorecase 搜索模式時忽略大小寫
set ignorecase
" incsearch 輸入搜索模式時同時高亮部分的匹配
set incsearch
"set hlsearch 高亮度反白
set hlsearch
" autoindent 选项根据上一行决定新行的缩进
" smartindent 选项智能自动缩进
" expandtab 选项将 tab 转换为空格
set autoindent
set smartindent
" show line number
" this is replace via function ToggleNumber

"   當 backspace 為 2 時，就是可以刪除任意值；0 或 1
"   時，僅可刪除剛剛輸入的字元， 而無法刪除原本就已經存在的文字了
set backspace=2
"這四個選項控制 C 程式縮進:
"'cindent'       使 Vim 對 C 程式自動縮進。
"'cinkeys'       指定在插入模式下按哪個鍵可以再次縮進。
"'cinoptions'    設定你喜好的縮進模式。
"'cinwords'      定義在下一行中開始一個額外縮進的關鍵字。
set cinoptions=>s,e0,n0,f0,{0,}0,^0,:0,=s,ps,t0,+s,(0,U1,us,)20,*30,g0

" set viminfo
" '20 is save mark which max is 20
" % is buffers list
" :30 is the lines in history record to be saved
"set viminfo='20,\"100,:30,%,n~/.viminfo

" make vim's auto-complete behave like bash's default auto-complete in edit
set wildmenu

" wildmode is used for cmdline-completion
" see vim tip
" http://vim.wikia.com/wiki/Great_wildmode/wildmenu_and_console_mouse
set wildmode=list:longest
if has("statusline")
    " show [enc][tenc][fenc] on statusline
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&enc==\"\"?\"\?\":&enc).\"]\"}%{\"[\".(&tenc==\"\"?\"\?\":&tenc).\"]\"}%{\"[\".(&fenc==\"\"?\"\?\":&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

" vim return to last edit line
if has("autocmd")
    augroup vimrc_stayput
        autocmd BufRead *.txt set tw=78
        autocmd BufReadPost *
           \ if line("'\"") > 0 && line ("'\"") <= line("$") |
           \   exe "normal g'\"" |
           \ endif |
           \ autocmd! vimrc_stayput CursorMoved,CursorMovedI
   augroup END
endif

" These two options together determine the behavior when part of a
"        mapped key sequence or keyboard code has been received:
"
"        'timeout'    'ttimeout'         action
"           off          off             do not time out
"           on           on or off       time out on :mappings and key codes
"           off          on              time out on key codes
"
"
"set timeout timeoutlen=1000 ttimeoutlen=100
set showcmd " this cmd will replace before  deleteTrailingWhiteSpace

" set filename completion case-insensitive
" http://stackoverflow.com/questions/3686841/vim-case-insensitive-filename-completion
set wildignorecase

" fix slow scrolling in vim
" ref http://eduncan911.com/software/fix-slow-scrolling-in-vim-and-neovim.html
set lazyredraw

noremap <C-g> <C-a>

" syntax
autocmd BufNewFile,BufRead *.yaml,*.yml so ~/.vim/syntax/yaml.vim
autocmd BufRead,BufNewFile *.md setlocal textwidth=100
autocmd BufRead,BufNewFile README.* setlocal textwidth=100
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags noci
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
autocmd FileType make set noexpandtab
autocmd FileType rust nmap gd <Plug>(rust-def)
autocmd FileType rust nmap gs <Plug>(rust-def-split)
autocmd FileType rust nmap gx <Plug>(rust-def-vertical)
autocmd FileType rust nmap <leader>gd <Plug>(rust-doc)

"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.vim/plugged')

Plug '/home/iamsleep/bash/fzf/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'iamsleep/vim-airline-themes'
Plug 'iamsleep/nova-vim'

" A solid language pack for Vim
Plug 'sheerun/vim-polyglot'
" https://github.com/plasticboy/vim-markdown under vim-polyglot
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" golang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': ':CocInstall coc-tsserver coc-json coc-java coc-tabnine coc-pairs coc-yaml coc-phpls coc-snippets coc-explorer coc-prettier coc-highlight' }

" surround
Plug 'tpope/vim-surround'

" The dark powered file explorer implementation
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

""" Viewer & Finder for LSP symbols and tags
""Plug 'liuchengxu/vista.vim'
""let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
""let g:vista_sidebar_position = 'vertical topleft'
""let g:vista_default_executive = 'coc'

" submline text visual
Plug 'terryma/vim-multiple-cursors'

" Vim-clap is a modern generic interactive finder and dispatcher, based on the newly feature: floating_win of neovim or popup of vim. The goal of vim-clap is to work everywhere out of the box, with fast response. 
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" new color theme
Plug 'chuling/ci_dark'
" theme elly https://github.com/ryuta69/elly.vim
Plug 'ryuta69/elly.vim'

call plug#end()

" theme
set t_Co=256
silent! colorscheme elly

" delete white space
nnoremap <Leader>d$ :<C-u>%DeleteTrailingWhitespace<CR>
vnoremap <Leader>d$ :DeleteTrailingWhitespace<CR>
let g:DeleteTrailingWhitespace_ChoiceAffectsHighlighting = 1

" php micro
nnoremap <Leader>error oerror_log(__FILE__ . " line: " . __LINE__ . "\n", 3, '/tmp/derek.log');<esc>
nnoremap <Leader>print oerror_log(var_export( $res, 1) . "\n", 3, '/tmp/derek.log');<esc>

" gtags
nnoremap <C-]> :GtagsCursor<CR>

" airline
let g:airline_highlighting_cache = 1
"let g:airline_theme='molokai'
let g:airline_theme='ci_dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1

let g:airline_right_sep = ' ∵ '
let g:airline_right_alt_sep = '<'
let g:airline_left_sep = '∵'
let g:airline_left_alt_sep = ">"
let g:airline_symbols_ascii = 1

set laststatus=2

" set relative number
let s:number_setting = 1
set number

" vim-clap
let g:clap_theme = 'material_design_dark'
map fu <esc>:Clap buffers<cr>
nnoremap fhi :execute 'Clap files'<esc>
nnoremap chi :execute 'Clap command_history'<esc>
nnoremap shi :execute 'Clap search_history'<esc>
nmap <space>e :CocCommand explorer<CR>

" vim-easy-align setting
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)

  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)

  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)

  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)

  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)

  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction


" vim-racer for rust autocomplete
set hidden
let g:racer_cmd = "/home/iamsleep/.cargo/bin/racer"
let g:racer_experimental_completer = 1

if !empty(glob("/home/iamsleep/.vim/plugged/coc.nvim/plugin/coc.vim"))
    source /home/iamsleep/.vim/nvim_config/coc.vim
endif

let GTAGSLABEL="native-pygments"

filetype plugin indent on
