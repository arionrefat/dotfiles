packloadall
set nu
syntax on
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
set termguicolors
set incsearch
set noerrorbells
set scrolloff=8
set wildmode=longest,list,full

" Autocompete
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set path+=**

filetype plugin on
" This disables auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Taken from ThePrimeangen
" Moving the selected line from Visual Mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" " set Vim-specific sequences for RGB colors (For ST Terminal)
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colo sonokai
set background=dark
highlight Normal guibg=NONE ctermbg=NONE


" statusline
hi User1 ctermfg=none ctermbg=0 cterm=BOLD
hi User2 ctermfg=1 ctermbg=none
hi User3 ctermfg=NONE ctermbg=1 cterm=BOLD
hi User4 ctermfg=1 ctermbg=0
hi User5 ctermfg=5 ctermbg=none
hi User6 ctermfg=NONE ctermbg=5 cterm=BOLD
hi User7 ctermfg=0 ctermbg=none
hi User8 ctermfg=5 ctermbg=0
hi User9 ctermfg=none ctermbg=none cterm=BOLD

set statusline=
set statusline+=%2*%3*%f%4*
set statusline+=\ %1*\ %1*%{mode()}
set statusline+=%1*\ %m%7*
set statusline+=%9*%=
set statusline+=\ %7*%1*\ %v:%l\/%L
set statusline+=\ %8*%6*\ %Y\ %5*
