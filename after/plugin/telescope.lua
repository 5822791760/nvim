local ok, _ = pcall(require, 'telescope.builtin')
if ok then
	local builtin = require('telescope.builtin')
    require('telescope').load_extension('neoclip')
	vim.keymap.set('n', '<leader>f', builtin.find_files, {})
	--vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
	vim.keymap.set('n', '<leader>s', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ")})
	end)
end

local ok, _ = pcall(require, 'telescope.actions')
if ok then
    local actions = require "telescope.actions"
    local pass, _ = pcall(require, 'telescope')
    if pass then
        require('telescope').setup{
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        -- ["<C-c>"] = { "<esc>", type = "command" },
                    },

                    -- n = {
                    --     ["<C-c>"] = actions.close,
                    -- }
                }
            },
        }
    end
end
