" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Close nerd tree after opening file
let NERDTreeQuitOnOpen = 1
" Also delete buffer if a file is deleted in Nerd tree
let NERDTreeAutoDeleteBuffer = 1
" Remove bookmarks and help text from NERDTree
let g:NERDTreeMinimalUI = 1
let NERDTreeDirArrows =1
" Custom icons for expandable/expanded directories
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" By default open new file in new tab
let NERDTreeMapOpenInTab='\r'
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$','\.settings$[[dir]]','.project','.classpath']

" Hide the Nerdtree status line to avoid clutter
let g:NERDTreeStatusline = ''

" === NerdCommenter Settings ===
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Automatically start nerd tree when no file is specified
" autocmd StdinReadPre * let s:std_in=1

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



