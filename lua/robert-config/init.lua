require("robert-config.plugins")
require("robert-config.remap")
require("robert-config.set")

local augroup = vim.api.nvim_create_augroup
local RobertGroup = augroup('robert-config', {})
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = RobertGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.cmd [[
    augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
    augroup END
]]
