" this will be run automatically on saving java file
" autocmd BufWritePost            *.java !javac --source-path "./src/main/java" -cp "./target/classes" -d "./target/classes" <afile>
" silent autocmd BufWritePost            *.md !pandoc --pdf-engine=wkhtmltopdf <afile> -o <afile>.pdf
" au BufRead *.html set filetype=htmlm4
" au BufRead *.xhtml set filetype=htmlm4
autocmd Filetype java inoremap <leader>sp System.out.println("--------------------------");
