
let s:save_cpo = &cpo
set cpo&vim

""" action
function! setLinenumber#toggle()
    if (&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
