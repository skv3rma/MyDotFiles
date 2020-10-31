let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_winblend=1

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

tnoremap   <silent>   <leader>t   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <leader>t    :FloatermToggle<CR>

command! Vifm FloatermNew vifm

nnoremap   <silent>   <F2>    :Vifm


