"Leader Key
let g:mapleader="\<Space>"

nnoremap <leader>gy :Goyo<CR>

nnoremap <M-TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Bind Escape to terminal
tnoremap <Esc> <C-\><C-n>

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

nnoremap <silent> <Leader>sh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>sf :DashboardFindFile<CR>
nnoremap <silent> <Leader>sc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>sa :DashboardFindWord<CR>
nnoremap <silent> <Leader>sb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>sn :DashboardNewFile<CR>

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
