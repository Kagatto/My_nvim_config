local builtin = require('telescope.builtin')
-- Telescope find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Telescope find git files
vim.keymap.set('n', '<leader>gt', builtin.git_files, {})
-- Telescope find words in files
vim.keymap.set('n', '<leader>ss', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
