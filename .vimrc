packloadall
set relativenumber
set nu
syntax on
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
set termguicolors
set incsearch
set scrolloff=8
set wildmode=longest,list,full
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
