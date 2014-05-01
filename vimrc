"colorscheme jellybeans
"colorscheme lucius

"v:shell_error
"let $VIMRUNTIME="~/local/share/vim/vim73/"

syntax on
set t_Co=256

" {{{ highlight color
highlight Constant      term=underline    ctermfg=Red
highlight PreProc       term=italic       ctermfg=DarkYellow
highlight Type          term=italic       ctermfg=DarkGreen
highlight Ignore        ctermfg=white
highlight Error         term=reverse      ctermbg=Red        ctermfg=White
highlight Todo          term=standout     ctermbg=Yellow     ctermfg=Red
highlight ErrorMsg      term=reverse      ctermbg=Red        ctermfg=White
highlight Subtitle      ctermfg=brown     ctermbg=gray
highlight MatchParen    ctermbg=Yellow


"colorscheme jellybeans
"colorscheme gruvbox

" change statement color, like if,else in php,c and highlight in vimrc, etc.
highlight Statement     ctermfg=107
" any variable name
highlight Identifier    ctermfg=147

" set cursorline,cursorcolumn and color in move
set cursorline
set cursorcolumn
highlight Cursorline   cterm=none   ctermbg=241
highlight Cursorcolumn cterm=none   ctermbg=241

" set line number color
" highlight LineNr        ctermfg=45
" highlight LineNr        ctermfg=117
highlight LineNr       cterm=none   ctermfg=117  ctermbg=0
" highlight CursorLineNr cterm=none   ctermfg=38    ctermbg=0

" set word between quote show transparent
highlight String       cterm=none   ctermfg=117  ctermbg=0
highlight Character    cterm=none   ctermfg=249  ctermbg=0
" set [,],;,'," color
highlight Special      cterm=none   ctermfg=249  ctermbg=0
highlight Normal       cterm=none   ctermfg=249  ctermbg=0
highlight NonText      cterm=none   ctermfg=249  ctermbg=0
highlight NonText      cterm=NONE   ctermfg=NONE

" /word serch word highlight
highlight Search       cterm=none   ctermfg=0    ctermbg=Yellow

" special key like :q<Enter>
highlight SpecialKey   cterm=none   ctermfg=249  ctermbg=0

" marker {{{ }}} color
highlight Folded       cterm=none   ctermfg=249  ctermbg=0

" highlight vim status line
highlight StatusLine    ctermfg=darkblue  ctermbg=229
highlight StatusLineNC  ctermfg=brown     ctermbg=darkblue

" }}}
"
" {{{ gruvbox colorscheme setting
colorscheme gruvbox
highlight Comment  cterm=none ctermfg=253  ctermbg=0
" }}}

"set makeprg=gmake
set makeprg=gmake\ OPTFLAG=-g

" {{{ file type tab set
autocmd FileType make setlocal noexpandtab
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
set listchars+=precedes:<,extends:>
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
set autoindent
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
set cursorline
" set viminfo
" '20 is save mark which max is 20
" % is buffers list
" :30 is the lines in history record to be saved
set viminfo='20,\"100,:30,%,n~/.viminfo

" }}}

" {{{ vim encoding setting
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

" }}}

" {{{ textMate-style plugin
filetype plugin on
filetype on
" }}}

" {{{ make vim's auto-complete behave like bash's default auto-complete in edit
set wildmenu
" wildmode is used for cmdline-completion
" see vim tip
" http://vim.wikia.com/wiki/Great_wildmode/wildmenu_and_console_mouse
set wildmode=list:longest
if has("statusline")
    " show [enc][tenc][fenc] on statusline
    set statusline=%<%f\ %h%m%r%=%{\"[\".(&enc==\"\"?\"\?\":&enc).\"]\"}%{\"[\".(&tenc==\"\"?\"\?\":&tenc).\"]\"}%{\"[\".(&fenc==\"\"?\"\?\":&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
" }}}

" {{{ setting for acp_completeOption
" 1. 增加預設搜尋範圍
" 2. add Snipmate template mapping
"
let g:acp_completeOption = '.,w,k,w,b,u,t,i'
" }}}

" {{{ set dictionary content
"set dictionary-=~/.vim/dictionary dictionary+=~/.vim/dict/phpdict
"set dictionary-=~/newauctions/commonlib/trunk/tests/functional/feature/features dictionary+=~/newauctions/commonlib/trunk/tests/functional/feature/features
"set complete-=k complete+=k
set complete-=k~/newauctions/commonlib/trunk/tests/functional/feature/features/*.feature
set complete+=k~/newauctions/commonlib/trunk/tests/functional/feature/features/*.feature
set complete-=U complete+=U
"set thesaurus+=~/newauctions/commonlib/trunk/tests/functional/feature/features/*.feature
autocmd FileType * exe('setlocal dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')
" }}}

" {{{ vim plugin fuzzyfinder key biding
"

" map ft <esc>:FufTag<cr>
" map ff <esc>:FufFile<cr>
" map fcd <esc>:FufDir<cr>
" map fba <esc>:FufAddBookmark<cr>
" map fbl <esc>:FufBookmark<cr>
map fu <esc>:FufBuffer<cr>
" :map <c-w><c-f> :FirstExplorerWindow<cr>
" :map <c-w><c-b> :BottomExplorerWindow<cr>

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

" insert mode bind InsertChange
" function s:AutoCompleteSave()
"    "call writefile(inputsecret(),".vim/dict/worddict");
"    echo tempname()
" endfunction
" autocmd InsertLeave * call s:AutoCompleteSave()
" }}}

" {{{ vim return to last edit line
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif
" }}}

" {{{ pathogen setting
"
" plugin pathogen
" manage plugin in vim
"call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" }}}

" {{{ vim plugin delete trailing white space
" plugin show trailing white space
" instead of using below command, use DeleteTrailingWhitespace
" let g:DeleteTrailingWhitespace_Action = 'delete'
nnoremap <Leader>d$ :<C-u>%DeleteTrailingWhitespace<CR>
vnoremap <Leader>d$ :DeleteTrailingWhitespace<CR>
let g:DeleteTrailingWhitespace_ChoiceAffectsHighlighting = 1
" }}}

" {{{ vim macro for php
nnoremap <Leader>error oerror_log(__FILE__ . " line: " . __LINE__);<esc>
nnoremap <Leader>print oerror_log(print_r( $res, 1));<esc>
nnoremap <Leader>format o/* vim: set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4: */<esc>
" }}}

" {{{ global key mapping
"
" map global, gtags in source tree
"
nnoremap <C-]> :GtagsCursor<CR>

" }}}

" {{{ triger key timeout
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
set nocompatible  " no compatible with vi
set showcmd " this cmd will replace before  deleteTrailingWhiteSpace

" }}}

" {{{ vim plugin indent guides setting
" Indent Guides : A plugin for visually displaying indent levels in Vim
"let g:indent_guides_guide_size=1
"let g:indent_guides_indent_levels=5
"let g:indent_guides_auto_colors = 0
"set background=light
"autocmd VimEnter,Colorscheme *
"hi IndentGuidesOdd  guibg=red   ctermbg=3
" }}}

" let PHP_BracesAtCodeLevel = 1
" filetype indent on will result of insert mode indent strange.
" filetype indent on
" {{{
autocmd! BufRead,BufNewFile *.ros setfiletype php
autocmd! BufRead,BufNewFile *.inc setfiletype php
" }}}

" {{{ vbookmark setting
" http://www.vim.org/scripts/script.php?script_id=4299
let g:vbookmark_bookmarkSaveFile = $HOME . '/.vimbookmark'
" }}}

" {{{ vim plugin powerline display setting
let g:Powerline_symbols = 'fancy'
" }}}

" {{{ relative line number by default
set relativenumber
let s:number_setting = 1

function! ToggleNumber()
    if s:number_setting == 0
        set relativenumber
        let s:number_setting = 1
    elseif s:number_setting == 1
        set number
        let s:number_setting = 2
    else
        set nonumber
        set norelativenumber
        let s:number_setting = 0
    endif
endfunction

" map gn to toggle rnu -> nu -> nonu
nmap gn :call ToggleNumber()<CR>
" }}}

" add feature file to vim buffer
" we need to do this for line completion
" help i_CTRL-X_CTRL-L to check command
" {{{ add feature file to vim buffer
let g:your_feature_file_path = "/home/iamsleep/newauctions/"
function! AddAllFeatureFileToBuffer()
    if (&filetype == 'cucumber')
        " let s:feature_file = system('global -Po .feature$')
        let s:feature_file = system('find ' . g:your_feature_file_path . ' -type f -name "*.feature"')
        for file in split(s:feature_file, "\n")
            exec 'silent! badd ' file
        endfor
    endif
endfunc

nmap gc :call AddAllFeatureFileToBuffer()<CR>

" delete buffers, but these still exist in unlisted-buffer
function! ClearHiddenRO()
    let index = 1
    let last_index = bufnr('$')
    let current_buffer_number = bufnr('%')

    while index <= last_index
        if index != current_buffer_number
           execute "silent! bdelete!" index
        endif
        let index += 1
    endwhile
endfunc

nmap  gt :call ClearHiddenRO()<CR>
" }}}
