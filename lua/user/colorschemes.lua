local colorscheme = "vscode"

-- colorscheme vscode options
if(colorscheme == "vscode") then
  vim.g.vscode_style = "dark"
  vim.g.vscode_transparent = 1 -- enable transparent background
  vim.g.vscode_italic_comment = 1 -- enable italic comments
  vim.g.vscode_disable_nvimtree_bg = true
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
