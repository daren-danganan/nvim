-- Local variables
  local opts = { noremap=true, silent=true }
  local term_opts = { silent=true }
  local km = vim.api.nvim_set_keymap

-- Leader key
  km('', '<Space>', '<Nop>', opts)
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '

-- Normal Mode
  -- window navigation
    km('n', '<c-h>', '<c-w>h', opts)
    km('n', '<c-j>', '<c-w>j', opts)
    km('n', '<c-k>', '<c-w>k', opts)
    km('n', '<c-l>', '<c-w>l', opts)

  -- window resize
    km('n', '<c-up>', ':resize +2<cr>', opts)
    km('n', '<c-down>', ':resize -2<cr>', opts)
    km('n', '<c-right>', ':vertical resize +2<cr>', opts)
    km('n', '<c-left>', ':vertical resize -2<cr>', opts)

  -- tab/buffer navigation
    km('n', '<s-l>', ':bnext<cr>', opts)
    km('n', '<s-h>', ':bprevious<cr>', opts)

-- Insert Mode
  km('i', 'kj', '<ESC>', opts)

  -- COC

-- Visual Mode
  -- Stay in V on indent
    km('v', '<', '<gv', opts)
    km('v', '>', '>gv', opts)

-- Terminal
  km("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
  km("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
  km("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
  km("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
  km("", "<leader>t", ":ToggleTerm<CR>", opts)

-- Telescope
  km("n", "<leader>f", "<cmd>lua require'telescope.builtin'"
    .. ".find_files()<cr>", opts)
  km("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
  km("", "<leader>p", "<cmd>Telescope projects<cr>", opts)

-- Extensions
  require('user.keymaps.coc')
