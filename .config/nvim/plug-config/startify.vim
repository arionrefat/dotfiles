"""""""""""""""""""""""""""STARTIFY"""""""""""""""""
let g:startify_custom_header = [
			\ '   _____   __                 _____            ',
			\ '   ___  | / /_____________   ____(_)______ ___ ',
			\ '   __   |/ /_  _ \  __ \_ | / /_  /__  __ `__ \',
			\ '   _  /|  / /  __/ /_/ /_ |/ /_  / _  / / / / /',
			\ '   /_/ |_/  \___/\____/_____/ /_/  /_/ /_/ /_/ ',
			\]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ { 'w': '~/.config/awesome/rc.lua' },
            \ { 'z': '~/.zshrc' },
            \ { 'b': '~/TutCodes' },
	        \ { 't': '/usr/share/nvim/runtime/tutor/en/vim-01-beginner.tutor' },
            \ ]

let g:startify_enable_special = 0   " Shows Empty buffer and quit shortcuts

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction
