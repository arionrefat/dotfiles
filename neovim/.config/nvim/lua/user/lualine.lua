local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup({
	options = {
        disabled_filetypes = { "alpha"},
		icons_enabled = true,
		theme = "catppuccin",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function()
					return "ἄλφα"
					-- return "λφα"
				end,
			},
		},
		lualine_b = {
			{ "filetype", colored = false },
			{ "branch" },
			{
				"diff",
				symbols = { added = " ", modified = "柳", removed = " " },
				diff_color = {
					added = { fg = "#98be65" },
					modified = { fg = "#FF8800" },
					removed = { fg = "#ec5f67" },
				},
			},
		},
		lualine_c = {
			{ "filename", color = { fg = "#ffffff" } },
			{ "filesize" },
		},
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
				sections = { "error", "warn", "info", "hint" },
			},
			{
				-- Lsp server name .
				function()
					local msg = "No Active Lsp"
					local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
					local clients = vim.lsp.get_active_clients()
					if next(clients) == nil then
						return msg
					end
					for _, client in ipairs(clients) do
						local filetypes = client.config.filetypes
						if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
							return client.name
						end
					end
					return msg
				end,
				icon = "⚙️",
				color = { fg = "#ffffff", gui = "bold" },
			},
			{
				"fileformat",
				fmt = string.upper,
				icons_enabled = false,
				color = { gui = "bold" },
			},
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	extensions = { "nvim-tree", "fzf" },
})
