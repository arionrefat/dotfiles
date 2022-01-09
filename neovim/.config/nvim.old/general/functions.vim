" Deletes all trailing spaces
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

