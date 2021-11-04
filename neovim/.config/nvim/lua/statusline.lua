require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    -- section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    section_separators = { '', '' },
    disabled_filetypes = {'dashboard'}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {
        {
          'diagnostics',
          sources = { 'nvim_lsp' },
          symbols = {
            hint = '  ',
          },
          sections = { 'error', 'warn', 'info', 'hint' },
        },
        {
        function()
            local msg = 'No Active Lsp'
            local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
            local clients = vim.lsp.get_active_clients()
            if next(clients) == nil then return msg end
            for _, client in ipairs(clients) do
              local filetypes = client.config.filetypes
              if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
              end
            end
            return msg
        end,
        icon = '⚙️ LSP:',
        },
        'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {'quickfix','nvim-tree','fzf'}
}

