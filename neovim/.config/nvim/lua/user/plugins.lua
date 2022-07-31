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
	use("wbthomason/packer.nvim")
	use("nlknguyen/copy-cut-paste.vim")
	use("plasticboy/vim-markdown")
	use("wakatime/vim-wakatime")
	use({ "mbbill/undotree", cmd = "UndotreeShow" })
	use("junegunn/fzf", {
		run = function()
			vim.fn["fzf#install"](0)
		end,
	})
	use("junegunn/fzf.vim")
	use({ "lambdalisue/suda.vim", cmd = "SudaWrite" })
	-- Lua plugins
	use("neovim/nvim-lspconfig")
	use("folke/zen-mode.nvim")
	use("norcalli/nvim-colorizer.lua")
	use("lewis6991/impatient.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("lewis6991/gitsigns.nvim")
    use("RRethy/vim-illuminate")

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow")

	use("jose-elias-alvarez/null-ls.nvim")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-fzy-native.nvim")
	use("nvim-telescope/telescope-ui-select.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use("jvgrootveld/telescope-zoxide")

	-- Auto Completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind-nvim")

    use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("akinsho/bufferline.nvim")
	use("akinsho/toggleterm.nvim")
	use("akinsho/org-bullets.nvim")
	use("rmagatti/auto-session")
	use("rmagatti/session-lens")
	use("lukas-reineke/indent-blankline.nvim")
	use("goolord/alpha-nvim")
	use("nvim-lualine/lualine.nvim")
	use("ahmedkhalf/project.nvim")
	use({
		"numToStr/Comment.nvim",
		requires = { "JoosepAlviste/nvim-ts-context-commentstring", opt = true },
	})
	use("windwp/nvim-autopairs")
	use("kylechui/nvim-surround")
	use("nvim-orgmode/orgmode")

	-- coLorscheme
	use("catppuccin/nvim")
	use("EdenEast/nightfox.nvim")
	use("rebelot/kanagawa.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
