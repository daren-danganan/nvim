local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local handlers = require("user.lsp.handlers")
local servers = {
  'angularls',
  'cssls',
  'eslint',
  'html',
  'jdtls',
  'jsonls',
  'sqlls',
  'sumneko_lua',
  'yamlls',
}

for _, lsp in pairs(servers) do
  lspconfig[lsp].setup {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }
end