" normal/insert
nnoremap <leader>gy :Goyo<CR>

nnoremap <M-TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

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

" Bind Escape to terminal
tnoremap <Esc> <C-\><C-n>

nnoremap <silent> <Leader>sh :History<CR>
nnoremap <silent> <Leader>sf :Files<CR>
nnoremap <silent> <Leader>sc :Telescope colorscheme<CR>
