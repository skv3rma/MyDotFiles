
"If you prefer slightly different colors from what Jellybeans defines,
"you can set g:jellybeans_overrides in your .vimrc to a dictionary of custom highlighting parameters:
colorscheme jellybeans
let g:airline_theme='jellybeans'
let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'Comment': { 'guifg': 'cccccc' },
\}

"To set a custom background color, override the special background highlight group:

let g:jellybeans_overrides = {
\    'background': { 'guibg': '000000' },
\}

let g:jellybeans_use_term_italics = 1
