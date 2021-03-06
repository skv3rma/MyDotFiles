" 'Most Recent Files' number
let g:startify_files_number           = 18

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]
" Fancy custom header
let g:startify_custom_header = [
  \ "",
  \ '  _             _',
  \ ' | | _____   __| | ___  ___ __ _ _ __ ___  _ __',
  \ ' | |/ / _ \ / _  |/ _ \/ __/ _  |  _   _ \|  _ \',
  \ ' |   < (_) | (_| |  __/ (_| (_| | | | | | | |_) |',
  \ ' |_|\_\___/ \__,_|\___|\___\__,_|_| |_| |_| .__/',
  \ '                                          |_|',
  \ '',
  \ ]
