" Floaterm
" let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=1.0
let g:floaterm_height=1.0
let g:floaterm_wintitle=0
let g:floaterm_title='[$1 | $2]'
let g:floaterm_autoclose=1
let g:floaterm_autohide=2
let g:floaterm_position='center'

" Configuration example

" Set floaterm window's background to
hi Floaterm  guibg=#282828

" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=#282828 guifg=#eeeeee
hi FloatermNC guibg=#2e3440 guifg=NONE



nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" Toggles the current open terminal
nnoremap   <silent> <leader>tt   :FloatermToggle<CR>
tnoremap   <silent> <leader>tt   <C-\><C-n>:FloatermToggle<CR>
" Choose from list to toggle
nnoremap   <leader>tl   :FloatermToggle<Space>
tnoremap   <leader>tl   <C-\><C-n>:FloatermToggle<Space>

nnoremap           <leader>tn    :FloatermNew --name=

nnoremap   <silent><leader>tf    :FloatermNew --name="lf"  lf<CR>
tnoremap   <silent><leader>tf    <C-\><C-n>:FloatermNew --name="lf" lf<CR>
nnoremap   <silent><leader>tp    :FloatermNew --name="ps"  procs<CR>
tnoremap   <silent><leader>tp    <C-\><C-n>:FloatermNew --name="ps" procs<CR>
nnoremap   <silent><leader>ty    :FloatermNew --name="top" ytop<CR>
tnoremap   <silent><leader>ty    <C-\><C-n>:FloatermNew --name="top" ytop<CR>

