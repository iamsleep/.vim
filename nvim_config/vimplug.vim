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

" golang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:python3_host_prog='/home/iamsleep/local/bin/python3.6'
"let g:deoplete#enable_at_startup = 1

" colorscheme
Plug 'mhinz/vim-janah'

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': ':CocInstall coc-tsserver coc-json coc-java coc-tabnine coc-pairs coc-yaml coc-phpls coc-snippets' }
" , 'sed -i 's/lsp": false/lsp": true/g' .config/TabNine/tabnine_config.json'] }
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
"Plug 'marlonfan/coc-phpls', {'do': 'yarn install --frozen-lockfile'}
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

" function! BuildYCM(info)
"   " info is a dictionary with 3 fields
"   " - name:   name of the plugin
"   " - status: 'installed', 'updated', or 'unchanged'
"   " - force:  set on PlugInstall! or PlugUpdate!
"   if a:info.status == 'installed' || a:info.force
"     !./install.py --all
"   endif
" endfunction
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" nerd tree
Plug 'preservim/nerdtree'
silent! autocmd StdinReadPre * let s:std_in=1
silent! autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
silent! autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
silent! autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Include Phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'

silent! autocmd BufEnter * call ncm2#enable_for_buffer()
silent! set completeopt=noinsert,menuone,noselect

call plug#end()
