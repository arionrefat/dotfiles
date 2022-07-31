local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup({
	options = {
        disabled_filetypes = { "alpha", "toggleterm" },
		icons_enabled = true,
		theme = "nightfox",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		-- always_divide_middle = true,
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function()
					return "ἄλφα"
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
		lualine_x = { "encoding", "fileformat", "filetype" },
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
