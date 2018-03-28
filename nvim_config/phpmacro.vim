nnoremap <Leader>error oerror_log(__FILE__ . " line: " . __LINE__ . "\n", 3, '/tmp/derek.log');<esc>
nnoremap <Leader>print oerror_log(var_export( $res, 1) . "\n", 3, '/tmp/derek.log');<esc>

function! Tail()
    execute '!find /home/y/var/ycb/cache/ /home/y/var/run/ycb/cache/ -maxdepth 1 -regex ".*/[0-9]+" | sudo xargs rm -r; sudo ycbDbAdmin -c CLEANUP && sudo ycbDbAdmin -c FLUSH && tail -f /home/y/logs/yapache/error /tmp/derek.log'
endfunction

nnoremap <Leader>tail :call Tail()<CR>
