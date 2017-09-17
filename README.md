# vim-split-line

Without exiting normal mode, joining two lines is easy: <kbd>J</kbd>

But splitting and auto-indenting a line is a little awkward:

| Context                                       | Keyboard                                                               |
| ----------------------------------------------|----------------------------------------------------------------------- |
| Splitting on cursor                           | <kbd>i</kbd> <kbd>Enter</kbd> <kbd>Esc</kbd>                           |
| Splitting on one char of whitespace           | <kbd>r</kbd> <kbd>Enter</kbd>                                          |
| Splitting on more than one char of whitespace | <kbd>c</kbd> <kbd>i</kbd> <kbd>w</kbd> <kbd>Enter</kbd> <kbd>Esc</kbd> | 

vim-split-line gives the `:SplitLine` command. Without leaving normal
mode it:

  - Splits the line under the cursor
  - Remove trailing whitespace on first line
  - Auto-indents second line

## Installation

Install with a plugin manager.

## Configuration

```vim
nnoremap S :SplitLine<CR>
```

I use <kbd>S</kbd> because the default behaviour is almost identical to
<kbd>c</kbd> <kbd>c</kbd>, and it has a nice symmetry with <kbd>J</kbd>.
