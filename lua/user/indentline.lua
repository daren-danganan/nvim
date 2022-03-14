local indent_status_ok, indent = pcall(require, "indent_blankline")
if not indent_status_ok then
  return
end

indent.setup({
  show_current_context = true,
  show_current_context_start = true,
})
