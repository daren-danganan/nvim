local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.swapfile = true	-- enable swap files
o.dir = '/tmp'		-- store swap files here
o.ignorecase = true 	-- ignore case when searching
o.smartcase = true	--[[ ignore case on find if no 
				Uppercase present only 
				enabled if ignorecase 
				is true
			--]]
o.laststatus = 2	-- always show status line
o.hlsearch = true 	-- enable search highlights
o.incsearch = true	-- enable search as you type

