"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt#L83
" all setting doc description here
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_highlighting_cache = 1
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1

let g:airline_right_sep = ' ∵ '
let g:airline_symbols_ascii = 1

"function! MyLineNumber()
"  return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). ' | '.
"    \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
"endfunction
"
"call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})
"
"let g:airline_section_z = airline#section#create(['%3p%%: ', 'linenr', ':%3v'])
"set rtp+=/home/iamsleep/.local/lib/python2.6/site-packages/powerline/bindings/vim/
set laststatus=2
