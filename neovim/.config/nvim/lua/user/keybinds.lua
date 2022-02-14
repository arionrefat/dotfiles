local map = vim.api.nvim_set_keymap

--Remap space as leader key
map("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- Disable Arrow keys in Normal mode
map("", "<up>", "", { noremap = false })
map("", "<down>", "", { noremap = false })
map("", "<left>", "", { noremap = false })
map("", "<right>", "", { noremap = false })

-- Disable Arrow keys in Insert mode
map("i", "<up>", "", { noremap = false })
map("i", "<down>", "", { noremap = false })
map("i", "<left>", "", { noremap = false })
map("i", "<right>", "", { noremap = false })

-- ZenMode
map("n", "<leader>gy", ":Goyo<CR>", { noremap = true })

-- Buffer cycle
map("n", "<M-TAB>", ":bnext<CR>", { noremap = true })
map("n", "<S-TAB>", ":bprevious<CR>", { noremap = true })
map("n", "<M-q>", ":bdelete<CR>", { noremap = true })

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", { noremap = true })
map("n", "<C-Down>", ":resize -2<CR>", { noremap = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true })

-- Stay in indent mode
map("v", "<", "<gv", {noremap = true})
map("v", ">", ">gv", {noremap = true})

map("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true })

map("n", "<leader>fr", [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true })
map("n", "<leader>fc", [[<Cmd>lua require('telescope.builtin').colorscheme()<CR>]], { noremap = true })
map("n", "<leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true })
map("n", "<leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })

-- Moving the selected line from Visual Mode
map('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true})
map('v', 'K', ":m '<-2<CR>gv=gv", {noremap = true})

-- Nvim Tree
map("n", "<M-e>", ":NvimTreeToggle<CR>", { noremap = true })

-- FZF
map("", "<leader>.", ":Files<CR>", { noremap = false })
map("", "<leader>,", ":Buffers<CR>", { noremap = false })
map("n", "<leader>g", ":Rg<CR>", { noremap = true })
map("n", "<leader>t", ":Tags<CR>", { noremap = true })
map("n", "<leader>m", ":Marks<CR>", { noremap = true })

map("n", "<leader>cd", ":lua require'telescope'.extensions.zoxide.list{}<CR>", { noremap = true, silent = true })
