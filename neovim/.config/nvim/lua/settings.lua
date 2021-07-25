vim.cmd('set list')
vim.cmd('set laststatus=0')
vim.cmd('set noerrorbells')
vim.cmd('set incsearch')
vim.cmd('let g:nvcode_termcolors=256')
vim.cmd('colorscheme aurora')

vim.wo.number = true  -- set number
vim.wo.relativenumber = -true -- set relative number
vim.o.guifont = "FiraCode Nerd Font:h17"
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.cmd('syntax enable') -- syntax highlighting
vim.o.showtabline = 2 -- Always show tabs
vim.o.updatetime = 300 -- Faster completion
vim.o.t_Co = "256" -- Support 256 colors
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.cmd('set expandtab') -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"

vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"

vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.mouse = "a" -- Enable your mouse
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('filetype plugin indent on') -- filetype detection
vim.cmd('set smarttab')
vim.cmd('set scrolloff=8')
