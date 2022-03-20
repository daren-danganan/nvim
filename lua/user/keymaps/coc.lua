-- Local variables
  local opts_nse = { noremap=true, silent=true, expr=true }
  local opts_ne = { noremap=true, expr=true }
  local opt_s = { silent=true }
  local km = vim.api.nvim_set_keymap

-- Normal
  -- Diagnostics
    km('n', '<leader>dp', '<Plug>(coc-diagnostics-prev)', opt_s)
    km('n', '<leader>dn', '<Plug>(coc-diagnostics-next)', opt_s)

  -- Code navigation
    km('n', 'gd', '<Plug>(coc-definition)', opt_s)
    km('n', 'gy', '<Plug>(coc-type-definition)', opt_s)
    km('n', 'gi', '<Plug>(coc-implementation)', opt_s)
    km('n', 'gr', '<Plug>(coc-references)', opt_s)

  -- Code actions
    km('n', '<leader>lh', ':call CocActionAsync("doHover")<CR>', {silent=true, noremap=true})
    km('n', '<leader>lr', '<Plug>(coc-renamme)', {})
    km('n', '<leader>lf', '<Plug>(coc-format-selected)', {})
    km('n', '<leader>la', '<Plug>(coc-codeaction)', {})
    km('n', '<leader>lq', ':CocCommand eslint.executeAutofix<CR>', {})

-- Insert
  -- Tab Completion
    km('i', '<Tab>', "pumvisible()?'<C-n>':'<Tab>'", opts_nse)
    km('i', '<S-Tab>', "pumvisible()?'<C-p>':'<BS>'", opts_ne)
    km('i', 'C-<Space>', 'coc#refresh()', opts_nse)
    km('i', '<CR>',
      "pumvisible()?coc#_select_confirm():'<C-G>u<CR><C-R>=coc#on_enter()<CR>'",
      opts_nse
    )
