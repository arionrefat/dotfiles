local map = vim.api.nvim_set_keymap
vim.g.mapleader=" "

map('n', '<leader>gy', ':Goyo<CR>', {noremap = true})
map('n', '<M-TAB>', ':bnext<CR>', {noremap = true})
map('n', '<S-TAB>', ':bprevious<CR>', {noremap = true})

-- Disable Arrow keys in Normal mode
map('', '<up>', '', {noremap = false})
map('', '<down>', '',{noremap = false})
map('', '<left>', '', {noremap = false})
map('', '<right>', '',{noremap = false})

-- Disable Arrow keys in Insert mode
map('i', '<up>', '', {noremap = false})
map('i', '<down>', '', {noremap = false})
map('i', '<left>', '', {noremap = false})
map('i', '<right>', '', {noremap = false})

map('n', '<leader>h', ':wincmd h<CR>', {noremap = true})
map('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
map('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
map('n', '<leader>l', ':wincmd l<CR>', {noremap = true})

map('n', '<leader>u', ':UndotreeToggle<CR>', {noremap = true})
map('n', '<leader>sl', ':SessionLoad<CR>', {noremap = false})
map('n', '<leader>ss', ':SessionSave<CR>', {noremap = false})

map('n', '<leader>sh', ':DashboardFindHistory<CR>', {noremap = true, silent = true})
map('n', '<leader>sf', ':DashboardFindFile<CR>', {noremap = true, silent = true})
map('n', '<leader>sc', ':DashboardChangeColorscheme<CR>' , {noremap = true, silent = true})
map('n', '<leader>sa', ':DashboardFindWord<CR>', {noremap = true, silent = true})
map('n', '<leader>sb', ':DashboardJumpMark<CR>', {noremap = true, silent = true})
map('n', '<leader>sn', ':DashboardNewFile<CR>', {noremap = true, silent = true})

map('n', '<leader>fg',  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true })
map('n', '<leader>fh',  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })

 -- Bind Escape to terminal
map('t', '<Esc>', [[<C-\><C-n>]], {noremap = false})

 -- Taken from ThePrimeangen
 -- Moving the selected line from Visual Mode
map('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true})
map('v', 'K', ":m '<-2<CR>gv=gv", {noremap = true})

map('n', '<M-e>', ':NvimTreeToggle<CR>', {noremap = true})
map('', '<C-f>', ':Files<CR>', {noremap = false})
map('', '<leader>b', ':Buffers<CR>', {noremap = false})
map('n', '<leader>g', ':Rg<CR>', {noremap = true})
map('n', '<leader>t', ':Tags<CR>', {noremap = true})
map('n', '<leader>m', ':Marks<CR>', {noremap = true})
