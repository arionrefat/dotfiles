set encoding=utf-8
set number
set list
syntax enable
set termguicolors
filetype plugin indent on
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=0
set showtabline=2
set statusline+=%*
set statusline+=%#warningmsg#
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set noerrorbells
set iskeyword+=-                      	" treat dash separated words as a word text object
set pumheight=10                        " Makes popup menu smaller
set conceallevel=0                      " So that I can see `` in markdown files
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set incsearch
set scrolloff=8

let g:nvcode_termcolors=256
colorscheme nvcode
