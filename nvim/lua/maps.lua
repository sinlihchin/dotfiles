local map = vim.api.nvim_set_keymap

-- Find files using Telescope command-line
options = { noremap = true }
map('n', '<Leader>ff', ':Telescope find_files<Cr>', options)
map('n', '<Leader>fg', ':Telescope live_grep<Cr>', options)
map('n', '<Leader>fb', ':Telescope buffers<Cr>', options)
map('n', '<Leader>fh', ':Telescope help_tags<Cr>', options)
