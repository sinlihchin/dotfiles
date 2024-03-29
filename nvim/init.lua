require('maps') -- lua/maps.lua
require("nvim-lsp-installer").setup {}
require'lspconfig'.pyright.setup{}
require'lspconfig'.terraformls.setup{}
-- require'lspconfig'.terraform_lsp.setup{}
require "paq" {
  "savq/paq-nvim";

  "neovim/nvim-lspconfig";
  "williamboman/nvim-lsp-installer";
  "ms-jpq/coq_nvim";
  "ms-jpq/coq.artifacts";
  "ms-jpq/coq.thirdparty";
  "tpope/vim-fugitive";
  "preservim/nerdtree";
  "morhetz/gruvbox";
  "joshdick/onedark.vim";
  { "junegunn/fzf", run = ":call fzf#install()" };
  "junegunn/fzf.vim";
  "tpope/vim-commentary";

  "nvim-lua/plenary.nvim";
  "nvim-telescope/telescope.nvim";
  { "nvim-telescope/telescope-fzf-native.nvim", run = "make" };

  "ggandor/lightspeed.nvim";

  -- Indentation lines
  "lukas-reineke/indent-blankline.nvim";

  -- Tablines
  { "akinsho/bufferline.nvim", tag = "v2." };

  "vim-python/python-syntax";
  "nvim-treesitter/nvim-treesitter";
  "euclidianAce/BetterLua.vim";
  "nvim-lualine/lualine.nvim"; "kyazdani42/nvim-web-devicons"; --"itchny/lightline.vim";
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

-- Terraform syntax higlighting
local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
parser_configs.hcl = {
  filetype = "hcl", "terraform",
}

-- Indentation lines
vim.opt.list = true
vim.opt.listchars:append("space:⋅")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

-- Bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}

vim.keymap.set('n', '\n', '<Cmd>:BufferLineCycleNext<CR>')
vim.keymap.set('n', '\b', '<Cmd>:BufferLineCyclePrev<CR>')

-- coq_nvim settings
vim.g.coq_settings = { auto_start = true }

local o = vim.o
local wo = vim.wo
local bo = vim.bo

local set = vim.opt

-- global options
o.cursorline = true
o.relativenumber = true
-- o.nocompatible = true
-- o.hlsearch = true
o.smartcase = true
o.smartindent = true
o.background = 'dark'
o.ttyfast = true
o.syntax = 'on'
o.showtabline = 2
o.textwidth = 88
o.colorcolumn = '88'

-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

vim.g['python_highlight_all'] = 1
-- vim.g['fzf_command_prefix'] = 'Fzf

vim.cmd('colorscheme onedark')

