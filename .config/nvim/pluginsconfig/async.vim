function! s:run_tmux(opts)
    " asyncrun has temporarily changed dir for you
    " getcwd() in the runner function is the target directory defined in `-cwd=xxx`
    let cwd = getcwd()
    call VimuxRunCommand('cd ' . shellescape(cwd) . '; ' . a:opts.cmd)
endfunction

let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
let g:asyncrun_runner.tmux = function('s:run_tmux')

" open terminal or quickfix
let g:asyncrun_open = 6
" incase of terminal output open it in right
" let g:asynctasks_term_pos = 'right'
let g:asynctasks_term_pos = 'external'
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f6> :AsyncTask project-build<cr>
noremap <silent><f9> :AsyncTask file-build<cr>

let g:asyncrun_status = "stopped"
augroup QuickfixStatus
	au! BufWinEnter quickfix setlocal
		\ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

