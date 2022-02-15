require('maps') -- lua/maps.lua
require "paq" {
  "savq/paq-nvim";

  "neovim/nvim-lspconfig";
  "tpope/vim-fugitive";
  "preservim/nerdtree";
  "morhetz/gruvbox";
  "joshdick/onedark.vim";
  { "junegunn/fzf", run = ":call fzf#install()" };
  "junegunn/fzf.vim";

  "nvim-lua/plenary.nvim";
  "nvim-telescope/telescope.nvim";
  { "nvim-telescope/telescope-fzf-native.nvim", run = "make" };

  "vim-python/python-syntax";
  "euclidianAce/BetterLua.vim";
  --"itchny/lightline.vim";
}

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
