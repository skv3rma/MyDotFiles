" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" - Popup window
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.9 } }
" hidden by default, ctrl-/ to toggle
" preview window at the top
let g:fzf_preview_window = ['up:60%:wrap', 'ctrl-/']
" preview window at the right
" let g:fzf_preview_window = ['right:60%', 'ctrl-/']

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Path completion with custom source command
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Word completion with custom spec with popup layout option
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})

if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif

" autocmd! User FzfStatusLine call <SID>fzf_statusline()

" autocmd! FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" setup a command ProjectFiles
command! ProjectFiles execute 'FZFFiles' s:find_git_root()

nnoremap <silent><leader>fh :FZFHistory<CR>
nnoremap <silent><leader>fr :FZFHistory<CR>
nnoremap <silent><leader>fs :RG<CR>
nnoremap <silent><leader>ff :FZFFiles<CR>
nnoremap <silent><leader>fc :Commands<CR>
" Lines in the current buffer
nnoremap <silent><leader>fw :FZFBLines<Cr>
nnoremap <silent><leader>fa :FZFBLines<Cr>
" Lines in loaded buffers
nnoremap <silent><leader>fl :FZFBLines<Cr>
nnoremap <silent><leader>fb :Buffers<CR>
nnoremap <silent><leader>; :Buffers<CR>
nnoremap <silent><leader>fq :FZFQuickFix<CR>

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

nnoremap <silent><leader>. :ProjectFiles<CR>
