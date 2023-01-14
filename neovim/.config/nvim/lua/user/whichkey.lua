local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local setup = {
	plugins = {
		presets = {
			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
		},
	},
	ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
}

local opts = {
	prefix = "<leader>",
	nowait = true,
}

local mappings = {
	["a"] = { "<cmd>Alpha<cr>", "Alpha" },
	[","] = {
		"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
		"Buffers",
	},
	["e"] = { "<cmd>NvimTreeFindFileToggle<cr>", "File Explorer" },
	["."] = {
		"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({ winblend = 10 }))<cr>",
		"Find files",
	},
	["q"] = { "<cmd>q!<CR>", "Quit" },
	["c"] = { "<cmd>bdelete!<CR>", "Close Buffer" },
	["P"] = { "<cmd>lua require('telescope').extensions.projects.projects()<cr>", "Projects" },

	p = {
		name = "Packer",
		c = { "<cmd>PackerCompile<cr>", "Compile" },
		i = { "<cmd>PackerInstall<cr>", "Install" },
		s = { "<cmd>PackerSync<cr>", "Sync" },
		S = { "<cmd>PackerStatus<cr>", "Status" },
		u = { "<cmd>PackerUpdate<cr>", "Update" },
	},

	h = {
		name = "Git",
		g = { "<cmd>lua _Lazygit_toggle()<CR>", "Lazygit" },
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = {
			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
			"Undo Stage Hunk",
		},
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		d = {
			"<cmd>Gitsigns diffthis HEAD<cr>",
			"Diff",
		},
	},

	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		f = { "<cmd>lua vim.lsp.buf.format({async = true})<CR>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		j = {
			'<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>',
			"Next Diagnostic",
		},
		k = {
			'<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>',
			"Prev Diagnostic",
		},
		l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
		q = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "Quickfix" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		R = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
	},
	f = {
		name = "Search",
		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		r = {
			"<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
			"Open Recent File",
		},
		R = { "<cmd>Telescope registers<cr>", "Registers" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		F = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
		z = { "<cmd>lua require'telescope'.extensions.zoxide.list{}<CR>", "Zoxide" },
		S = { "<cmd>lua require('session-lens').search_session()<CR>", "Sessions" },
	},

	t = {
		name = "Terminal",
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
	},

	s = {
		name = "Spectre",
		s = { "<cmd>lua require('spectre').open()<CR>", "Open" },
		w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search current Word" },
		p = { "viw:lua require('spectre').open_file_search()<cr>", "Search in current file" },
	},

	m = {
		name = "Modes",
		z = { "<cmd>ZenMode<cr>", "ZenMode" },
		s = { "<cmd>set spell<cr>", "Toggle on/off spell checking" },
	},
}

which_key.setup(setup)
which_key.register(mappings, opts)
