call plug#begin('~/.vim/plugged')

Plug '/home/iamsleep/bash/fzf/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'iamsleep/vim-airline-themes'
Plug 'iamsleep/nova-vim'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:python3_host_prog='/home/iamsleep/local/bin/python3.6'
"let g:deoplete#enable_at_startup = 1

" colorscheme
Plug 'mhinz/vim-janah'

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'zxqfl/tabnine-vim'

"Plug 'w0rp/ale'
" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
"let g:ale_completion_enabled = 1

" surround
Plug 'tpope/vim-surround'

call plug#end()
