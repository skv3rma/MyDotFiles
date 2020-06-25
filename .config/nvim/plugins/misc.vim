
" === Signify === "
let g:signify_sign_delete = '-'


" Change vertical split character to be a space (essentially hide it)
"set fillchars+=vert:.

" Call method on window enter
augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()
augroup END

" Change highlight group of preview window when open
function! Handle_Win_Enter()
  if &previewwindow
    setlocal winhighlight=Normal:MarkdownError
  endif
endfunction



" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" persistent fold support
autocmd BufWinLeave *.* silent! mkview
autocmd BufWinEnter *.* silent! loadview

"
"Displays text in red if crosses the color column value
" highlight OverLength ctermbg=red ctermfg=white guibg=#161616 guifg=#fff
" match OverLength /\%81v.\+/

" Automatically deletes all trailing spaces on save
autocmd BufWritePre * %s/\s\+$//e




"To start the command line with :e /my/path/to/project/, you could use this:
nnoremap <leader>e ':edit '.projectroot#guess().'/'

" Vim Wiki Settings

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
