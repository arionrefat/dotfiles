local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use("nlknguyen/copy-cut-paste.vim")
	use("wakatime/vim-wakatime")
	use({ "lambdalisue/suda.vim", cmd = "SudaWrite" })

	-- Prereq plugins
	use("wbthomason/packer.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("kyazdani42/nvim-web-devicons")

	-- Lua plugins
	use("folke/zen-mode.nvim")
	use("norcalli/nvim-colorizer.lua")
	use("lewis6991/impatient.nvim")
	use("lewis6991/gitsigns.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("akinsho/bufferline.nvim")
	use("akinsho/toggleterm.nvim")
	use("akinsho/org-bullets.nvim")
	use("rmagatti/auto-session")
	use("rmagatti/session-lens")
	use("lukas-reineke/indent-blankline.nvim")
	use("goolord/alpha-nvim")
	use("nvim-lualine/lualine.nvim")
	use("ahmedkhalf/project.nvim")
	use("numToStr/Comment.nvim")
	use("windwp/nvim-autopairs")
	use("onsails/lspkind-nvim")
	use("kylechui/nvim-surround")
	use("nvim-orgmode/orgmode")
	use("folke/which-key.nvim")
	use("ggandor/leap.nvim")
	use("simrat39/symbols-outline.nvim")
	use({ "sindrets/diffview.nvim", cmd = "DiffviewOpen" })
	use("windwp/nvim-spectre")

	-- LSP stuffs
	use("neovim/nvim-lspconfig")
	use("RRethy/vim-illuminate")
	use("jose-elias-alvarez/null-ls.nvim")

	-- Lsp server Installer
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("nvim-treesitter/nvim-treesitter-context")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("windwp/nvim-ts-autotag")
	use("mrjones2014/nvim-ts-rainbow")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("jvgrootveld/telescope-zoxide")
	use("debugloop/telescope-undo.nvim")

	-- Auto Completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- coLorscheme
	use("EdenEast/nightfox.nvim")
	use("rebelot/kanagawa.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
