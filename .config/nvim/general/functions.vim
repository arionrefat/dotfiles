"This unsets the `last search pattern` register by hitting return
nnoremap <CR> :noh<CR><CR>

autocmd BufWritePre * %s/\s\+$//e
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

