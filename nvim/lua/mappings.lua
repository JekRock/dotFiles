local map = vim.api.nvim_set_keymap
default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- map the leader key
map("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Deal with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_options)
map("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_options)

-- paste over currently selected text without yanking it
map("v", "p", "\"_dP", default_options)

-- Cancel search highlighting with ESC
map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", default_options)
map("n", "<C-j>", "<C-w>j", default_options)
map("n", "<C-k>", "<C-w>k", default_options)
map("n", "<C-l>", "<C-w>l", default_options)

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", default_options)
map("n", "<C-Down>", ":resize -2<CR>", default_options)
map("n", "<C-Left>", ":vertical resize -2<CR>", default_options)
map("n", "<C-Right>", ":vertical resize +2<CR>", default_options)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", default_options)
map("n", "<S-h>", ":bprevious<CR>", default_options)

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>", default_options)
map("n", "<A-k>", "<Esc>:m .-2<CR>", default_options)
map("v", "<A-j>", ":m .+1<CR>", default_options)
map("v", "<A-k>", ":m .-2<CR>", default_options)
map("v", "p", '"_dP', default_options)
map("x", "J", ":move '>+1<CR>gv-gv", default_options)
map("x", "K", ":move '<-2<CR>gv-gv", default_options)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", default_options)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", default_options)

-- Press jk fast to enter normal mode
map("i", "jk", "<ESC>", default_options)

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", default_options)

