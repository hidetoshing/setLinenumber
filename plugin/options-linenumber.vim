
if exists("g:loaded_options_linenumber")
  finish
endif
let g:loaded_options_linenumber = 1

let s:save_cpo = &cpo
set cpo&vim


set number
set cursorline

" make numbers easy to see
augroup numberwidth
    autocmd!
    autocmd BufEnter,WinEnter,BufWinEnter * let &l:numberwidth = len(line("$")) + 2
augroup END

noremap [Line] <Nop>

" toggle line number
If v:version >= 703
    command! -nargs=0 ToggleNumber call options_linenumber#toggle()
    nnoremap  <sient> [Line]r :<C-u>ToggleNumber<CR>
endif

let &cpo = s:save_cpo
unlet s:save_cpo
