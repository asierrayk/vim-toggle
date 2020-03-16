let g:quickfix_is_open = 0
function! ToggleQuickfix()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

let g:loclist_is_open = 0
function! ToggleLocList()
    if g:loclist_is_open
        lclose
        let g:loclist_is_open = 0
        execute g:loclist_return_to_window . "wincmd w"
    else
        let g:loclist_return_to_window = winnr()
        lopen
        let g:loclist_is_open = 1
    endif
endfunction

