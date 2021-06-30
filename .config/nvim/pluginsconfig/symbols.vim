" Characters from a to z
inoremap ,,aa 祿
inoremap ,,ab 綠
inoremap ,,ba 💡
inoremap ,,bb 🍻
inoremap ,,ca ☕
inoremap ,,cb 🥤
inoremap ,,da 🐶
inoremap ,,db 🦆
inoremap ,,ea 🐘
inoremap ,,eb 🦅
inoremap ,,fa 🦊
inoremap ,,fb 🔥
inoremap ,,ga 🐐
inoremap ,,gb 🔫
inoremap ,,ha 🐎
inoremap ,,hb 🐔
inoremap ,,ja 🍺
inoremap ,,jb 🥂
inoremap ,,ka ⚾
inoremap ,,kb 🏉
inoremap ,,la 🦁
inoremap ,,lb 🔎
inoremap ,,ma 🗸
inoremap ,,mb ✅
inoremap ,,mc 🔖
inoremap ,,oa 🧡
inoremap ,,ob 🍐
inoremap ,,rb ⛄
inoremap ,,ra 🚀
inoremap ,,sa 🌞
inoremap ,,sb ⧈
inoremap ,,ss ■
inoremap ,,ta 🍅
inoremap ,,tb ☔
inoremap ,,v 🚎
inoremap ,,w 🌊
inoremap ,,xa ❌
inoremap ,,xb 𐄂
inoremap ,,y ⛵
inoremap ,,z 🦓

" special ascii mathematical symbols
inoremap ,ma +
inoremap ,mm -
inoremap ,md /
inoremap ,mx *
inoremap ,mp %

inoremap ,x *
inoremap ,do $
inoremap ,ca ^<ESC>i
inoremap ,cc {}<ESC>i
inoremap ,bb []<ESC>i
inoremap ,pp ()<ESC>i
inoremap ,ab <><ESC>i
inoremap ,d $
inoremap ,h #
inoremap ,am &
inoremap ,at @
inoremap ,ar ->
inoremap ,arr =>
inoremap ,ed ==
inoremap ,ee =
inoremap ,ec !
inoremap ,uu _
inoremap ,ud __
inoremap ,q ?
" Clear console symbol
inoremap ,,p \033[H\033[2J


" latin Symbols
inoremap <leader><leader>xn iαxⁿ + βxⁿ-¹ + ... + c <SPACE> <ESC>
inoremap <leader><leader>x2 ix² + x +c  <SPACE> <ESC>
inoremap <leader><leader>ln ───────────────────<SPACE>

" Toilet text in vim
" Plug 'gyim/vim-boxdraw' ->
nnoremap <leader><leader>ts :.!toilet -w 200 -f small<CR> <ESC>
nnoremap <leader><leader>tb :.!toilet -w 200 -f slant<CR> <ESC>

" box draw around text
nnoremap <leader><leader>tr :.!toilet -w 200 -f term -F border<CR>

