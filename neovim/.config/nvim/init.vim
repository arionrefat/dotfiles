" Plug
source $HOME/.config/nvim/general/plugs.vim

"plug-config
source $HOME/.config/nvim/general/key-bind.vim
source $HOME/.config/nvim/plug-config/nnnex.vim
source $HOME/.config/nvim/plug-config/htmlpreview.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/markdown.vim
source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/dashBoard.vim

" Luafiles
luafile $HOME/.config/nvim/lua/settings.lua
luafile $HOME/.config/nvim/lua/functions.lua
luafile $HOME/.config/nvim/lua/treesitter.lua
luafile $HOME/.config/nvim/lua/neovim-lsp-config.lua
luafile $HOME/.config/nvim/lua/lsp-install.lua
luafile $HOME/.config/nvim/lua/compe-config.lua
luafile $HOME/.config/nvim/lua/lsp-gO.lua
luafile $HOME/.config/nvim/lua/neovim-snip.lua
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
luafile $HOME/.config/nvim/lua/tele_zoxide.lua
luafile $HOME/.config/nvim/lua/indentblankline.lua
luafile $HOME/.config/nvim/lua/barbar.lua
luafile $HOME/.config/nvim/lua/formatt.lua
luafile $HOME/.config/nvim/lua/statusline.lua
luafile $HOME/.config/nvim/lua/commentary.lua
luafile $HOME/.config/nvim/lua/autoPair.lua

"Inspiration taken from
"https://github.com/ChristianChiarulli
"https://github.com/ChristianChiarulli/nvim
