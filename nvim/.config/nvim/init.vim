" --- General
let mapleader = " "

syntax on           " enables syntax highlighting
set termguicolors   " Better colors
set tabstop=4
set softtabstop=4
set expandtab
set smartindent     " enable autoindents
set shiftwidth=4    " number of spaces used for autoindents
set number          " adds line numbers
set numberwidth=4   " columns used for the line number
set mouse=a         " Enable mouse support
set ignorecase
set smartcase
set noshowmode      " If you have lightline.vim


" --- Plugins
call plug#begin('~/.config/nvim/plugged')

" define your plugins
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'

call plug#end()

lua require('imzhuhl/telescope')
lua require('imzhuhl/nvim-tree')


colorscheme gruvbox


" --- Key Mapping
noremap <silent> K 5k
noremap <silent> H 0
noremap <silent> J 5j
noremap <silent> L $
noremap <silent> <C-z> u
noremap <silent> <C-s> :w<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>





