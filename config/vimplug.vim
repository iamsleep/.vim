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

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:python3_host_prog='/home/iamsleep/local/bin/python3.6'
    let g:deoplete#enable_at_startup = 1
else
    Plug 'Shougo/neocomplete.vim'
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'Shougo/vimproc.vim'
    Plug 'honza/vim-snippets'
    Plug 'shawncplus/phpcomplete.vim'
    Plug 'm2mdas/phpcomplete-extended'
endif

call plug#end()
