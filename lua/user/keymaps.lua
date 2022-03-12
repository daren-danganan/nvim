local opts = { noremap=true, silent=true }
local term_opts = { silent=true }
local km = vim.api.nvim_set_keymap

-- Leader key
km('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal Mode
-- -- Window Navigation
km('n', '<C-h>', '<C-w>h', opts)
km('n', '<C-j>', '<C-w>j', opts)
km('n', '<C-k>', '<C-w>k', opts)
km('n', '<C-l>', '<C-w>l', opts)
-- km('n', '<leader>e', ':Lex 30<cr>', opts)

-- -- Window Resize
km('n', '<C-Up>', ':resize +2<cr>', opts)
km('n', '<C-Down>', ':resize -2<cr>', opts)
km('n', '<C-Right>', ':vertical resize +2<cr>', opts)
km('n', '<C-Left>', ':vertical resize -2<cr>', opts)

-- -- Tab/Buffer Navigation
km('n', '<S-l>', ':bnext<CR>', opts)
km('n', '<S-h>', ':bprevious<CR>', opts)

-- Insert Mode
km('i', 'kj', '<ESC>', opts)

-- Visual Mode
-- -- Stay in V on indent
km('v', '<', '<gv', opts)
km('v', '>', '>gv', opts)

-- Terminal --
km("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
km("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
km("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
km("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
km("n", "<leader>f", "<cmd>lua require'telescope.builtin'"
  .. ".find_files()<cr>", opts)
km("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
