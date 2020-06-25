
" ======================== Start : Gruvbox Theme ==============================
" for dark version
set background=dark
" for light version
"set background=light
"set contrast
" this configuration option should be placed before `colorscheme gruvbox-material`
" available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_contrast_dark='hard'
" Italics for my favorite color scheme
let g:gruvbox_termcolors=256
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_undercurl=1
let g:gruvbox_invert_selection=0
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_invert_tabline=0
" draws a background behind the strings
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_guisp_fallback=1
colorscheme gruvbox

let g:airline_theme='gruvbox'


" Try to hide vertical spit and end of buffer symbol
"hi! VertSplit ctermbg=255 gui=NONE guifg=#17252c guibg=#17252c
" hi! VertSplit ctermbg=255 gui=NONE guifg=#434343 guibg=#434343
"hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c
hi! EndOfBuffer ctermbg=NONE ctermfg=234 guibg=#161616 guifg=#161616

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
