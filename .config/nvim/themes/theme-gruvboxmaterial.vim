
"=============== Start : Gruvbox-Material Theme ================================
" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" for dark version
set background=dark
" for light version
"set background=light
"set contrast
" this configuration option should be placed before `colorscheme gruvbox-material`
" available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_contrast_dark='hard'
" Italics for my favorite color scheme
let g:gruvbox_termcolors = 256
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_transparent_background = 0

let g:gruvbox_material_background = 'medium'
" reverse highlight on visual selection
let g:gruvbox_material_visual = 'reverse'
let g:gruvbox_material_diagnostic_line_highlight = 1
" values are 'material' , 'original', 'mix'
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_statusline_style = 'material'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_current_word = 'bold'

colorscheme gruvbox-material
let g:airline_theme='gruvbox_material'
