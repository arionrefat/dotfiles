local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'nlknguyen/copy-cut-paste.vim'
    Plug 'godlygeek/tabular'
    Plug 'rust-lang/rust.vim'
    Plug 'plasticboy/vim-markdown'
    Plug ('iamcco/markdown-preview.nvim', {
        ['do'] = vim.fn['mkdp#util#install'],
        ['for'] = {'markdown', 'vim-plug'}
    })
    Plug 'ryanoasis/vim-devicons'
    Plug 'wakatime/vim-wakatime'
    Plug 'turbio/bracey.vim'
    Plug 'tpope/vim-surround'
    Plug 'mbbill/undotree'
    Plug 'junegunn/goyo.vim'
    Plug  ('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    -- Lua plugins
    Plug 'norcalli/nvim-colorizer.lua'
    Plug ('nvim-treesitter/nvim-treesitter', {
        ['do'] = function ()
            vim.cmd('TSUpdate')
        end
    })
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'jvgrootveld/telescope-zoxide'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'akinsho/bufferline.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'glepnir/dashboard-nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'numToStr/Comment.nvim'
    Plug 'windwp/nvim-autopairs'
    Plug 'onsails/lspkind-nvim'
    Plug ('folke/tokyonight.nvim', { branch = 'main' })
vim.call('plug#end')

