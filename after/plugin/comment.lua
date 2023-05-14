local ok, _ = pcall(require, 'Comment')
if ok then
    require('Comment').setup{
        toggler = {
            ---Line-comment toggle keymap
            block = nil,
            line = '<leader>/',
        },
        opleader = {
            block = nil,
            line = '<leader>/',
        },
        ---Enable keybindings
        ---NOTE: If given `false` then the plugin won't create any mappings
        mappings = {
            ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
            basic = true,
            ---Extra mapping; `gco`, `gcO`, `gcA`
            extra = false,
        },
}
end