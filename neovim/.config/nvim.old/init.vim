"" PLUGINS
source $HOME/.config/nvim/general/plugs.vim

" SETTINGS AND FUNCTIONS
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/key-bind.vim

" PLUGIN CONFIGS
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/htmlpreview.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/nerdcomment.vim
source $HOME/.config/nvim/plug-config/coc-config.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/markdown.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/codi.vim

" Lua plugins
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
luafile $HOME/.config/nvim/lua/treesitter.lua

"Inspiration taken from
"https://github.com/ChristianChiarulli
"https://github.com/ChristianChiarulli/nvim
