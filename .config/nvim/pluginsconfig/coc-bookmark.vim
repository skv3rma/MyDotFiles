" mark create
nmap <leader>ma <Plug>(coc-bookmark-annotate)
" mark toggle
nmap <leader>mt <Plug>(coc-bookmark-toggle)
" mark next
nmap <leader>mj <Plug>(coc-bookmark-next)
nmap <leader>mk <Plug>(coc-bookmark-prev)
nmap <silent><leader>mc :CocCommand bookmark.clearForCurrentFile<CR>
nmap <silent><leader>mca :CocCommand bookmark.clearForAllFiles<CR>

nmap <silent><leader>ml :CocList bookmark<CR>
nmap <silent><leader>mh :CocList bookmark<CR>
nmap <silent><leader>mm :CocList bookmark<CR>

function! s:my_bookmark_color() abort
  let s:scl_guibg = matchstr(execute('hi SignColumn'), 'guibg=\zs\S*')
  if empty(s:scl_guibg)
    let s:scl_guibg = 'NONE'
  endif
  exe 'hi MyBookmarkSign guifg=' . s:scl_guibg
endfunction
call s:my_bookmark_color() " don't remove this line!

augroup UserGitSignColumnColor
  autocmd!
  autocmd ColorScheme * call s:my_bookmark_color()
augroup END
