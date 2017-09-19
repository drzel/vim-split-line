" vim-split-line
" Author: Sheldon Johnson
" Version: 0.0.1

if exists('g:loaded_split_line') || &compatible
  finish
endif

let g:loaded_split_line = 1

command! SplitLine call splitline#SplitLine()
