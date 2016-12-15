
let s:save_cpo = &cpo
set cpo&vim

""" action
function! options_linenumber#toggle()
    if &number
        set relativenumber
    else
        set number
    endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
