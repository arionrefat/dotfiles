let g:startify_custom_header = [
            \'███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗',
            \'████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║',
            \'██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║',
            \'██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║',
            \'██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║',
            \'╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
            \]

let g:startify_session_dir = '~/.config/nvim/session'

function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Current Directory: '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
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
            \ { 'z': '~/.config/zsh/zshrc' },
            \ { 'b': '~/Workspaces' },
	        \ { 't': '/usr/share/nvim/runtime/tutor/en/vim-01-beginner.tutor' },
            \ ]

let g:startify_enable_special = 0
