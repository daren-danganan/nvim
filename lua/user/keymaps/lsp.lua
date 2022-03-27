local M = {}
local km = vim.api.nvim_buf_set_keymap
M.lsp_keymaps = function(bufnr)
  local opts = { noremap = true, silent = true }
  km(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  km(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  km(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  km(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  km(bufnr, "n", "gH", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  km(bufnr, "n", "cn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  km(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  km(bufnr, "n", "gx", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  km(bufnr, "n", "<leader>d", "<cmd>lua vim.diagnostic.get()<CR>", opts)
  km(
    bufnr, "n", "[d",
    '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts
  )
  km(
    bufnr, "n", "gl",
    '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>', opts
  )
  km(
    bufnr, "n", "]d",
    '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts
  )
  km(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end
return M
