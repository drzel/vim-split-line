function! splitline#SplitLine() abort
  let l:cnum = col('.')
  let l:lnum = line('.')

  if l:cnum == 1
    call append(l:lnum - 1, '')
  else
    let l:line = getline('.')

    let l:first_line = l:line[0:(l:cnum - 2)]
    let l:first_line = splitline#RStrip(l:first_line)
    let l:second_line = l:line[(l:cnum - 1):-1]

    call setline(l:lnum, l:first_line)
    call append(l:lnum, l:second_line)

    call cursor(l:lnum + 1, 1)
    normal! ==
  endif
endfunction

function! splitline#RStrip(str) abort
  return substitute(a:str, '\s\+$', '', '')
endfunction
