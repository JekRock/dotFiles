local opt = vim.opt
local wo = vim.wo
local fn = vim.fn

vim.cmd "set nowrap"	-- do not wrap lines
opt.number = true	-- show line numbers
opt.numberwidth = 4	-- line numbers indent
opt.showmatch = true	-- highlight matching brace
opt.visualbell = true	-- use visual bell (no beeping)
opt.incsearch = true	-- do incremental searching
opt.ignorecase = true	-- always case-insensitive search
opt.syntax = "on"	-- enable syntax highlighting
opt.history = 50	-- set history buffer size

opt.ruler = true	-- show the cursor position all the time

-- Softtabs, 2 spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
 
-- disable modelines as a security precaution
opt.modelines = 0
vim.cmd "set nomodeline"

-- Turn backup off, since most stuff is in git anyway...
vim.cmd "set nobackup"
vim.cmd "set nowritebackup"
vim.cmd "set nowb"
vim.cmd "set noswapfile"

-- Keep undo history across sessions, by storing in file
opt.undodir = "/tmp/.vim/backups"
opt.undofile = true

-- Enable hotkeys for Russian layout
vim.cmd "set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
