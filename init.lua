require('maps') -- lua/maps.lua
require'lspconfig'.pyright.setup{}
require "paq" {
  "savq/paq-nvim";

  "neovim/nvim-lspconfig";
  "ms-jpq/coq_nvim";
  "ms-jpq/coq.artifacts";
  "ms-jpq/coq.thirdparty";
  "tpope/vim-fugitive";
  "preservim/nerdtree";
  "morhetz/gruvbox";
  "joshdick/onedark.vim";
  { "junegunn/fzf", run = ":call fzf#install()" };
  "junegunn/fzf.vim";

  "nvim-lua/plenary.nvim";
  "nvim-telescope/telescope.nvim";
  { "nvim-telescope/telescope-fzf-native.nvim", run = "make" };

  "ggandor/lightspeed.nvim";

  "vim-python/python-syntax";
  "nvim-treesitter/nvim-treesitter";
  "euclidianAce/BetterLua.vim";
  "nvim-lualine/lualine.nvim";
  --"itchny/lightline.vim";
}
-- Neovim statusline
require('lualine').setup()
options = { theme = 'powerline_dark' }

-- Treesitter syntax highlighting
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- coq_nvim settings
vim.g.coq_settings = { auto_start = true }

local o = vim.o
local wo = vim.wo
local bo = vim.bo

local set = vim.opt

-- global options
o.cursorline = true
o.number = true
-- o.nocompatible = true
-- o.hlsearch = true
o.smartcase = true
o.smartindent = true
o.background = 'dark'
o.ttyfast = true
o.syntax = 'on'

-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

vim.g['python_highlight_all'] = 1
-- vim.g['fzf_command_prefix'] = 'Fzf

vim.cmd('colorscheme onedark')

