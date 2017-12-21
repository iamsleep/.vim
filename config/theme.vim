set t_Co=256
highlight Constant      term=underline    ctermfg=Red
highlight PreProc       term=italic       ctermfg=DarkYellow
highlight Type          term=italic       ctermfg=DarkGreen
highlight Ignore        ctermfg=white
highlight Error         term=reverse      ctermbg=Red        ctermfg=White
highlight Todo          term=standout     ctermbg=Yellow     ctermfg=Red
highlight ErrorMsg      term=reverse      ctermbg=Red        ctermfg=White
highlight Subtitle      ctermfg=brown     ctermbg=gray
highlight MatchParen    ctermbg=Yellow

"set cursorcolumn

" set line number color
" highlight CursorLineNr cterm=none   ctermfg=38    ctermbg=0

" set word between quote show transparent
" set [,],;,'," color

" /word serch word highlight
highlight Search       cterm=none   ctermfg=199    ctermbg=0

" special key like :q<Enter>
highlight SpecialKey   cterm=none   ctermfg=249  ctermbg=0

" marker {{{ }}} color
highlight Folded       cterm=none   ctermfg=253  ctermbg=237

" highlight vim status line
highlight StatusLine    ctermfg=darkblue  ctermbg=229
highlight StatusLineNC  ctermfg=brown     ctermbg=229


" http://stackoverflow.com/questions/903934/unable-to-make-gray-eol-character-by-vimrc
"highlight NonText  cterm=none   ctermfg=245     ctermbg=228
"highlight Normal   cterm=none   ctermfg=186     ctermbg=228
"highlight Comment  cterm=none   ctermfg=245     ctermbg=228
"highlight LineNr   cterm=none   ctermfg=229     ctermbg=228

" set word between quote show transparent
highlight String       cterm=none   ctermfg=147 ctermbg=153
highlight Character    cterm=none   ctermfg=147 ctermbg=153

" like '$varable' color
highlight Identifier   ctermfg=0    ctermbg=228

" set [,],;,'," color
highlight Special      cterm=none   ctermfg=147  ctermbg=228

set background=light

" change statement color, like if,else in php,c and highlight in vimrc, etc.
set cursorline
"set cursorcolumn

" current cursor line and column color
"highlight Cursorline   cterm=none   ctermfg=15 ctermbg=15
"highlight Cursorcolumn cterm=none   ctermfg=15 ctermbg=15

colorscheme nova
