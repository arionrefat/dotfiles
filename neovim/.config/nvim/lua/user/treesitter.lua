local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"c",
		"lua",
		"go",
		"bash",
		"comment",
		"cpp",
		"python",
		"css",
		"gomod",
		"html",
		"java",
		"javascript",
		"json",
		"json5",
		"latex",
		"astro",
		"markdown",
		"markdown_inline",
		"regex",
		"scss",
		"sql",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"yaml",
		"org",
		"rasi",
		"prisma",
		"query",
	},
	sync_install = false,
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
	},
	matchup = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = 1000,
	},
	refactor = {
		smart_rename = { enable = true, keymaps = { smart_rename = "grr" } },
		highlight_definitions = { enable = true },
		navigation = {
			enable = true,
		},
	},
	autotag = {
		enable = true,
	},
})

require("treesitter-context").setup({
	enable = true,
})
