vim.g.nvim_tree_git_hl = true
vim.g.nvim_tree_highlight_opened_files = true
vim.g.nvim_tree_group_empty = true

require'nvim-tree'.setup {
  update_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
}

