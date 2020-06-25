" ignore these directories
" Make CtrlP use ag for listing the files. Way faster and no useless files.
" This will only work if you have installed 'silver search' sudo apt-get
" install ag

let g:ag_working_path_mode="r"
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --hidden -g ""'
let g:ctrlp_use_caching = 0

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" enable this line if the problem is related to search root path
"================= Automatically Change current working directory to project root
" function! <SID>AutoProjectRootCD()
"   try
"     if &ft != 'help'
"       ProjectRootCD
"     endif
"   catch
"     " Silently ignore invalid buffers
"   endtry
" endfunction

" autocmd BufEnter * call <SID>AutoProjectRootCD()
" disable status line
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
