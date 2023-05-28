local ok, _ = pcall(require, 'neoclip')
if ok then
    require('neoclip').setup({
        keys = {
            telescope = {
                i = {
                    select = '<c-o>',
                    paste = '<cr>',
                    paste_behind = '<c-p>',
                },
            },
        }
    })
    vim.keymap.set("n", "<C-p>", ":Telescope neoclip<cr>")
    vim.keymap.set("i", "<C-p>", ":Telescope neoclip<cr>")
end
