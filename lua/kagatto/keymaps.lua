vim.g.mapleader = " "
-- Quick :Ex command
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

-- Center screen when searching
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Copy until end of the line
vim.keymap.set("n", "Y", "y$")

-- For quick and centered movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")

-- Move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Use System clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Use void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- For terminal usage
vim.keymap.set("n", "<leader>tt", ":vsplit<CR> :terminal<CR>")
vim.keymap.set("t", "<C-t>t", "<C-\\><C-n>:split .<CR><C-w>w :close<CR>")
vim.keymap.set("t", "<C-t>c", "<C-\\><C-n>:split .<CR><C-w>w :close<CR>:close<CR>")

