" autocmd BufNewFile *.java
"   \ exe "normal Opublic class " . expand('%:t:r') . "\n{\n}\<Esc>1G"

autocmd BufNewFile *.java call InsertJavaPackage()

function! InsertJavaPackage()
  let dir = getcwd()
  let dir = substitute(dir, "^.*\/com\/", "com/", "")
  let dir = substitute(dir, "\/", ".", "g")
  let dir = "package " . dir . ";"
  let result = append(0, "")
  let result = append(1, dir)
  let filename = expand("%")
  let filename = substitute(filename, "\.java", "", "")
  let result = append(2, "")
  let result = append(3, "class " . filename . " {")
  let result = append(4, "}")
endfunction
