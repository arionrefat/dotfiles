vim.g.nvcode_termcolors = 256
-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
vim.cmd("colorscheme catppuccin")

local catppuccin = require("catppuccin")
catppuccin.setup({
	transparent_background = true,
	term_colors = false,
	styles = {
		comments = "italic",
		functions = "italic",
		keywords = "italic",
		strings = "NONE",
		variables = "NONE",
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = "italic",
				hints = "italic",
				warnings = "italic",
				information = "italic",
			},
			underlines = {
				errors = "underline",
				hints = "underline",
				warnings = "underline",
				information = "underline",
			},
			gitsigns = true,
			telescope = true,
			nvimtree = {
				enabled = true,
				show_root = true,
			},
			dashboard = true,
			bufferline = true,
			cmp = true,
		},
	},
})
