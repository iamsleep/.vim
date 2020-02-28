" append FZF
set rtp+=~/bash/fzf/
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_buffers_jump = 1
let g:fzf_command_prefix = 'FZF'
map fu <esc>:FZFBuffers<cr>
nnoremap <leader>ff  :execute 'FZFFiles'<esc>
nnoremap dir :execute 'FZFFiles ' . input("DIRECTORY: ")<esc>
nnoremap fhi :execute 'FZFHistory'<esc>
nnoremap chi :execute 'FZFHistory:'<esc>
nnoremap shi :execute 'FZFHistory/'<esc>
" end append FZF

