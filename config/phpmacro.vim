nnoremap <Leader>error oerror_log(__FILE__ . " line: " . __LINE__ . "\n", 3, '/tmp/derek.log');<esc>
nnoremap <Leader>print oerror_log(var_export( $res, 1) . "\n", 3, '/tmp/derek.log');<esc>
