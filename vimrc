colorscheme jellybeans
"colorscheme lucius

"v:shell_error
"let $VIMRUNTIME="/home/y/share/vim/vim73/"

syntax on
set t_Co=256
set ru
set ic
set incsearch
set hlsearch
set ts=8
set sts=4
set sw=4
set expandtab
"set cindent
set autoindent
set bs=2
set number
set backspace=2
set cinoptions=>s,e0,n0,f0,{0,}0,^0,:0,=s,ps,t0,+s,(0,U1,us,)20,*30,g0
set cursorline
"set showcmd
" set viminfo
" '20 is save mark which max is 20
" % is buffers list
" :30 is the lines in history record to be saved
set viminfo='20,\"100,:30,%,n~/.viminfo

highlight Constant      term=underline ctermfg=Red
highlight Identifier    term=underline ctermfg=cyan
highlight Statement     term=italic ctermfg=Brown
highlight PreProc       term=italic ctermfg=DarkYellow
highlight Type          term=italic ctermfg=DarkGreen
highlight Ignore        ctermfg=white
highlight Error         term=reverse ctermbg=Red ctermfg=White
highlight Todo          term=standout ctermbg=Yellow ctermfg=Red
highlight Search        term=italic ctermbg=Yellow ctermfg=Black
highlight ErrorMsg      term=reverse ctermbg=Red ctermfg=White
highlight StatusLine    ctermfg=darkblue  ctermbg=gray
highlight StatusLineNC  ctermfg=brown   ctermbg=darkblue
highlight Subtitle      ctermfg=brown   ctermbg=gray
highlight MatchParen    ctermbg=Yellow


colorscheme jellybeans

" set cursorline,cursorcolumn and color in move
set cursorline
set cursorcolumn
highlight Cursorline    ctermbg=235
highlight Cursorcolumn  ctermbg=236


" set line number color
highlight LineNr        ctermfg=155


highlight Normal        ctermfg=249
" set word between quote show transparent
highlight String        cterm=none       ctermbg=235 ctermfg=225
highlight Character     cterm=none       ctermbg=235 ctermfg=215
highlight Special       cterm=none       ctermbg=235 ctermfg=87

"set makeprg=gmake
set makeprg=gmake\ OPTFLAG=-g

"set foldmethod=manual
set foldmethod=marker
"set foldmethod=indent


"set equalprg=perltidy
set equalprg=indent

" for makefile
" set expandtab
autocmd FileType make set noexpandtab
autocmd FileType make set sw=8
autocmd FileType make set sts=8

set ls=2

set grepprg=global\ -t
set grepformat=%m\	%f\	%l

:set sidescroll=5
:set scrolljump=5
:set listchars+=precedes:<,extends:>
:set nowrap

"""
""" ref: http://blog.yzlin.org/2008/05/14/22/
""" ref: http://blog.yzlin.org/2007/12/12/3/
"""
" 所有可能的檔案編碼
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1
" 啟動後使用 utf-8 編碼
set encoding=utf-8
" 新開的檔案預設是 utf-8 編碼
set fileencoding=utf-8
" 設定輸出到 terminal 的編碼
set termencoding=utf-8
" 將 unicode 中不確定的字符表示成雙字符，在 unicode 下才有用
set ambiwidth=double

set backupcopy=yes
"set encoding=big5
set termencoding=utf-8
set fileencodings=utf-8,big5,gbk,euc-jp,euc-kr,utf-bom,iso8859-1

"
" textMate-style plugin
"
:filetype plugin on


"
" make vim's auto-complete behave like bash's default auto-complete in edit
"
set wildmenu
set wildmode=list:longest
if has("statusline")
    " show [enc][tenc][fenc] on statusline
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&enc==\"\"?\"\?\":&enc).\"]\"}%{\"[\".(&tenc==\"\"?\"\?\":&tenc).\"]\"}%{\"[\".(&fenc==\"\"?\"\?\":&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

"
" setting for acp_completeOption
" 1. 增加預設搜尋範圍
" 2. add Snipmate template mapping
"
let g:acp_completeOption = '.,k,w,b,u,t,i'


" set dictionary content
set dictionary+=~/.vim/dict/phpdict
"set dictionary+=~/.vim/dict/words
set complete-=k complete+=k
au FileType * exe('setl dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')


"
" fuzzyfinder
"

" map ft <esc>:FufTag<cr>
" map ff <esc>:FufFile<cr>
" map fcd <esc>:FufDir<cr>
" map fba <esc>:FufAddBookmark<cr>
" map fbl <esc>:FufBookmark<cr>
map fu <esc>:FufBuffer<cr>

" "let Tlist_Inc_Winwidth = 0
" "nnoremap <silent> <F8> :Tlist<CR>

"
" winmanager
"
:map <c-w><c-f> :FirstExplorerWindow<cr>
:map <c-w><c-b> :BottomExplorerWindow<cr>

" insert mode
" 補齊括弧
" 語法
" inoremap  triger_char  mapping_str
" 映射指令     觸發字元     映射字串
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

"    C-x C-l         行補齊
"    C-x C-n         以目前檔案做關鍵字補齊
"    C-x C-k         由字典補齊
"    C-x C-t         由分類詞庫補齊
"    C-x C-i         從目前以及被引入的檔案為來源做關鍵字補齊
"    C-x C-]         標籤 (tags) 補齊
"    C-x C-f         檔案名稱補齊
"    C-x C-d         定義或巨集補齊
"    C-x C-v         Vim 指令補齊
"    C-x C-u         使用者定義函式補齊
"    C-x C-o         全補齊函式做補齊
"    C-x s           拼字校正補齊
"    C-n             關鍵字補齊，不過依據 `complete` 選項來決定關鍵字來源
"    alt + e is ctrl+v and alt+e
"imap e <c-x><c-i>
"imap w <c-x><c-o>

"let g:Powerline_symbols = 'fancy'


" insert mode bind InsertChange
" function s:AutoCompleteSave()
"    "call writefile(inputsecret(),".vim/dict/worddict");
"    echo tempname()
" endfunction
" autocmd InsertLeave * call s:AutoCompleteSave()

" return to last edit line
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif

" plugin pathogen
" manage plugin in vim
"call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" plugin delete trailing white space
" plugin show trailing white space
let g:DeleteTrailingWhitespace_Action = 'delete'
let g:DeleteTrailingWhitespace_ChoiceAffectsHighlighting = 1

set nocp
set showcmd " this cmd will replace before  deleteTrailingWhiteSpace


" map localleader
" map key to vim plugin Clam
nnoremap ! :Clam<space>
vnoremap ! :ClamVisual<space>
let maplocalleader = ","
noremap <localleader>r Refresh
noremap <localleader>p Pipe

"
" map global, gtags in source tree
"
nnoremap <C-]> :GtagsCursor<CR>

set nocompatible " remove compatible to vi

"
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
