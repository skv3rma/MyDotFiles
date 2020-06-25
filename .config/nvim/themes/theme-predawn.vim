set background=dark
set termguicolors
colorscheme predawn
let g:airline_theme='zenburn'

" Try to hide vertical spit and end of buffer symbol
"hi! VertSplit ctermbg=255 gui=NONE guifg=#17252c guibg=#17252c
" hi! VertSplit ctermbg=255 gui=NONE guifg=#434343 guibg=#434343
"hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#161616 guifg=#161616

" Customize NERDTree directory
"hi NERDTreeCWD ctermbg=NONE ctermfg=234 guifg=#255 guibg=#000

" Make background color transparent for git changes
"hi! SignifySignAdd guibg=NONE
"hi! SignifySignDelete guibg=NONE
"hi! SignifySignChange guibg=NONE

" Highlight git change signs
"hi! SignifySignAdd  guifg=#99c794
"hi! SignifySignDelete guifg=#ec5f67
"hi! SignifySignChange guifg=#c594c5

