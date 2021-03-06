" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'black'
let g:limelight_conceal_ctermfg = 000

" Color name (:help gui-colors) or RGB color
" let g:limelight_conceal_guifg = 'lightgray'
let g:limelight_conceal_guifg = '#282828'


" Default: 0.5
let g:limelight_default_coefficient = 0.5

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
" let g:limelight_bop = '^\s'
" let g:limelight_eop = '\ze\n^\s'

let g:limelight_bop = '^'
let g:limelight_eop = '$'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
