" Disable default mappings
let g:nnn#set_default_mappings = 0

" Set custom mappings
nnoremap <silent> <leader>e :NnnExplorer<CR>

" Switch away from file-explorer (assuming left sided) via <C-l>
autocmd FileType nnn tnoremap <nowait><buffer><silent> <C-l> <C-\><C-n><C-w>l

" Start n³ in the current file's directory
nnoremap <leader>n :NnnPicker %:p:h<CR>

" Opens the n³ window in a split
let g:nnn#layout = 'tabnew' " or vnew, tabnew etc or new

" Or pass a dictionary with window size
let g:nnn#layout = { 'right': '~20%' } " or right, up, down

" Floating window. This is the default
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Comment' } }

