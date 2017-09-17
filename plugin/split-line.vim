" vim-split-line
" Author: Sheldon Johnson
" Version: 0.0.1

if exists('g:loaded_split_line') || &compatible
  finish
endif

let g:loaded_split_line = 1

function! SplitLine()
  let l:line = getline('.')
  let l:lnum = line('.')
  let l:cnum =  col('.')

  let l:first_line = l:line[0:(l:cnum - 2)]
  let l:first_line = substitute(l:first_line, '\s\+$', '', '')

  let l:second_line = l:line[(l:cnum - 1):-1]

  call setline(l:lnum, l:first_line)
  call append(l:lnum, l:second_line)

  call cursor(l:lnum + 1, 1)
  normal! ==
endfunction

command! SplitLine call SplitLine()
