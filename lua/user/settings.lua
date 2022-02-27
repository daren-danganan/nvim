-- Declarations
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- UI Settings
o.number = true
o.relativenumber = true
o.wildmode = 'list,longest'
o.colorcolumn = '80'
o.cursorline = true
o.wrap = false

-- UI - Tabs
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true
o.shiftwidth = 4

-- UI - Windows
o.splitbelow = true
o.splitright = true

-- Search Settings
o.showmatch = true
o.ignorecase = true
o.smartcase = true

-- Utility Settings
o.mouse = 'a'
o.clipboard = 'unnamedplus'
