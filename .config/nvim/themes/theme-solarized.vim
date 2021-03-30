syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:solarized_termcolors=256
" let g:solarized_termtrans = 0
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
" normal , high ,low
" let g:solarized_contrast = "high"
" let g:solarized_visibility= "high"
colorscheme solarized
let g:airline_theme='solarized'
call togglebg#map("<F5>")
