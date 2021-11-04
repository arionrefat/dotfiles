vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_particle_density=11.0
vim.g.neovide_cursor_vfx_particle_lifetime=6.2
vim.wo.number = true  -- set number
vim.wo.relativenumber = false -- set relative number
vim.o.guifont = "Fantasque Nerd Font:h16"
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.showtabline = 2 -- Always show tabs
vim.o.updatetime = 300 -- Faster completion
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.bo.smartindent = true -- Makes indenting smart
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.mouse = "a" -- Enable your mouse
vim.g.nvcode_termcolors=256

vim.cmd([[
set list
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set statusline+=%*
set statusline+=%#warningmsg#
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set noerrorbells
set iskeyword+=-                      	" treat dash separated words as a word text object
set conceallevel=0                      " So that I can see `` in markdown files
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set incsearch
set scrolloff=8
set completeopt=menu,menuone,noselect
syntax enable

let g:neovide_cursor_antialiasing=v:true
colorscheme tokyonight
]])
