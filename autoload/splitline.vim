function! splitline#SplitLine() abort
  let l:line = getline('.')
  let l:lnum = line('.')
  let l:cnum = col('.')

  if l:cnum == 1
    call append(l:lnum - 1, '')
  else
    let l:first_line = l:line[0:(l:cnum - 2)]
    let l:first_line = substitute(l:first_line, '\s\+$', '', '')

    let l:second_line = l:line[(l:cnum - 1):-1]

    call setline(l:lnum, l:first_line)
    call append(l:lnum, l:second_line)

    call cursor(l:lnum + 1, 1)
    normal! ==
  endif
endfunction
