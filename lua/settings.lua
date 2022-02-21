local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
	-- swap file options
o.swapfile = true	-- enable swap files
o.dir = '/tmp'		-- store swap files here
	-- find options
o.ignorecase = true 	-- ignore case when searching
o.smartcase = true	
o.hlsearch = true 	-- enable search highlights
o.incsearch = true	-- enable search as you type
	-- display options
o.wrap = false		-- disable wrap
o.laststatus = 2	-- always show status line
