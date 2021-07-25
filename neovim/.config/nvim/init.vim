"" PLUGINS
source $HOME/.config/nvim/general/plugs.vim

" SETTINGS AND FUNCTIONS
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/key-bind.vim
source $HOME/.config/nvim/general/cp.vim

"" PLUGIN CONFIGS
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/gruvbox.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/htmlpreview.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/nerdcomment.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/one.vim
source $HOME/.config/nvim/plug-config/nord.vim
source $HOME/.config/nvim/plug-config/markdown.vim
source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/neovim-snip.vim
source $HOME/.config/nvim/plug-config/nerdTree.vim

luafile $HOME/.config/nvim/lua/compe-config.lua
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
luafile $HOME/.config/nvim/lua/treesitter.lua
luafile $HOME/.config/nvim/lua/lsp-install.lua
luafile $HOME/.config/nvim/lua/neovim-lsp-config.lua
luafile $HOME/.config/nvim/lua/formatt.lua
luafile $HOME/.config/nvim/lua/tele_zoxide.lua
" luafile $HOME/.config/nvim/lua/settings.lua

"Inspiration taken from
"https://github.com/ChristianChiarulli
"https://github.com/ChristianChiarulli/nvim
