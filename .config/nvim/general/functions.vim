"This unsets the `last search pattern` register by hitting return
nnoremap <CR> :noh<CR><CR>
autocmd BufWritePre * %s/\s\+$//e

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Taken from ThePrimeangen
" Moving the selected line from Visual Mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

