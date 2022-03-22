local function get_node_modules(root_dir)
  local root_node = root_dir .. "/node_modules" 
  local stats = vim.loop.fs_stat(root_node)
  if stats == nil then
    return nil
  else
    return root_node
  end
end
local project_library_path = get_node_modules(vim.fn.getcwd())
local cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  project_library_path,
  "--ngProbeLocations",
  project_library_path,
  "--includeCompetionsWithSnippetText",
  "--includeAutomaticOptionalChainCompletions",
}

return {
  cmd = cmd,
  root_dir = require("lspconfig.util").root_pattern("angular.json"),
  on_new_config = function(new_config)
    new_config.cmd = cmd
  end,
}
