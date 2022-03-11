local default_schemas = nil
local status_ok, yamlls_settings = pcall(require, 'nlspsettings.loaders.yaml')
if status_ok then
  default_schemas = yamlls_settings.get_default_schemas()
end

local schemas = {
  -- ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.yaml"] = "*.openapi.yaml",
  ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.0/schema.yaml"] = "*.openapi.yaml",
}

local function extend(tab1, tab2)
  for _, value in ipairs(tab2) do
    table.insert(tab1, value)
  end
  return tab1
end

local extended_schemas = extend(schemas, default_schemas)

local opts = {
  settings = {
    yaml = {
      schemas = extended_schemas,
    },
  },
  setup = {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
        end,
      },
    },
  },
}

return opts
