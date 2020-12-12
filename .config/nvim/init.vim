call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'powerline/powerline'
Plug 'nlknguyen/copy-cut-paste.vim'
Plug 'plasticboy/vim-markdown'
Plug 'mhinz/vim-startify'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'chiel92/vim-autoformat'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'wakatime/vim-wakatime'
Plug 'hugolgst/vimsence'
Plug 'turbio/bracey.vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

"" SETTINGS AND FUNCTIONS
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim

"" PLUGIN CONFIGS
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/gruvbox.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/htmlpreview.vim
source $HOME/.config/nvim/plug-config/rainbowparen.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/nerdcomment.vim
source $HOME/.config/nvim/plug-config/coc-config.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/one.vim

"few parts of the config were taken from
"https://github.com/ChristianChiarulli
"https://github.com/ChristianChiarulli/nvim
