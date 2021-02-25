" manually run this with `<CR>
" autocmd FileType java let b:dispatch = 'javac --source-path "./src/main/java" -cp "./target/classes" -d "./target/classes" %'
autocmd FileType java let b:dispatch = 'javac --source-path "./src" -cp "./target/classes" -d "./target/classes" %'
autocmd FileType dart let b:dispatch = 'dart run'
