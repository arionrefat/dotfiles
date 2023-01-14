local map = vim.keymap.set

--Remap space as leader key
map("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<M-Tab>", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true })

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", { noremap = true })
map("n", "<C-Down>", ":resize -2<CR>", { noremap = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true })

-- Stay in indent mode
map("v", "<", "<gv", { noremap = true })
map("v", ">", ">gv", { noremap = true })

-- Moving the selected line from Visual Mode
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
