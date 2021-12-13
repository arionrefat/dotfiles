call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'nlknguyen/copy-cut-paste.vim'
Plug 'godlygeek/tabular'
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mhinz/vim-startify'
Plug 'rbgrouleff/bclose.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'wakatime/vim-wakatime'
Plug 'turbio/bracey.vim'
Plug 'lervag/vimtex'
Plug 'vimsence/vimsence'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
