-- vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "terminal", "packer" }
vim.g.tokyonight_transparent = false
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

require("catppuccin").setup({
	transparent_background = false,
	term_colors = true,
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
				show_root = false,
			},
			dashboard = true,
			bufferline = true,
			cmp = true,
		},
	},
})

require("kanagawa").setup({
	undercurl = true, -- enable undercurls
	commentStyle = "italic",
	functionStyle = "NONE",
	keywordStyle = "italic",
	statementStyle = "bold",
	typeStyle = "NONE",
	variablebuiltinStyle = "italic",
	specialReturn = true, -- special highlight for the return keyword
	specialException = true, -- special highlight for exception handling keywords
	transparent = false, -- do not set background color
	colors = {},
	overrides = {},
})

local colorscheme = "kanagawa"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
