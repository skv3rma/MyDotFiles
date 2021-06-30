:set concealcursor=v

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" markdown-preview.vim
let g:mkdp_auto_close = 1
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_refresh_slow=1
" let g:mkdp_markdown_css='/home/sunil_arc/.config/nvim/darkdown.css'
" let g:mkdp_markdown_css='/home/sunil_arc/.config/nvim/github-markdown.css'
" let g:mkdp_markdown_css='/home/sunil_arc/.config/nvim/buttondown.css'

" for normal mode
nmap <silent> <leader>mp <Plug>MarkdownPreviewToggle

