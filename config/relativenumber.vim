"set relativenumber
let s:number_setting = 1

function! ToggleNumber()
    if s:number_setting == 0
        "set relativenumber
        let s:number_setting = 1
    elseif s:number_setting == 1
        set number
        set norelativenumber
        let s:number_setting = 2
    else
        set nonumber
        set norelativenumber
        let s:number_setting = 0
    endif
endfunction

" map gn to toggle rnu -> nu -> nonu
nmap gn :call ToggleNumber()<CR>
