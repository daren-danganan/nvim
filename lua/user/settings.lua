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
o.cmdheight = 2
o.conceallevel = 0
o.pumheight = 10
o.showtabline = 2
o.signcolumn = 'yes'
o.scrolloff = 8
o.sidescrolloff = 8

-- UI - Indents
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true

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
o.completeopt = 'menuone,noselect'
o.fileencoding = 'utf-8'
o.undofile = true
