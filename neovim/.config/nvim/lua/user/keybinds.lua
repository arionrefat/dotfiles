local map = vim.keymap.set

--Remap space as leader key
map("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- ZenMode
map("n", "<leader>zm", ":ZenMode<CR>", { noremap = true })

-- Buffer cycle
map("n", "tk", ":bnext<CR>", { noremap = true })
map("n", "tj", ":bprevious<CR>", { noremap = true })
map("n", "td", ":bdelete<CR>", { noremap = true })

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", { noremap = true })
map("n", "<C-Down>", ":resize -2<CR>", { noremap = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true })

-- Stay in indent mode
map("v", "<", "<gv", {noremap = true})
map("v", ">", ">gv", {noremap = true})

map("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true })
map("n", "<leader>l", ":lua _LAGT()<CR>", { noremap = true })

-- Telescope
map("n", "<leader>fr", "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ previewer = false }))<cr>", {noremap = true, silent = true})
map("n", "<leader>fc", [[<Cmd>lua require('telescope.builtin').colorscheme()<CR>]], { noremap = true })
map("n", "<leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true })
map("n", "<leader>cd", ":lua require'telescope'.extensions.zoxide.list{}<CR>", { noremap = true, silent = true })

-- Moving the selected line from Visual Mode
map('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true})
map('v', 'K', ":m '<-2<CR>gv=gv", {noremap = true})

-- Nvim Tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })

-- FZF
map("", "<leader>.", ":Files<CR>", { noremap = false })
map("", "<leader>,", ":Buffers<CR>", { noremap = false })
map("n", "<leader>rg", ":Rg<CR>", { noremap = true })

-- Nvim Session
map("n", "<M-s>", ":lua require('session-lens').search_session()<CR>", { noremap = true })
