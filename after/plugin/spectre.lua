local ok, _ = pcall(require, 'spectre')
if ok then
    vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").open()<CR>', {
        desc = "Open Spectre"
    })
end