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

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
	autocmd BufWritePre *.[ch] %s/\%$/\r/e

" set Vim-specific sequences for RGB colors (For ST Terminal)
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colo one
set background=dark
let g:one_allow_italics = 1
