syntax on
set nocompatible  " no compatible with vi
set path=**
set complete-=i " remove include fine from complete

" {{{ file type tab set
"autocmd FileType make setlocal noexpandtab
"autocmd FileType make set noexpandtab
"autocmd FileType make set shiftwidth=8
"autocmd FileType make set softtabstop=8
""Use softtabstop spaces instead of tab characters for indentation
set expandtab
set tabstop=4
"Indent by 4 spaces when pressing <TAB>
set softtabstop=4
" 設置縮進的空格數為
" "Indent by 4 spaces when using >>, <<, == etc.
set shiftwidth=4
" }}}

" {{{ vim display setting
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

"set equalprg=perltidy
"set equalprg=indent
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
"set number

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
set viminfo='20,\"100,:30,%,n~/.viminfo

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
set timeout timeoutlen=1000 ttimeoutlen=100
set showcmd " this cmd will replace before  deleteTrailingWhiteSpace


" set filename completion case-insensitive
" http://stackoverflow.com/questions/3686841/vim-case-insensitive-filename-completion
set wildignorecase

" fix slow scrolling in vim
" ref http://eduncan911.com/software/fix-slow-scrolling-in-vim-and-neovim.html
set lazyredraw
"set synmaxcol=128
"syntax sync minlines=256
" end fix slow

noremap <C-g> <C-a>
