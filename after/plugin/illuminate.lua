local ok, _ = pcall(require, 'illuminate')
if ok then
	vim.keymap.set('n', '<leader>q', ':IlluminateToggle<cr>')
end
