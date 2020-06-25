set background=dark
set termguicolors

let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1

let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
"let g:nord_underline = 1
colorscheme nord
" let g:airline_theme='base16_nord'
let g:airline_theme='nord'


" Make background transparent for many things
"hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
"hi LineNr ctermfg=NONE guibg=#252931
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=NONE guibg=NONE
"hi! StatusLineNC guifg=NONE guibg=NONE

" Try to hide vertical spit and end of buffer symbol
"hi! VertSplit ctermbg=255 gui=NONE guifg=#17252c guibg=#17252c
" hi! VertSplit ctermbg=255 gui=NONE guifg=#434343 guibg=#434343
"hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#3b4252 guifg=#3b4252

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

