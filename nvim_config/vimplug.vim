call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'trevordmiller/nova-vim'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:python3_host_prog='/home/iamsleep/local/bin/python3.6'
let g:deoplete#enable_at_startup = 1

Plug 'ozelentok/deoplete-gtags'

" colorscheme
Plug 'mhinz/vim-janah'

" rust
Plug 'rust-lang/rust.vim'
call plug#end()
