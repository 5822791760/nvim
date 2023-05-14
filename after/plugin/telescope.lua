local ok, _ = pcall(require, 'telescope.builtin')
if ok then
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>f', builtin.find_files, {})
	--vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
	vim.keymap.set('n', '<leader>s', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ")})
	end)
end