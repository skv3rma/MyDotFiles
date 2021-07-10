set hidden
set nobackup
set nowritebackup
set updatetime=600
set shortmess+=c
" Global coc extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-sh',
  \ 'coc-java-debug',
  \ 'coc-java',
  \ 'coc-java-dependency',
  \ 'coc-lists',
  \ 'coc-emmet',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-stylelintplus',
  \ 'coc-emoji',
  \ 'coc-yaml',
  \ 'coc-pyright',
  \ 'coc-explorer',
  \ 'coc-prettier',
  \ 'coc-tailwindcss',
  \ 'coc-xml',
  \ 'coc-yank',
  \ 'coc-json',
  \ 'coc-marketplace',
  \ 'coc-explorer',
  \ 'coc-tabnine',
  \ 'coc-highlight',
  \ 'coc-rls',
  \ 'coc-phpls',
  \ 'coc-rust-analyzer',
  \ 'coc-lua',
  \ 'coc-highlight',
  \ 'coc-kotlin-dev'
  \ ]
" === Coc.nvim === "

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" =============== adding commands from coc-nvim
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OverrideMethod   :call CocAction('runCommand', 'source.overrideMethods')

nnoremap <silent> <leader>cd <Plug>(coc-definition)
nnoremap <silent> <leader>cr <Plug>(coc-references)
nnoremap <silent> <leader>ci <Plug>(coc-implementation)
nnoremap <silent> <leader>cy <Plug>(coc-type-definition)
nnoremap <silent> <leader>ca :CocAction<CR>
nnoremap <silent> <leader>cc :CocCommand<CR>
nnoremap <silent> <leader>co :OverrideMethod<CR>
nnoremap <silent> <leader>ci :CocAction('runCommand', 'editor.action.organizeImport')<CR>
nnoremap <silent> <leader>cf :Format<CR>

" Find symbol of current document.
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <leader>ct  :<C-u>CocList -I symbols<cr>
"nnoremap <leader>co :call CocAction('runCommand','')

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use K to show documentation in preview window.
nnoremap <silent>K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nnoremap <leader>rn <Plug>(coc-rename)
" Rename current file
nnoremap <leader>rf :CocCommand workspace.renameCurrentFile<CR>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
vmap <silent><leader>a  <Plug>(coc-codeaction-selected)<CR>
nmap <silent><leader>a  <Plug>(coc-codeaction-selected)<CR>
" Remap keys for applying codeAction to the current line.
nmap <silent><leader>ac  <Plug>(coc-codeaction)<CR>
" Apply AutoFix to problem on the current line.
nmap <silent><leader>qf  <Plug>(coc-fix-current)<CR>



" === CocSnippet === "
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" Snippets
" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
